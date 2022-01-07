
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int ENTER ;
 int EOPNOTSUPP ;
 int RET (int ) ;
 int SIOCDEVPRIVATE ;
 int bdx_ioctl_priv (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int bdx_ioctl(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
 ENTER;
 if (cmd >= SIOCDEVPRIVATE && cmd <= (SIOCDEVPRIVATE + 15))
  RET(bdx_ioctl_priv(ndev, ifr, cmd));
 else
  RET(-EOPNOTSUPP);
}
