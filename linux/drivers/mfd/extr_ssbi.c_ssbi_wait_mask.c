
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssbi {int dummy; } ;


 int ETIMEDOUT ;
 int SSBI2_STATUS ;
 int SSBI_TIMEOUT_US ;
 int ssbi_readl (struct ssbi*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ssbi_wait_mask(struct ssbi *ssbi, u32 set_mask, u32 clr_mask)
{
 u32 timeout = SSBI_TIMEOUT_US;
 u32 val;

 while (timeout--) {
  val = ssbi_readl(ssbi, SSBI2_STATUS);
  if (((val & set_mask) == set_mask) && ((val & clr_mask) == 0))
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
