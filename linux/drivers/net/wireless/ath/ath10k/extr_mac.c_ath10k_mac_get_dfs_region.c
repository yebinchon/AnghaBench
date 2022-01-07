
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wmi_dfs_region { ____Placeholder_wmi_dfs_region } wmi_dfs_region ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;






 int WMI_ETSI_DFS_DOMAIN ;
 int WMI_FCC_DFS_DOMAIN ;
 int WMI_MKK4_DFS_DOMAIN ;
 int WMI_UNINIT_DFS_DOMAIN ;

__attribute__((used)) static enum wmi_dfs_region
ath10k_mac_get_dfs_region(enum nl80211_dfs_regions dfs_region)
{
 switch (dfs_region) {
 case 128:
  return WMI_UNINIT_DFS_DOMAIN;
 case 130:
  return WMI_FCC_DFS_DOMAIN;
 case 131:
  return WMI_ETSI_DFS_DOMAIN;
 case 129:
  return WMI_MKK4_DFS_DOMAIN;
 }
 return WMI_UNINIT_DFS_DOMAIN;
}
