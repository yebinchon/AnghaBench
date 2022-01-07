
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int EMAC_MAX_REG_SIZE ;

__attribute__((used)) static int emac_get_regs_len(struct net_device *netdev)
{
 return EMAC_MAX_REG_SIZE * sizeof(u32);
}
