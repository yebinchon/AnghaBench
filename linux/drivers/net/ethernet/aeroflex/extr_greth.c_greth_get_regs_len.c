
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct greth_regs {int dummy; } ;



__attribute__((used)) static int greth_get_regs_len(struct net_device *dev)
{
 return sizeof(struct greth_regs);
}
