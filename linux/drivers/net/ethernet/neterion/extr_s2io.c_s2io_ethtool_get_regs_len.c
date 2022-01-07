
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int XENA_REG_SPACE ;

__attribute__((used)) static int s2io_ethtool_get_regs_len(struct net_device *dev)
{
 return XENA_REG_SPACE;
}
