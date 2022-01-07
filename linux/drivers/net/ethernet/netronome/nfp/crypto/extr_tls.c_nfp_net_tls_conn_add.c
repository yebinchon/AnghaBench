
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int nfp_net_tls_conn_cnt_changed (struct nfp_net*,int,int) ;

__attribute__((used)) static int
nfp_net_tls_conn_add(struct nfp_net *nn, enum tls_offload_ctx_dir direction)
{
 return nfp_net_tls_conn_cnt_changed(nn, 1, direction);
}
