
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_ready_event_2 {int phy_cap; int abi_version; int sw_version; int mac_addr; } ;
struct wmi {int parent_dev; } ;


 int EINVAL ;
 int ath6kl_ready_event (int ,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_ready_event_rx(struct wmi *wmi, u8 *datap, int len)
{
 struct wmi_ready_event_2 *ev = (struct wmi_ready_event_2 *) datap;

 if (len < sizeof(struct wmi_ready_event_2))
  return -EINVAL;

 ath6kl_ready_event(wmi->parent_dev, ev->mac_addr,
      le32_to_cpu(ev->sw_version),
      le32_to_cpu(ev->abi_version), ev->phy_cap);

 return 0;
}
