
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SFR_REG_COUNT ;

__attribute__((used)) static int encx24j600_get_regs_len(struct net_device *dev)
{
 return SFR_REG_COUNT;
}
