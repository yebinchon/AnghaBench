
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int ENODEV ;
 int TCAM_CTL ;
 int nr64 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int tcam_wait_bit(struct niu *np, u64 bit)
{
 int limit = 1000;

 while (--limit > 0) {
  if (nr64(TCAM_CTL) & bit)
   break;
  udelay(1);
 }
 if (limit <= 0)
  return -ENODEV;

 return 0;
}
