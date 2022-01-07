
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct xgene_cle_ptree_ewdn {size_t node_type; size_t last_node; size_t hdr_len_store; size_t hdr_extn; size_t byte_store; size_t search_byte_store; size_t result_pointer; size_t num_branches; struct xgene_cle_ptree_branch* branch; } ;
struct xgene_cle_ptree_branch {size_t next_packet_pointer; scalar_t__ jump_rel; size_t valid; size_t jump_bw; size_t operation; size_t next_node; size_t next_branch; size_t data; size_t mask; } ;


 int CLE_BR_DATA ;
 int CLE_BR_JB ;
 int CLE_BR_JR ;
 int CLE_BR_MASK ;
 int CLE_BR_NBR ;
 int CLE_BR_NNODE ;
 int CLE_BR_NPPTR ;
 int CLE_BR_OP ;
 int CLE_BR_VALID ;
 int CLE_DN_BSTOR ;
 int CLE_DN_EXT ;
 int CLE_DN_HLS ;
 int CLE_DN_LASTN ;
 int CLE_DN_RPTR ;
 int CLE_DN_SBSTOR ;
 int CLE_DN_TYPE ;
 size_t CLE_PKTRAM_SIZE ;
 scalar_t__ JMP_ABS ;
 size_t SET_VAL (int ,size_t) ;

__attribute__((used)) static void xgene_cle_dn_to_hw(const struct xgene_cle_ptree_ewdn *dn,
          u32 *buf, u32 jb)
{
 const struct xgene_cle_ptree_branch *br;
 u32 i, j = 0;
 u32 npp;

 buf[j++] = SET_VAL(CLE_DN_TYPE, dn->node_type) |
     SET_VAL(CLE_DN_LASTN, dn->last_node) |
     SET_VAL(CLE_DN_HLS, dn->hdr_len_store) |
     SET_VAL(CLE_DN_EXT, dn->hdr_extn) |
     SET_VAL(CLE_DN_BSTOR, dn->byte_store) |
     SET_VAL(CLE_DN_SBSTOR, dn->search_byte_store) |
     SET_VAL(CLE_DN_RPTR, dn->result_pointer);

 for (i = 0; i < dn->num_branches; i++) {
  br = &dn->branch[i];
  npp = br->next_packet_pointer;

  if ((br->jump_rel == JMP_ABS) && (npp < CLE_PKTRAM_SIZE))
   npp += jb;

  buf[j++] = SET_VAL(CLE_BR_VALID, br->valid) |
      SET_VAL(CLE_BR_NPPTR, npp) |
      SET_VAL(CLE_BR_JB, br->jump_bw) |
      SET_VAL(CLE_BR_JR, br->jump_rel) |
      SET_VAL(CLE_BR_OP, br->operation) |
      SET_VAL(CLE_BR_NNODE, br->next_node) |
      SET_VAL(CLE_BR_NBR, br->next_branch);

  buf[j++] = SET_VAL(CLE_BR_DATA, br->data) |
      SET_VAL(CLE_BR_MASK, br->mask);
 }
}
