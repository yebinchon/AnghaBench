
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pt3_board {int lna_on_cnt; int lock; } ;
struct TYPE_4__ {struct pt3_board* priv; } ;
struct pt3_adapter {scalar_t__ cur_lna; TYPE_2__ dvb_adap; } ;
struct TYPE_3__ {scalar_t__ lna; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; } ;


 int ERESTARTSYS ;
 scalar_t__ LNA_AUTO ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct pt3_adapter* pt3_find_adapter (struct dvb_frontend*) ;
 int pt3_set_tuner_power (struct pt3_board*,int,int) ;

__attribute__((used)) static int pt3_set_lna(struct dvb_frontend *fe)
{
 struct pt3_adapter *adap;
 struct pt3_board *pt3;
 u32 val;
 int ret;



 adap = pt3_find_adapter(fe);
 val = fe->dtv_property_cache.lna;
 if (val == LNA_AUTO || val == adap->cur_lna)
  return 0;

 pt3 = adap->dvb_adap.priv;
 if (mutex_lock_interruptible(&pt3->lock))
  return -ERESTARTSYS;
 if (val)
  pt3->lna_on_cnt++;
 else
  pt3->lna_on_cnt--;

 if (val && pt3->lna_on_cnt <= 1) {
  pt3->lna_on_cnt = 1;
  ret = pt3_set_tuner_power(pt3, 1, 1);
 } else if (!val && pt3->lna_on_cnt <= 0) {
  pt3->lna_on_cnt = 0;
  ret = pt3_set_tuner_power(pt3, 1, 0);
 } else
  ret = 0;
 mutex_unlock(&pt3->lock);
 adap->cur_lna = (val != 0);
 return ret;
}
