
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; scalar_t__ wolopts; scalar_t__ supported; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 wol->supported = 0;
 wol->wolopts = 0;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
