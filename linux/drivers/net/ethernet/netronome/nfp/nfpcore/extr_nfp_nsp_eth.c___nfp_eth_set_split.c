
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int dummy; } ;


 int NFP_ETH_SET_BIT_CONFIG (struct nfp_nsp*,int ,int ,unsigned int,int ) ;
 int NSP_ETH_CTRL_SET_LANES ;
 int NSP_ETH_PORT_LANES ;
 int NSP_ETH_RAW_PORT ;

int __nfp_eth_set_split(struct nfp_nsp *nsp, unsigned int lanes)
{
 return NFP_ETH_SET_BIT_CONFIG(nsp, NSP_ETH_RAW_PORT, NSP_ETH_PORT_LANES,
          lanes, NSP_ETH_CTRL_SET_LANES);
}
