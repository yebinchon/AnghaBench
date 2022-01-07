
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;


 int NFP_NET_CFG_RXR_ADDR (unsigned int) ;
 int NFP_NET_CFG_RXR_SZ (unsigned int) ;
 int NFP_NET_CFG_RXR_VEC (unsigned int) ;
 int NFP_NET_CFG_TXR_ADDR (unsigned int) ;
 int NFP_NET_CFG_TXR_SZ (unsigned int) ;
 int NFP_NET_CFG_TXR_VEC (unsigned int) ;
 int nn_writeb (struct nfp_net*,int ,int ) ;
 int nn_writeq (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void nfp_net_vec_clear_ring_data(struct nfp_net *nn, unsigned int idx)
{
 nn_writeq(nn, NFP_NET_CFG_RXR_ADDR(idx), 0);
 nn_writeb(nn, NFP_NET_CFG_RXR_SZ(idx), 0);
 nn_writeb(nn, NFP_NET_CFG_RXR_VEC(idx), 0);

 nn_writeq(nn, NFP_NET_CFG_TXR_ADDR(idx), 0);
 nn_writeb(nn, NFP_NET_CFG_TXR_SZ(idx), 0);
 nn_writeb(nn, NFP_NET_CFG_TXR_VEC(idx), 0);
}
