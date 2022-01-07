
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct idt_smb_seq {int ccode; int bytecnt; int * data; } ;
struct idt_csr_seq {int cmd; int data; int csraddr; } ;
struct idt_89hpesx_dev {int iniccode; int inicsrcmd; int (* smb_write ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int (* smb_read ) (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;int smb_mtx; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CCODE_CSR ;
 int CSR_OP_READ ;
 int CSR_OP_WRITE ;
 int CSR_RD_CNT ;
 int CSR_REAL_ADDR (int ) ;
 int CSR_RERR ;
 int CSR_WERR ;
 int CSR_WRRD_CNT ;
 int CSR_WR_CNT ;
 int EREMOTEIO ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int const) ;
 int dev_err (struct device*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;
 int stub2 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;
 int stub3 (struct idt_89hpesx_dev*,struct idt_smb_seq*) ;

__attribute__((used)) static int idt_csr_write(struct idt_89hpesx_dev *pdev, u16 csraddr,
    const u32 data)
{
 struct device *dev = &pdev->client->dev;
 struct idt_csr_seq csrseq;
 struct idt_smb_seq smbseq;
 int ret;


 smbseq.ccode = pdev->iniccode | CCODE_CSR;
 smbseq.data = (u8 *)&csrseq;


 mutex_lock(&pdev->smb_mtx);


 smbseq.bytecnt = CSR_WR_CNT;
 csrseq.cmd = pdev->inicsrcmd | CSR_OP_WRITE;
 csrseq.csraddr = cpu_to_le16(csraddr);
 csrseq.data = cpu_to_le32(data);
 ret = pdev->smb_write(pdev, &smbseq);
 if (ret != 0) {
  dev_err(dev, "Failed to write 0x%04x: 0x%04x to csr",
   CSR_REAL_ADDR(csraddr), data);
  goto err_mutex_unlock;
 }


 smbseq.bytecnt = CSR_WRRD_CNT;
 csrseq.cmd = pdev->inicsrcmd | CSR_OP_READ;
 ret = pdev->smb_write(pdev, &smbseq);
 if (ret != 0) {
  dev_err(dev, "Failed to init csr address 0x%04x",
   CSR_REAL_ADDR(csraddr));
  goto err_mutex_unlock;
 }


 smbseq.bytecnt = CSR_RD_CNT;
 ret = pdev->smb_read(pdev, &smbseq);
 if (ret != 0) {
  dev_err(dev, "Failed to read csr 0x%04x",
   CSR_REAL_ADDR(csraddr));
  goto err_mutex_unlock;
 }


 if (csrseq.cmd & (CSR_RERR | CSR_WERR)) {
  dev_err(dev, "IDT failed to perform CSR r/w");
  ret = -EREMOTEIO;
  goto err_mutex_unlock;
 }


err_mutex_unlock:
 mutex_unlock(&pdev->smb_mtx);

 return ret;
}
