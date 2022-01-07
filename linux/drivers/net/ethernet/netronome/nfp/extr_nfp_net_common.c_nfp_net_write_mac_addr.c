
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_net {int dummy; } ;


 scalar_t__ NFP_NET_CFG_MACADDR ;
 int get_unaligned_be16 (int const*) ;
 int get_unaligned_be32 (int const*) ;
 int nn_writel (struct nfp_net*,scalar_t__,int ) ;
 int nn_writew (struct nfp_net*,scalar_t__,int ) ;

__attribute__((used)) static void nfp_net_write_mac_addr(struct nfp_net *nn, const u8 *addr)
{
 nn_writel(nn, NFP_NET_CFG_MACADDR + 0, get_unaligned_be32(addr));
 nn_writew(nn, NFP_NET_CFG_MACADDR + 6, get_unaligned_be16(addr + 4));
}
