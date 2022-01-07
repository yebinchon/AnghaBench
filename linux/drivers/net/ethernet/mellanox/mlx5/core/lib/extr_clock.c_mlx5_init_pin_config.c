
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_pins; int pps; TYPE_2__* pin_config; int verify; int enable; } ;
struct mlx5_clock {TYPE_1__ ptp_info; } ;
struct TYPE_4__ {int index; int chan; int func; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTP_PF_NONE ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int mlx5_ptp_enable ;
 int mlx5_ptp_verify ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int mlx5_init_pin_config(struct mlx5_clock *clock)
{
 int i;

 clock->ptp_info.pin_config =
   kcalloc(clock->ptp_info.n_pins,
    sizeof(*clock->ptp_info.pin_config),
    GFP_KERNEL);
 if (!clock->ptp_info.pin_config)
  return -ENOMEM;
 clock->ptp_info.enable = mlx5_ptp_enable;
 clock->ptp_info.verify = mlx5_ptp_verify;
 clock->ptp_info.pps = 1;

 for (i = 0; i < clock->ptp_info.n_pins; i++) {
  snprintf(clock->ptp_info.pin_config[i].name,
    sizeof(clock->ptp_info.pin_config[i].name),
    "mlx5_pps%d", i);
  clock->ptp_info.pin_config[i].index = i;
  clock->ptp_info.pin_config[i].func = PTP_PF_NONE;
  clock->ptp_info.pin_config[i].chan = i;
 }

 return 0;
}
