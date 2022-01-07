
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxcmci_host {int dummy; } ;


 int MMC_REG_BUFFER_ACCESS ;
 int STATUS_BUF_WRITE_RDY ;
 int cpu_to_le32 (int ) ;
 int memcpy (int *,int *,int) ;
 int mxcmci_poll_status (struct mxcmci_host*,int ) ;
 int mxcmci_writel (struct mxcmci_host*,int ,int ) ;

__attribute__((used)) static int mxcmci_push(struct mxcmci_host *host, void *_buf, int bytes)
{
 unsigned int stat;
 u32 *buf = _buf;

 while (bytes > 3) {
  stat = mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
  if (stat)
   return stat;
  mxcmci_writel(host, cpu_to_le32(*buf++), MMC_REG_BUFFER_ACCESS);
  bytes -= 4;
 }

 if (bytes) {
  u8 *b = (u8 *)buf;
  u32 tmp;

  stat = mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
  if (stat)
   return stat;

  memcpy(&tmp, b, bytes);
  mxcmci_writel(host, cpu_to_le32(tmp), MMC_REG_BUFFER_ACCESS);
 }

 return mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
}
