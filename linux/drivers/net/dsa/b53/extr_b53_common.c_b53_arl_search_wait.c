
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int ARL_SRCH_STDN ;
 int ARL_SRCH_VLID ;
 int B53_ARLIO_PAGE ;
 int B53_ARL_SRCH_CTL ;
 int ETIMEDOUT ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int b53_arl_search_wait(struct b53_device *dev)
{
 unsigned int timeout = 1000;
 u8 reg;

 do {
  b53_read8(dev, B53_ARLIO_PAGE, B53_ARL_SRCH_CTL, &reg);
  if (!(reg & ARL_SRCH_STDN))
   return 0;

  if (reg & ARL_SRCH_VLID)
   return 0;

  usleep_range(1000, 2000);
 } while (timeout--);

 return -ETIMEDOUT;
}
