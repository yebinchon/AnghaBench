
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct typhoon {scalar_t__ card_state; struct pci_dev* pdev; } ;
struct resp_desc {int parm2; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; int fw_version; } ;
struct cmd_desc {int dummy; } ;


 int INIT_COMMAND_WITH_RESPONSE (struct cmd_desc*,int ) ;
 char* KBUILD_MODNAME ;
 scalar_t__ Sleeping ;
 int TYPHOON_CMD_READ_VERSIONS ;
 int le32_to_cpu (int ) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 char* pci_name (struct pci_dev*) ;
 int smp_rmb () ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ typhoon_issue_command (struct typhoon*,int,struct cmd_desc*,int,struct resp_desc*) ;

__attribute__((used)) static void
typhoon_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct typhoon *tp = netdev_priv(dev);
 struct pci_dev *pci_dev = tp->pdev;
 struct cmd_desc xp_cmd;
 struct resp_desc xp_resp[3];

 smp_rmb();
 if(tp->card_state == Sleeping) {
  strlcpy(info->fw_version, "Sleep image",
   sizeof(info->fw_version));
 } else {
  INIT_COMMAND_WITH_RESPONSE(&xp_cmd, TYPHOON_CMD_READ_VERSIONS);
  if(typhoon_issue_command(tp, 1, &xp_cmd, 3, xp_resp) < 0) {
   strlcpy(info->fw_version, "Unknown runtime",
    sizeof(info->fw_version));
  } else {
   u32 sleep_ver = le32_to_cpu(xp_resp[0].parm2);
   snprintf(info->fw_version, sizeof(info->fw_version),
    "%02x.%03x.%03x", sleep_ver >> 24,
    (sleep_ver >> 12) & 0xfff, sleep_ver & 0xfff);
  }
 }

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->bus_info, pci_name(pci_dev), sizeof(info->bus_info));
}
