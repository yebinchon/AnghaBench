
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flow_match_enc_opts {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int rule; } ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int len; int data; } ;


 int flow_rule_match_enc_opts (int ,struct flow_match_enc_opts*) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static int
nfp_flower_compile_geneve_opt(void *ext, void *msk,
         struct flow_cls_offload *flow)
{
 struct flow_match_enc_opts match;

 flow_rule_match_enc_opts(flow->rule, &match);
 memcpy(ext, match.key->data, match.key->len);
 memcpy(msk, match.mask->data, match.mask->len);

 return 0;
}
