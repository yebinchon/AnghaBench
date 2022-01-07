
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {int tx_mask; } ;
typedef int cmdbuf ;


 int MCE_CMD_PORT_IR ;
 int MCE_CMD_SETIRTXPORTS ;
 int MCE_IRBUF_SIZE ;
 int MCE_IRDATA_HEADER ;
 int MCE_IRDATA_TRAILER ;
 unsigned int MCE_MAX_PULSE_LENGTH ;
 int MCE_PACKET_SIZE ;
 int MCE_PULSE_BIT ;
 unsigned int MCE_TIME_UNIT ;
 int mce_command_out (struct mceusb_dev*,int*,int) ;
 int mce_write (struct mceusb_dev*,int*,int) ;

__attribute__((used)) static int mceusb_tx_ir(struct rc_dev *dev, unsigned *txbuf, unsigned count)
{
 struct mceusb_dev *ir = dev->priv;
 u8 cmdbuf[3] = { MCE_CMD_PORT_IR, MCE_CMD_SETIRTXPORTS, 0x00 };
 u8 irbuf[MCE_IRBUF_SIZE];
 int ircount = 0;
 unsigned int irsample;
 int i, length, ret;


 cmdbuf[2] = ir->tx_mask;
 mce_command_out(ir, cmdbuf, sizeof(cmdbuf));


 for (i = 0; i < count; i++) {
  irsample = txbuf[i] / MCE_TIME_UNIT;


  while (irsample > 0) {

   if (ircount % MCE_PACKET_SIZE == 0) {

    if (ircount >= MCE_IRBUF_SIZE - 1) {

     ret = mce_write(ir, irbuf, ircount);
     if (ret < 0)
      return ret;
     ircount = 0;
    }
    irbuf[ircount++] = MCE_IRDATA_HEADER;
   }


   if (irsample <= MCE_MAX_PULSE_LENGTH) {
    irbuf[ircount] = irsample;
    irsample = 0;
   } else {
    irbuf[ircount] = MCE_MAX_PULSE_LENGTH;
    irsample -= MCE_MAX_PULSE_LENGTH;
   }




   irbuf[ircount] |= (i & 1 ? 0 : MCE_PULSE_BIT);
   ircount++;


   if (ircount >= MCE_IRBUF_SIZE) {

    length = ircount % MCE_PACKET_SIZE;
    if (length > 0)
     irbuf[ircount - length] -=
      MCE_PACKET_SIZE - length;

    ret = mce_write(ir, irbuf, ircount);
    if (ret < 0)
     return ret;
    ircount = 0;
   }
  }
 }


 length = ircount % MCE_PACKET_SIZE;
 if (length > 0)
  irbuf[ircount - length] -= MCE_PACKET_SIZE - length;


 irbuf[ircount++] = MCE_IRDATA_TRAILER;


 ret = mce_write(ir, irbuf, ircount);
 if (ret < 0)
  return ret;

 return count;
}
