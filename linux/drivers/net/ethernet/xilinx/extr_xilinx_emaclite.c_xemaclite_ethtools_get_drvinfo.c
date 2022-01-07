
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int DRIVER_NAME ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void xemaclite_ethtools_get_drvinfo(struct net_device *ndev,
        struct ethtool_drvinfo *ed)
{
 strlcpy(ed->driver, DRIVER_NAME, sizeof(ed->driver));
}
