
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int TRACE ;
 int brcmf_cfg80211_up (struct net_device*) ;
 int brcmf_dbg (int ,char*) ;

__attribute__((used)) static int brcmf_net_p2p_open(struct net_device *ndev)
{
 brcmf_dbg(TRACE, "Enter\n");

 return brcmf_cfg80211_up(ndev);
}
