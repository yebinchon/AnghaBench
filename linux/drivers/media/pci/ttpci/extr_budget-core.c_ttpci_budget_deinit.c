
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int pci; } ;
struct budget {int dvb_adapter; int i2c_adap; int pt; int grabbing; int vpe_tasklet; struct saa7146_dev* dev; } ;


 int budget_unregister (struct budget*) ;
 int dprintk (int,char*,struct budget*) ;
 int dvb_unregister_adapter (int *) ;
 int i2c_del_adapter (int *) ;
 int saa7146_vfree_destroy_pgtable (int ,int ,int *) ;
 int tasklet_kill (int *) ;

int ttpci_budget_deinit(struct budget *budget)
{
 struct saa7146_dev *dev = budget->dev;

 dprintk(2, "budget: %p\n", budget);

 budget_unregister(budget);

 tasklet_kill(&budget->vpe_tasklet);

 saa7146_vfree_destroy_pgtable(dev->pci, budget->grabbing, &budget->pt);

 i2c_del_adapter(&budget->i2c_adap);

 dvb_unregister_adapter(&budget->dvb_adapter);

 return 0;
}
