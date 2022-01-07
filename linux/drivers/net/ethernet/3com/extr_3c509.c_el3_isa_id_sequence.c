
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct el3_private {scalar_t__ type; } ;
typedef int __be16 ;
struct TYPE_3__ {int dev_addr; } ;


 scalar_t__ EL3_PNP ;
 int current_tag ;
 int el3_cards ;
 int el3_debug ;
 TYPE_1__** el3_devs ;
 scalar_t__ ether_addr_equal (int *,int ) ;
 int htons (int) ;
 int id_port ;
 int id_read_eeprom (int) ;
 struct el3_private* netdev_priv (TYPE_1__*) ;
 int nopnp ;
 int outb (int,int ) ;
 int pr_debug (char*,int,int,int,int,int,int) ;

__attribute__((used)) static int el3_isa_id_sequence(__be16 *phys_addr)
{
 short lrs_state = 0xff;
 int i;






 outb(0x00, id_port);
 outb(0x00, id_port);
 for (i = 0; i < 255; i++) {
  outb(lrs_state, id_port);
  lrs_state <<= 1;
  lrs_state = lrs_state & 0x100 ? lrs_state ^ 0xcf : lrs_state;
 }

 if (current_tag == 0)
  outb(0xd0, id_port);
 else
  outb(0xd8, id_port);
 if (id_read_eeprom(7) != 0x6d50)
  return 1;



 for (i = 0; i < 3; i++)
  phys_addr[i] = htons(id_read_eeprom(i));
 return 0;

}
