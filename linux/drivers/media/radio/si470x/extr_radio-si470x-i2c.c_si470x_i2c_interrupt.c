
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; size_t wr_index; int buf_size; int rd_index; int read_queue; int * buffer; int completion; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 size_t RDSA ;
 size_t RDSB ;
 size_t RDSC ;
 size_t RDSD ;
 unsigned char RDS_REGISTER_NUM ;
 size_t READCHAN ;
 int READCHAN_BLERB ;
 int READCHAN_BLERC ;
 int READCHAN_BLERD ;
 size_t STATUSRSSI ;
 int STATUSRSSI_BLERA ;
 int STATUSRSSI_RDSR ;
 int STATUSRSSI_STC ;
 size_t SYSCONFIG1 ;
 int SYSCONFIG1_RDS ;
 int complete (int *) ;
 unsigned short max_rds_errors ;
 int memcpy (int *,unsigned char**,int) ;
 int put_unaligned_le16 (unsigned short,unsigned char**) ;
 int si470x_get_register (struct si470x_device*,size_t) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t si470x_i2c_interrupt(int irq, void *dev_id)
{
 struct si470x_device *radio = dev_id;
 unsigned char regnr;
 unsigned char blocknum;
 unsigned short bler;
 unsigned short rds;
 unsigned char tmpbuf[3];
 int retval = 0;


 retval = si470x_get_register(radio, STATUSRSSI);
 if (retval < 0)
  goto end;

 if (radio->registers[STATUSRSSI] & STATUSRSSI_STC)
  complete(&radio->completion);


 if ((radio->registers[SYSCONFIG1] & SYSCONFIG1_RDS) == 0)
  goto end;


 for (regnr = 1; regnr < RDS_REGISTER_NUM; regnr++) {
  retval = si470x_get_register(radio, STATUSRSSI + regnr);
  if (retval < 0)
   goto end;
 }


 if ((radio->registers[STATUSRSSI] & STATUSRSSI_RDSR) == 0)

  goto end;

 for (blocknum = 0; blocknum < 4; blocknum++) {
  switch (blocknum) {
  default:
   bler = (radio->registers[STATUSRSSI] &
     STATUSRSSI_BLERA) >> 9;
   rds = radio->registers[RDSA];
   break;
  case 1:
   bler = (radio->registers[READCHAN] &
     READCHAN_BLERB) >> 14;
   rds = radio->registers[RDSB];
   break;
  case 2:
   bler = (radio->registers[READCHAN] &
     READCHAN_BLERC) >> 12;
   rds = radio->registers[RDSC];
   break;
  case 3:
   bler = (radio->registers[READCHAN] &
     READCHAN_BLERD) >> 10;
   rds = radio->registers[RDSD];
   break;
  }


  put_unaligned_le16(rds, &tmpbuf);
  tmpbuf[2] = blocknum;
  tmpbuf[2] |= blocknum << 3;
  if (bler > max_rds_errors)
   tmpbuf[2] |= 0x80;
  else if (bler > 0)
   tmpbuf[2] |= 0x40;


  memcpy(&radio->buffer[radio->wr_index], &tmpbuf, 3);
  radio->wr_index += 3;


  if (radio->wr_index >= radio->buf_size)
   radio->wr_index = 0;


  if (radio->wr_index == radio->rd_index) {

   radio->rd_index += 3;
   if (radio->rd_index >= radio->buf_size)
    radio->rd_index = 0;
  }
 }

 if (radio->wr_index != radio->rd_index)
  wake_up_interruptible(&radio->read_queue);

end:
 return IRQ_HANDLED;
}
