
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct idt_smb_seq {int ccode; int bytecnt; int * data; } ;
struct idt_eeprom_seq {int cmd; int data; int memaddr; int eeaddr; } ;
struct idt_89hpesx_dev {int iniccode; int inieecmd; int (* smb_write ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int (* smb_read ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int eeaddr; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CCODE_EEPROM ;
 int EEPROM_LAERR ;
 int EEPROM_MSS ;
 int EEPROM_NAERR ;
 int EEPROM_OP_READ ;
 int EEPROM_RD_CNT ;
 int EEPROM_TOUT ;
 int EEPROM_WRRD_CNT ;
 int EREMOTEIO ;
 int RETRY_CNT ;
 int cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int msleep (int ) ;
 int stub1 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;
 int stub2 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;

__attribute__((used)) static int idt_eeprom_read_byte(struct idt_89hpesx_dev *pdev, u16 memaddr,
    u8 *data)
{
 struct device *dev = &pdev->client->dev;
 struct idt_eeprom_seq eeseq;
 struct idt_smb_seq smbseq;
 int ret, retry;


 smbseq.ccode = pdev->iniccode | CCODE_EEPROM;
 smbseq.data = (u8 *)&eeseq;





 retry = RETRY_CNT;
 do {

  smbseq.bytecnt = EEPROM_WRRD_CNT;
  eeseq.cmd = pdev->inieecmd | EEPROM_OP_READ;
  eeseq.eeaddr = pdev->eeaddr;
  eeseq.memaddr = cpu_to_le16(memaddr);
  ret = pdev->smb_write(pdev, &smbseq);
  if (ret != 0) {
   dev_err(dev, "Failed to init eeprom addr 0x%02hhx",
    memaddr);
   break;
  }


  smbseq.bytecnt = EEPROM_RD_CNT;
  ret = pdev->smb_read(pdev, &smbseq);
  if (ret != 0) {
   dev_err(dev, "Failed to read eeprom data 0x%02hhx",
    memaddr);
   break;
  }


  if (retry && (eeseq.cmd & EEPROM_NAERR)) {
   dev_dbg(dev, "EEPROM busy, retry reading after %d ms",
    EEPROM_TOUT);
   msleep(EEPROM_TOUT);
   continue;
  }


  if (eeseq.cmd & (EEPROM_NAERR | EEPROM_LAERR | EEPROM_MSS)) {
   dev_err(dev,
    "Communication with eeprom failed, cmd 0x%hhx",
    eeseq.cmd);
   ret = -EREMOTEIO;
   break;
  }


  *data = eeseq.data;
  break;
 } while (retry--);


 return ret;
}
