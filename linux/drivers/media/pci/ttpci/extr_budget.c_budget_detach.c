
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int * ext_priv; } ;
struct budget {scalar_t__ dvb_frontend; } ;


 int dvb_frontend_detach (scalar_t__) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int kfree (struct budget*) ;
 int ttpci_budget_deinit (struct budget*) ;

__attribute__((used)) static int budget_detach (struct saa7146_dev* dev)
{
 struct budget *budget = (struct budget*) dev->ext_priv;
 int err;

 if (budget->dvb_frontend) {
  dvb_unregister_frontend(budget->dvb_frontend);
  dvb_frontend_detach(budget->dvb_frontend);
 }

 err = ttpci_budget_deinit (budget);

 kfree (budget);
 dev->ext_priv = ((void*)0);

 return err;
}
