
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BNX2_REGDUMP_LEN ;

__attribute__((used)) static int
bnx2_get_regs_len(struct net_device *dev)
{
 return BNX2_REGDUMP_LEN;
}
