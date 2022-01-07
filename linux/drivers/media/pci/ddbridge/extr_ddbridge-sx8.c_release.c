
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sx8* base; } ;
struct sx8 {scalar_t__ count; int mci_list; TYPE_1__ mci; } ;
struct mci_base {scalar_t__ count; int mci_list; TYPE_1__ mci; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;


 int kfree (struct sx8*) ;
 int list_del (int *) ;

__attribute__((used)) static void release(struct dvb_frontend *fe)
{
 struct sx8 *state = fe->demodulator_priv;
 struct mci_base *mci_base = state->mci.base;

 mci_base->count--;
 if (mci_base->count == 0) {
  list_del(&mci_base->mci_list);
  kfree(mci_base);
 }
 kfree(state);
}
