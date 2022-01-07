
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int fcc_t ;
typedef int fcc_enet_t ;



__attribute__((used)) static int get_regs_len(struct net_device *dev)
{
 return sizeof(fcc_t) + sizeof(fcc_enet_t) + 1;
}
