
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int W5100_COMMON_REGS_LEN ;
 int W5100_S0_REGS_LEN ;

__attribute__((used)) static int w5100_get_regs_len(struct net_device *ndev)
{
 return W5100_COMMON_REGS_LEN + W5100_S0_REGS_LEN;
}
