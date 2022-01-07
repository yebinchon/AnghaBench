
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8995_switch {int dummy; } ;


 int KS8995_RESET_DELAY ;
 int ks8995_start (struct ks8995_switch*) ;
 int ks8995_stop (struct ks8995_switch*) ;
 int udelay (int ) ;

__attribute__((used)) static int ks8995_reset(struct ks8995_switch *ks)
{
 int err;

 err = ks8995_stop(ks);
 if (err)
  return err;

 udelay(KS8995_RESET_DELAY);

 return ks8995_start(ks);
}
