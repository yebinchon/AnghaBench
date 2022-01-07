
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int SIOCGHWTSTAMP ;
 int SIOCSHWTSTAMP ;
 int enetc_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int enetc_hwtstamp_set (struct net_device*,struct ifreq*) ;

int enetc_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd)
{






 return -EINVAL;
}
