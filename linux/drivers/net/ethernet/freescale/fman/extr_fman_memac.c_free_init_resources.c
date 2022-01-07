
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {int * unicast_addr_hash; int * multicast_addr_hash; int mac_id; int fm; } ;


 int FMAN_INTR_TYPE_ERR ;
 int FMAN_INTR_TYPE_NORMAL ;
 int FMAN_MOD_MAC ;
 int fman_unregister_intr (int ,int ,int ,int ) ;
 int free_hash_table (int *) ;

__attribute__((used)) static void free_init_resources(struct fman_mac *memac)
{
 fman_unregister_intr(memac->fm, FMAN_MOD_MAC, memac->mac_id,
        FMAN_INTR_TYPE_ERR);

 fman_unregister_intr(memac->fm, FMAN_MOD_MAC, memac->mac_id,
        FMAN_INTR_TYPE_NORMAL);


 free_hash_table(memac->multicast_addr_hash);
 memac->multicast_addr_hash = ((void*)0);


 free_hash_table(memac->unicast_addr_hash);
 memac->unicast_addr_hash = ((void*)0);
}
