
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_pcr {int dummy; } ;


 int PPBUF_BASE2 ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

int rtsx_pci_write_ppbuf(struct rtsx_pcr *pcr, u8 *buf, int buf_len)
{
 int err;
 int i, j;
 u16 reg;
 u8 *ptr;

 if (buf_len > 512)
  buf_len = 512;

 ptr = buf;
 reg = PPBUF_BASE2;
 for (i = 0; i < buf_len / 256; i++) {
  rtsx_pci_init_cmd(pcr);

  for (j = 0; j < 256; j++) {
   rtsx_pci_add_cmd(pcr, WRITE_REG_CMD,
     reg++, 0xFF, *ptr);
   ptr++;
  }

  err = rtsx_pci_send_cmd(pcr, 250);
  if (err < 0)
   return err;
 }

 if (buf_len % 256) {
  rtsx_pci_init_cmd(pcr);

  for (j = 0; j < buf_len % 256; j++) {
   rtsx_pci_add_cmd(pcr, WRITE_REG_CMD,
     reg++, 0xFF, *ptr);
   ptr++;
  }

  err = rtsx_pci_send_cmd(pcr, 250);
  if (err < 0)
   return err;
 }

 return 0;
}
