
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_flower_priv {int flower_version; } ;
struct TYPE_2__ {int flow_version; int flags; } ;
struct nfp_fl_payload {TYPE_1__ meta; } ;


 int NFP_FL_META_FLAG_MANAGE_MASK ;
 int cpu_to_be64 (int ) ;

void __nfp_modify_flow_metadata(struct nfp_flower_priv *priv,
    struct nfp_fl_payload *nfp_flow)
{
 nfp_flow->meta.flags &= ~NFP_FL_META_FLAG_MANAGE_MASK;
 nfp_flow->meta.flow_version = cpu_to_be64(priv->flower_version);
 priv->flower_version++;
}
