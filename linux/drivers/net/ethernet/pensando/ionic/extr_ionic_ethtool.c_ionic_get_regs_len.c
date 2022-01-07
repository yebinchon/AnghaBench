
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IONIC_DEV_CMD_REG_COUNT ;
 int IONIC_DEV_INFO_REG_COUNT ;

__attribute__((used)) static int ionic_get_regs_len(struct net_device *netdev)
{
 return (IONIC_DEV_INFO_REG_COUNT + IONIC_DEV_CMD_REG_COUNT) * sizeof(u32);
}
