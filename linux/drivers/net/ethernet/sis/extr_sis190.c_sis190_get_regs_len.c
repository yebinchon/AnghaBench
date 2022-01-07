
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SIS190_REGS_SIZE ;

__attribute__((used)) static int sis190_get_regs_len(struct net_device *dev)
{
 return SIS190_REGS_SIZE;
}
