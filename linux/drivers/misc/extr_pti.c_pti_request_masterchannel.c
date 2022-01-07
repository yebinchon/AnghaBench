
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pti_masterchannel {int dummy; } ;
struct TYPE_2__ {int ia_modem; int ia_os; int ia_app; } ;


 int APP_BASE_ID ;
 int MAX_APP_IDS ;
 int MAX_MODEM_IDS ;
 int MAX_OS_IDS ;
 int MODEM_BASE_ID ;
 int OS_BASE_ID ;
 int alloclock ;
 TYPE_1__* drv_data ;
 struct pti_masterchannel* get_id (int ,int ,int ,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct pti_masterchannel *pti_request_masterchannel(u8 type,
          const char *thread_name)
{
 struct pti_masterchannel *mc;

 mutex_lock(&alloclock);

 switch (type) {

 case 0:
  mc = get_id(drv_data->ia_app, MAX_APP_IDS,
       APP_BASE_ID, thread_name);
  break;

 case 1:
  mc = get_id(drv_data->ia_os, MAX_OS_IDS,
       OS_BASE_ID, thread_name);
  break;

 case 2:
  mc = get_id(drv_data->ia_modem, MAX_MODEM_IDS,
       MODEM_BASE_ID, thread_name);
  break;
 default:
  mc = ((void*)0);
 }

 mutex_unlock(&alloclock);
 return mc;
}
