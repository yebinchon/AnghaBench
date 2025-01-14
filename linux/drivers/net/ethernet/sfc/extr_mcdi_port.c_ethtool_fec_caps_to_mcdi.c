
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETHTOOL_FEC_AUTO ;
 int ETHTOOL_FEC_BASER ;
 int ETHTOOL_FEC_OFF ;
 int ETHTOOL_FEC_RS ;
 int MC_CMD_PHY_CAP_25G_BASER_FEC_LBN ;
 int MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN ;
 int MC_CMD_PHY_CAP_BASER_FEC_LBN ;
 int MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN ;
 int MC_CMD_PHY_CAP_RS_FEC_LBN ;
 int MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN ;

__attribute__((used)) static u32 ethtool_fec_caps_to_mcdi(u32 ethtool_cap)
{
 u32 ret = 0;

 if (ethtool_cap & ETHTOOL_FEC_OFF)
  return 0;

 if (ethtool_cap & ETHTOOL_FEC_AUTO)
  ret |= (1 << MC_CMD_PHY_CAP_BASER_FEC_LBN) |
         (1 << MC_CMD_PHY_CAP_25G_BASER_FEC_LBN) |
         (1 << MC_CMD_PHY_CAP_RS_FEC_LBN);
 if (ethtool_cap & ETHTOOL_FEC_RS)
  ret |= (1 << MC_CMD_PHY_CAP_RS_FEC_LBN) |
         (1 << MC_CMD_PHY_CAP_RS_FEC_REQUESTED_LBN);
 if (ethtool_cap & ETHTOOL_FEC_BASER)
  ret |= (1 << MC_CMD_PHY_CAP_BASER_FEC_LBN) |
         (1 << MC_CMD_PHY_CAP_25G_BASER_FEC_LBN) |
         (1 << MC_CMD_PHY_CAP_BASER_FEC_REQUESTED_LBN) |
         (1 << MC_CMD_PHY_CAP_25G_BASER_FEC_REQUESTED_LBN);
 return ret;
}
