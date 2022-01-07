
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_st_plat_data {int (* chip_awake ) (int *) ;} ;
struct st_data_s {int ll_state; struct kim_data_s* kim_data; } ;
struct kim_data_s {TYPE_2__* kim_pdev; } ;
struct TYPE_3__ {struct ti_st_plat_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int LL_WAKE_UP_ACK ;




 int pr_err (char*) ;
 int send_ll_cmd (struct st_data_s*,int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void ll_device_want_to_wakeup(struct st_data_s *st_data)
{
 struct kim_data_s *kim_data;
 struct ti_st_plat_data *pdata;


 switch (st_data->ll_state) {
 case 131:
  send_ll_cmd(st_data, LL_WAKE_UP_ACK);
  break;
 case 130:

  pr_err("duplicate wake_ind while waiting for Wake ack");
  break;
 case 129:

  pr_err("duplicate wake_ind already AWAKE");
  break;
 case 128:

  pr_err("duplicate wake_ind");
  break;
 }

 st_data->ll_state = 129;


 kim_data = st_data->kim_data;
 pdata = kim_data->kim_pdev->dev.platform_data;
 if (pdata->chip_awake)
  pdata->chip_awake(((void*)0));
}
