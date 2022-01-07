
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {int * unicast_addr_hash; int * multicast_addr_hash; int mac_id; int fm; } ;


 int FMAN_INTR_TYPE_ERR ;
 int FMAN_MOD_MAC ;
 int fman_unregister_intr (int ,int ,int ,int ) ;
 int free_hash_table (int *) ;

__attribute__((used)) static void free_init_resources(struct fman_mac *tgec)
{
 fman_unregister_intr(tgec->fm, FMAN_MOD_MAC, tgec->mac_id,
        FMAN_INTR_TYPE_ERR);


 free_hash_table(tgec->multicast_addr_hash);
 tgec->multicast_addr_hash = ((void*)0);


 free_hash_table(tgec->unicast_addr_hash);
 tgec->unicast_addr_hash = ((void*)0);
}
