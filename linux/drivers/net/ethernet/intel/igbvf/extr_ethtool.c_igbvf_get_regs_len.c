
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int IGBVF_REGS_LEN ;

__attribute__((used)) static int igbvf_get_regs_len(struct net_device *netdev)
{

 return 8 * sizeof(u32);
}
