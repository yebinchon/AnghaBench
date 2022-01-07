
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_RE ;
 int ECMR_TE ;
 int sh_eth_modify (struct net_device*,int ,int,int) ;

__attribute__((used)) static void sh_eth_rcv_snd_enable(struct net_device *ndev)
{

 sh_eth_modify(ndev, ECMR, ECMR_RE | ECMR_TE, ECMR_RE | ECMR_TE);
}
