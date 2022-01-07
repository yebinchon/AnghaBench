
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int stats; } ;
struct TYPE_4__ {TYPE_1__ tx_sc; } ;
struct macsec_dev {TYPE_2__ secy; int stats; } ;


 int free_percpu (int ) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;

__attribute__((used)) static void macsec_free_netdev(struct net_device *dev)
{
 struct macsec_dev *macsec = macsec_priv(dev);

 free_percpu(macsec->stats);
 free_percpu(macsec->secy.tx_sc.stats);

}
