
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int dummy; } ;
typedef enum nfp_eth_aneg { ____Placeholder_nfp_eth_aneg } nfp_eth_aneg ;


 int NFP_ETH_SET_BIT_CONFIG (struct nfp_nsp*,int ,int ,int,int ) ;
 int NSP_ETH_CTRL_SET_ANEG ;
 int NSP_ETH_RAW_STATE ;
 int NSP_ETH_STATE_ANEG ;

int __nfp_eth_set_aneg(struct nfp_nsp *nsp, enum nfp_eth_aneg mode)
{
 return NFP_ETH_SET_BIT_CONFIG(nsp, NSP_ETH_RAW_STATE,
          NSP_ETH_STATE_ANEG, mode,
          NSP_ETH_CTRL_SET_ANEG);
}
