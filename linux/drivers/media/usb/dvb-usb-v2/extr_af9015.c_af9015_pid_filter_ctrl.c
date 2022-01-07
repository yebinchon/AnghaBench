
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {size_t id; int * fe; } ;
struct af9015_state {int fe_mutex; struct af9013_platform_data* af9013_pdata; } ;
struct af9013_platform_data {int (* pid_filter_ctrl ) (int ,int) ;} ;


 struct af9015_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int af9015_pid_filter_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 struct af9015_state *state = adap_to_priv(adap);
 struct af9013_platform_data *pdata = &state->af9013_pdata[adap->id];
 int ret;

 mutex_lock(&state->fe_mutex);
 ret = pdata->pid_filter_ctrl(adap->fe[0], onoff);
 mutex_unlock(&state->fe_mutex);

 return ret;
}
