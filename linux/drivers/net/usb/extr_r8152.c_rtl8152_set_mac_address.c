
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct r8152 {int intf; int control; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int BYTE_EN_SIX_BYTES ;
 int CRWECR_CONFIG ;
 int CRWECR_NORAML ;
 int EADDRNOTAVAIL ;
 int MCU_TYPE_PLA ;
 int PLA_CRWECR ;
 int PLA_IDR ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int ocp_write_byte (struct r8152*,int ,int ,int ) ;
 int pla_ocp_write (struct r8152*,int ,int ,int,int ) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_set_mac_address(struct net_device *netdev, void *p)
{
 struct r8152 *tp = netdev_priv(netdev);
 struct sockaddr *addr = p;
 int ret = -EADDRNOTAVAIL;

 if (!is_valid_ether_addr(addr->sa_data))
  goto out1;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out1;

 mutex_lock(&tp->control);

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);
 pla_ocp_write(tp, PLA_IDR, BYTE_EN_SIX_BYTES, 8, addr->sa_data);
 ocp_write_byte(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);
out1:
 return ret;
}
