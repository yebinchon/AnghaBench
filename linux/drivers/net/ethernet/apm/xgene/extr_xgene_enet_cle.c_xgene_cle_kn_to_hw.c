
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct xgene_cle_ptree_kn {size_t num_keys; struct xgene_cle_ptree_key* key; int node_type; } ;
struct xgene_cle_ptree_key {int result_pointer; int priority; } ;


 int CLE_KN_PRIO ;
 int CLE_KN_RPTR ;
 int CLE_TYPE ;
 size_t SET_VAL (int ,int ) ;

__attribute__((used)) static void xgene_cle_kn_to_hw(struct xgene_cle_ptree_kn *kn, u32 *buf)
{
 u32 i, j = 0;
 u32 data;

 buf[j++] = SET_VAL(CLE_TYPE, kn->node_type);
 for (i = 0; i < kn->num_keys; i++) {
  struct xgene_cle_ptree_key *key = &kn->key[i];

  if (!(i % 2)) {
   buf[j] = SET_VAL(CLE_KN_PRIO, key->priority) |
     SET_VAL(CLE_KN_RPTR, key->result_pointer);
  } else {
   data = SET_VAL(CLE_KN_PRIO, key->priority) |
          SET_VAL(CLE_KN_RPTR, key->result_pointer);
   buf[j++] |= (data << 16);
  }
 }
}
