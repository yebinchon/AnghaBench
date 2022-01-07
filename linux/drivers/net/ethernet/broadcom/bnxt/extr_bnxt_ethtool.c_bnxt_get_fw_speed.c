
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct bnxt_link_info {int support_speeds; } ;
struct bnxt {struct bnxt_link_info link_info; } ;


 int BNXT_LINK_SPEED_MSK_100GB ;
 int BNXT_LINK_SPEED_MSK_100MB ;
 int BNXT_LINK_SPEED_MSK_10GB ;
 int BNXT_LINK_SPEED_MSK_1GB ;
 int BNXT_LINK_SPEED_MSK_20GB ;
 int BNXT_LINK_SPEED_MSK_25GB ;
 int BNXT_LINK_SPEED_MSK_2_5GB ;
 int BNXT_LINK_SPEED_MSK_40GB ;
 int BNXT_LINK_SPEED_MSK_50GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100MB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_10GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_1GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_20GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_25GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_2_5GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_40GB ;
 int PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_50GB ;
 int netdev_err (struct net_device*,char*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bnxt_get_fw_speed(struct net_device *dev, u32 ethtool_speed)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_link_info *link_info = &bp->link_info;
 u16 support_spds = link_info->support_speeds;
 u32 fw_speed = 0;

 switch (ethtool_speed) {
 case 136:
  if (support_spds & BNXT_LINK_SPEED_MSK_100MB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100MB;
  break;
 case 135:
  if (support_spds & BNXT_LINK_SPEED_MSK_1GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_1GB;
  break;
 case 131:
  if (support_spds & BNXT_LINK_SPEED_MSK_2_5GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_2_5GB;
  break;
 case 134:
  if (support_spds & BNXT_LINK_SPEED_MSK_10GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_10GB;
  break;
 case 132:
  if (support_spds & BNXT_LINK_SPEED_MSK_20GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_20GB;
  break;
 case 130:
  if (support_spds & BNXT_LINK_SPEED_MSK_25GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_25GB;
  break;
 case 129:
  if (support_spds & BNXT_LINK_SPEED_MSK_40GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_40GB;
  break;
 case 128:
  if (support_spds & BNXT_LINK_SPEED_MSK_50GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_50GB;
  break;
 case 133:
  if (support_spds & BNXT_LINK_SPEED_MSK_100GB)
   fw_speed = PORT_PHY_CFG_REQ_AUTO_LINK_SPEED_100GB;
  break;
 default:
  netdev_err(dev, "unsupported speed!\n");
  break;
 }
 return fw_speed;
}
