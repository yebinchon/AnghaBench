
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;
struct macsec_dev {int gro_cells; } ;


 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;

__attribute__((used)) static void macsec_dev_uninit(struct net_device *dev)
{
 struct macsec_dev *macsec = macsec_priv(dev);

 gro_cells_destroy(&macsec->gro_cells);
 free_percpu(dev->tstats);
}
