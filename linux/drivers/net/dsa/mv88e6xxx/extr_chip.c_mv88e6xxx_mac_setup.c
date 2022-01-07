
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_switch_mac ) (struct mv88e6xxx_chip*,int *) ;} ;


 int ETH_ALEN ;
 int eth_random_addr (int *) ;
 int stub1 (struct mv88e6xxx_chip*,int *) ;

__attribute__((used)) static int mv88e6xxx_mac_setup(struct mv88e6xxx_chip *chip)
{
 if (chip->info->ops->set_switch_mac) {
  u8 addr[ETH_ALEN];

  eth_random_addr(addr);

  return chip->info->ops->set_switch_mac(chip, addr);
 }

 return 0;
}
