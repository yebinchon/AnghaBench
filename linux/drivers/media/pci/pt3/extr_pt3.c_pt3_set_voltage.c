
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt3_board {int lnb_on_cnt; int lock; } ;
struct TYPE_2__ {struct pt3_board* priv; } ;
struct pt3_adapter {int cur_lnb; TYPE_1__ dvb_adap; } ;
struct dvb_frontend {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int ERESTARTSYS ;
 int SEC_VOLTAGE_OFF ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct pt3_adapter* pt3_find_adapter (struct dvb_frontend*) ;
 int pt3_lnb_ctrl (struct pt3_board*,int) ;

__attribute__((used)) static int pt3_set_voltage(struct dvb_frontend *fe, enum fe_sec_voltage volt)
{
 struct pt3_adapter *adap;
 struct pt3_board *pt3;
 bool on;



 adap = pt3_find_adapter(fe);
 on = (volt != SEC_VOLTAGE_OFF);
 if (on == adap->cur_lnb)
  return 0;
 adap->cur_lnb = on;
 pt3 = adap->dvb_adap.priv;
 if (mutex_lock_interruptible(&pt3->lock))
  return -ERESTARTSYS;
 if (on)
  pt3->lnb_on_cnt++;
 else
  pt3->lnb_on_cnt--;

 if (on && pt3->lnb_on_cnt <= 1) {
  pt3->lnb_on_cnt = 1;
  pt3_lnb_ctrl(pt3, 1);
 } else if (!on && pt3->lnb_on_cnt <= 0) {
  pt3->lnb_on_cnt = 0;
  pt3_lnb_ctrl(pt3, 0);
 }
 mutex_unlock(&pt3->lock);
 return 0;
}
