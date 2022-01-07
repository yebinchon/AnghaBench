
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int W5300_REGS_LEN ;

__attribute__((used)) static int w5300_get_regs_len(struct net_device *ndev)
{
 return W5300_REGS_LEN;
}
