
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ETHTOOL_FEC_BASER ;
 unsigned int ETHTOOL_FEC_OFF ;
 unsigned int ETHTOOL_FEC_RS ;
 unsigned int FW_PORT_CAP32_FEC_BASER_RS ;
 unsigned int FW_PORT_CAP32_FEC_RS ;

__attribute__((used)) static inline unsigned int fwcap_to_eth_fec(unsigned int fw_fec)
{
 unsigned int eth_fec = 0;

 if (fw_fec & FW_PORT_CAP32_FEC_RS)
  eth_fec |= ETHTOOL_FEC_RS;
 if (fw_fec & FW_PORT_CAP32_FEC_BASER_RS)
  eth_fec |= ETHTOOL_FEC_BASER;


 if (!eth_fec)
  eth_fec = ETHTOOL_FEC_OFF;

 return eth_fec;
}
