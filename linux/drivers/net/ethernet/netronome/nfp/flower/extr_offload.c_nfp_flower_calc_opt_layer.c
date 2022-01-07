
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_flower_geneve_options {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_dissector_key_enc_opts {scalar_t__ len; } ;


 int EOPNOTSUPP ;
 int NFP_FLOWER_LAYER2_GENEVE_OP ;
 scalar_t__ NFP_FL_MAX_GENEVE_OPT_KEY ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int
nfp_flower_calc_opt_layer(struct flow_dissector_key_enc_opts *enc_opts,
     u32 *key_layer_two, int *key_size,
     struct netlink_ext_ack *extack)
{
 if (enc_opts->len > NFP_FL_MAX_GENEVE_OPT_KEY) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: geneve options exceed maximum length");
  return -EOPNOTSUPP;
 }

 if (enc_opts->len > 0) {
  *key_layer_two |= NFP_FLOWER_LAYER2_GENEVE_OP;
  *key_size += sizeof(struct nfp_flower_geneve_options);
 }

 return 0;
}
