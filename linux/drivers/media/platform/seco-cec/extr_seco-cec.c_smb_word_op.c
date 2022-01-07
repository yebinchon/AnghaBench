
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BRA_HOST_BUSY ;
 int BRA_HSTS_ERR_MASK ;
 int BRA_INUSE_STS ;
 short BRA_SMB_CMD_BYTE_DATA ;
 short BRA_SMB_CMD_WORD_DATA ;
 short BRA_START ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int HCMD ;
 int HCNT ;
 int HDAT0 ;
 int HDAT1 ;
 int HSTS ;
 unsigned int SMBTIMEOUT ;
 int SMBUS_READ ;
 int SMBUS_WRITE ;
 int SMB_POLL_UDELAY ;
 int XMIT_SLVA ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int smb_word_op(short data_format, u16 slave_addr, u8 cmd, u16 data,
         u8 operation, u16 *result)
{
 unsigned int count;
 short _data_format;
 int status = 0;

 switch (data_format) {
 case 129:
  _data_format = BRA_SMB_CMD_BYTE_DATA;
  break;
 case 128:
  _data_format = BRA_SMB_CMD_WORD_DATA;
  break;
 default:
  return -EINVAL;
 }


 for (count = 0; count <= SMBTIMEOUT; ++count) {
  if (!(inb(HSTS) & BRA_INUSE_STS))
   break;
  udelay(SMB_POLL_UDELAY);
 }

 if (count > SMBTIMEOUT)

  outb(0xff, HSTS);

 outb(0x00, HCNT);
 outb((u8)(slave_addr & 0xfe) | operation, XMIT_SLVA);
 outb(cmd, HCMD);
 inb(HCNT);

 if (operation == SMBUS_WRITE) {
  outb((u8)data, HDAT0);
  outb((u8)(data >> 8), HDAT1);
 }

 outb(BRA_START + _data_format, HCNT);

 for (count = 0; count <= SMBTIMEOUT; count++) {
  if (!(inb(HSTS) & BRA_HOST_BUSY))
   break;
  udelay(SMB_POLL_UDELAY);
 }

 if (count > SMBTIMEOUT) {
  status = -EBUSY;
  goto err;
 }

 if (inb(HSTS) & BRA_HSTS_ERR_MASK) {
  status = -EIO;
  goto err;
 }

 if (operation == SMBUS_READ)
  *result = ((inb(HDAT0) & 0xff) + ((inb(HDAT1) & 0xff) << 8));

err:
 outb(0xff, HSTS);
 return status;
}
