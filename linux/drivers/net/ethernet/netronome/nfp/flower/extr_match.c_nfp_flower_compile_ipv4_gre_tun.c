
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_flower_ipv4_gre_tun {int ip_ext; int ipv4; void* tun_flags; int tun_key; void* ethertype; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int keyid; } ;
struct TYPE_3__ {int keyid; } ;


 int ETH_P_TEB ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 int NFP_FL_GRE_FLAG_KEY ;
 void* cpu_to_be16 (int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_keyid (struct flow_rule*,struct flow_match_enc_keyid*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int memset (struct nfp_flower_ipv4_gre_tun*,int ,int) ;
 int nfp_flower_compile_tun_ip_ext (int *,int *,struct flow_cls_offload*) ;
 int nfp_flower_compile_tun_ipv4_addrs (int *,int *,struct flow_cls_offload*) ;

__attribute__((used)) static void
nfp_flower_compile_ipv4_gre_tun(struct nfp_flower_ipv4_gre_tun *ext,
    struct nfp_flower_ipv4_gre_tun *msk,
    struct flow_cls_offload *flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(flow);

 memset(ext, 0, sizeof(struct nfp_flower_ipv4_gre_tun));
 memset(msk, 0, sizeof(struct nfp_flower_ipv4_gre_tun));


 ext->ethertype = cpu_to_be16(ETH_P_TEB);
 msk->ethertype = cpu_to_be16(~0);

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
  struct flow_match_enc_keyid match;

  flow_rule_match_enc_keyid(rule, &match);
  ext->tun_key = match.key->keyid;
  msk->tun_key = match.mask->keyid;

  ext->tun_flags = cpu_to_be16(NFP_FL_GRE_FLAG_KEY);
  msk->tun_flags = cpu_to_be16(NFP_FL_GRE_FLAG_KEY);
 }

 nfp_flower_compile_tun_ipv4_addrs(&ext->ipv4, &msk->ipv4, flow);
 nfp_flower_compile_tun_ip_ext(&ext->ip_ext, &msk->ip_ext, flow);
}
