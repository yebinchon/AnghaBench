
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;
typedef int addr ;
typedef int __le32 ;


 int ETH_ALEN ;
 scalar_t__ GMAC_STA_ADD0 ;
 scalar_t__ GMAC_STA_ADD1 ;
 scalar_t__ GMAC_STA_ADD2 ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void gmac_write_mac_address(struct net_device *netdev)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 __le32 addr[3];

 memset(addr, 0, sizeof(addr));
 memcpy(addr, netdev->dev_addr, ETH_ALEN);

 writel(le32_to_cpu(addr[0]), port->gmac_base + GMAC_STA_ADD0);
 writel(le32_to_cpu(addr[1]), port->gmac_base + GMAC_STA_ADD1);
 writel(le32_to_cpu(addr[2]), port->gmac_base + GMAC_STA_ADD2);
}
