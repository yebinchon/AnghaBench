
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8995_switch {int dummy; } ;


 int KS8995_REG_ID1 ;
 int ks8995_write_reg (struct ks8995_switch*,int ,int ) ;

__attribute__((used)) static int ks8995_stop(struct ks8995_switch *ks)
{
 return ks8995_write_reg(ks, KS8995_REG_ID1, 0);
}
