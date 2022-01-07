
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slave {TYPE_1__* dev; } ;
struct TYPE_2__ {int addr_len; int * dev_addr; } ;


 int MAX_ADDR_LEN ;
 int alb_set_slave_mac_addr (struct slave*,int *,int ) ;
 int bond_hw_addr_copy (int *,int *,int ) ;

__attribute__((used)) static void alb_swap_mac_addr(struct slave *slave1, struct slave *slave2)
{
 u8 tmp_mac_addr[MAX_ADDR_LEN];

 bond_hw_addr_copy(tmp_mac_addr, slave1->dev->dev_addr,
     slave1->dev->addr_len);
 alb_set_slave_mac_addr(slave1, slave2->dev->dev_addr,
          slave2->dev->addr_len);
 alb_set_slave_mac_addr(slave2, tmp_mac_addr,
          slave1->dev->addr_len);

}
