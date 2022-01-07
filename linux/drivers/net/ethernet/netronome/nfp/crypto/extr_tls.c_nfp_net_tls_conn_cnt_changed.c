
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int NFP_NET_CFG_UPDATE_CRYPTO ;
 int __nfp_net_reconfig (struct nfp_net*,int ) ;
 scalar_t__ __nfp_net_tls_conn_cnt_changed (struct nfp_net*,int,int) ;
 int nn_ctrl_bar_lock (struct nfp_net*) ;
 int nn_ctrl_bar_unlock (struct nfp_net*) ;

__attribute__((used)) static int
nfp_net_tls_conn_cnt_changed(struct nfp_net *nn, int add,
        enum tls_offload_ctx_dir direction)
{
 int ret = 0;


 nn_ctrl_bar_lock(nn);
 if (__nfp_net_tls_conn_cnt_changed(nn, add, direction)) {
  ret = __nfp_net_reconfig(nn, NFP_NET_CFG_UPDATE_CRYPTO);

  if (ret)
   __nfp_net_tls_conn_cnt_changed(nn, -add, direction);
 }
 nn_ctrl_bar_unlock(nn);

 return ret;
}
