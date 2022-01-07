
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dummy; } ;


 int HASH_ADD ;
 int HASH_DELETE ;
 int add_del_hash_entry (struct pxa168_eth_private*,unsigned char*,int,int ,int ) ;

__attribute__((used)) static void update_hash_table_mac_address(struct pxa168_eth_private *pep,
       unsigned char *oaddr,
       unsigned char *addr)
{

 if (oaddr)
  add_del_hash_entry(pep, oaddr, 1, 0, HASH_DELETE);

 add_del_hash_entry(pep, addr, 1, 0, HASH_ADD);
}
