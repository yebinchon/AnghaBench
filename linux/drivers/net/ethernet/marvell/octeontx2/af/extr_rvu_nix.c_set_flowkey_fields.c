
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
typedef int tmp ;
struct nix_rx_flowkey_alg {int sel_chan; int bytesm1; int ltype_match; int hdr_offset; int ltype_mask; int ena; int key_offset; void* lid; } ;


 int BIT (int) ;
 int EINVAL ;
 int FIELDS_PER_ALG ;
 int MAX_KEY_OFF ;
 int NIX_AF_ERR_RSS_NOSPC_FIELD ;






 void* NPC_LID_LC ;
 void* NPC_LID_LD ;
 int NPC_LT_LC_IP ;
 int NPC_LT_LC_IP6 ;
 int NPC_LT_LD_SCTP ;
 int NPC_LT_LD_TCP ;
 int NPC_LT_LD_UDP ;
 int fls (int) ;
 int max (int,int) ;
 int memcpy (struct nix_rx_flowkey_alg*,struct nix_rx_flowkey_alg*,int) ;
 int memset (struct nix_rx_flowkey_alg*,int ,int) ;

__attribute__((used)) static int set_flowkey_fields(struct nix_rx_flowkey_alg *alg, u32 flow_cfg)
{
 int idx, nr_field, key_off, field_marker, keyoff_marker;
 int max_key_off, max_bit_pos, group_member;
 struct nix_rx_flowkey_alg *field;
 struct nix_rx_flowkey_alg tmp;
 u32 key_type, valid_key;

 if (!alg)
  return -EINVAL;




 memset(alg, 0, sizeof(uint64_t) * 5);
 keyoff_marker = 0; max_key_off = 0; group_member = 0;
 nr_field = 0; key_off = 0; field_marker = 1;
 field = &tmp; max_bit_pos = fls(flow_cfg);
 for (idx = 0;
      idx < max_bit_pos && nr_field < 5 &&
      key_off < 40; idx++) {
  key_type = BIT(idx);
  valid_key = flow_cfg & key_type;

  if (field_marker)
   memset(&tmp, 0, sizeof(tmp));

  switch (key_type) {
  case 131:
   field->sel_chan = 1;

   field->bytesm1 = 1;
   field_marker = 1;
   keyoff_marker = 1;
   break;
  case 133:
   field->lid = NPC_LID_LC;
   field->ltype_match = NPC_LT_LC_IP;
   field->hdr_offset = 12;
   field->bytesm1 = 7;
   field->ltype_mask = 0xF;
   field_marker = 1;
   keyoff_marker = 0;
   break;
  case 132:
   field->lid = NPC_LID_LC;
   field->ltype_match = NPC_LT_LC_IP6;
   field->hdr_offset = 8;
   field->bytesm1 = 31;
   field->ltype_mask = 0xF;
   field_marker = 1;
   keyoff_marker = 1;
   break;
  case 129:
  case 128:
  case 130:
   field->lid = NPC_LID_LD;
   field->bytesm1 = 3;
   if (key_type == 129 && valid_key) {
    field->ltype_match |= NPC_LT_LD_TCP;
    group_member = 1;
   } else if (key_type == 128 &&
       valid_key) {
    field->ltype_match |= NPC_LT_LD_UDP;
    group_member = 1;
   } else if (key_type == 130 &&
       valid_key) {
    field->ltype_match |= NPC_LT_LD_SCTP;
    group_member = 1;
   }
   field->ltype_mask = ~field->ltype_match;
   if (key_type == 130) {



    if (group_member) {
     valid_key = 1;
     group_member = 0;
    }
    field_marker = 1;
    keyoff_marker = 1;
   } else {
    field_marker = 0;
    keyoff_marker = 0;
   }
   break;
  }
  field->ena = 1;


  if (valid_key) {
   field->key_offset = key_off;
   memcpy(&alg[nr_field], field, sizeof(*field));
   max_key_off = max(max_key_off, field->bytesm1 + 1);


   if (field_marker)
    nr_field++;
  }


  if (keyoff_marker) {
   key_off += max_key_off;
   max_key_off = 0;
  }
 }

 if (idx == max_bit_pos && key_off <= 40)
  return 0;
 else
  return NIX_AF_ERR_RSS_NOSPC_FIELD;
}
