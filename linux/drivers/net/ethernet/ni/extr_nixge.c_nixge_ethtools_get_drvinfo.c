
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void nixge_ethtools_get_drvinfo(struct net_device *ndev,
           struct ethtool_drvinfo *ed)
{
 strlcpy(ed->driver, "nixge", sizeof(ed->driver));
 strlcpy(ed->bus_info, "platform", sizeof(ed->bus_info));
}
