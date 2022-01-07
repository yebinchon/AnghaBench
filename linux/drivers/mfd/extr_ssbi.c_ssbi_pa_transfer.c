
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ssbi {int dummy; } ;


 int EPERM ;
 int ETIMEDOUT ;
 int SSBI_PA_CMD ;
 int SSBI_PA_RD_STATUS ;
 int SSBI_PA_RD_STATUS_TRANS_DENIED ;
 int SSBI_PA_RD_STATUS_TRANS_DONE ;
 int SSBI_TIMEOUT_US ;
 int ssbi_readl (struct ssbi*,int ) ;
 int ssbi_writel (struct ssbi*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline int
ssbi_pa_transfer(struct ssbi *ssbi, u32 cmd, u8 *data)
{
 u32 timeout = SSBI_TIMEOUT_US;
 u32 rd_status = 0;

 ssbi_writel(ssbi, cmd, SSBI_PA_CMD);

 while (timeout--) {
  rd_status = ssbi_readl(ssbi, SSBI_PA_RD_STATUS);

  if (rd_status & SSBI_PA_RD_STATUS_TRANS_DENIED)
   return -EPERM;

  if (rd_status & SSBI_PA_RD_STATUS_TRANS_DONE) {
   if (data)
    *data = rd_status & 0xff;
   return 0;
  }
  udelay(1);
 }

 return -ETIMEDOUT;
}
