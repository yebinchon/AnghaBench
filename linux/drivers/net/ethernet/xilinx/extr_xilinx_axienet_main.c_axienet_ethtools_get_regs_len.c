
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int AXIENET_REGS_N ;

__attribute__((used)) static int axienet_ethtools_get_regs_len(struct net_device *ndev)
{
 return sizeof(u32) * AXIENET_REGS_N;
}
