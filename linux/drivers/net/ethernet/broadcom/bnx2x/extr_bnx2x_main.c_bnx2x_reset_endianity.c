
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_config_endianity (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_reset_endianity(struct bnx2x *bp)
{
 bnx2x_config_endianity(bp, 0);
}
