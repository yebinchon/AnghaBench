
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {int dev; } ;
struct TYPE_2__ {int max_adj; int pin_config; int verify; int enable; int settime64; int gettime64; int adjtime; int adjfine; scalar_t__ pps; int n_pins; int n_per_out; int n_ext_ts; scalar_t__ n_alarm; int name; int owner; } ;
struct dp83640_clock {TYPE_1__ caps; int phylist; int clock_lock; int extreg_lock; struct mii_bus* bus; int list; } ;


 int DP83640_N_PINS ;
 int INIT_LIST_HEAD (int *) ;
 int N_EXT_TS ;
 int N_PER_OUT ;
 int THIS_MODULE ;
 int dp83640_gpio_defaults (int ) ;
 int get_device (int *) ;
 int mutex_init (int *) ;
 int ptp_dp83640_adjfine ;
 int ptp_dp83640_adjtime ;
 int ptp_dp83640_enable ;
 int ptp_dp83640_gettime ;
 int ptp_dp83640_settime ;
 int ptp_dp83640_verify ;
 int sprintf (int ,char*) ;

__attribute__((used)) static void dp83640_clock_init(struct dp83640_clock *clock, struct mii_bus *bus)
{
 INIT_LIST_HEAD(&clock->list);
 clock->bus = bus;
 mutex_init(&clock->extreg_lock);
 mutex_init(&clock->clock_lock);
 INIT_LIST_HEAD(&clock->phylist);
 clock->caps.owner = THIS_MODULE;
 sprintf(clock->caps.name, "dp83640 timer");
 clock->caps.max_adj = 1953124;
 clock->caps.n_alarm = 0;
 clock->caps.n_ext_ts = N_EXT_TS;
 clock->caps.n_per_out = N_PER_OUT;
 clock->caps.n_pins = DP83640_N_PINS;
 clock->caps.pps = 0;
 clock->caps.adjfine = ptp_dp83640_adjfine;
 clock->caps.adjtime = ptp_dp83640_adjtime;
 clock->caps.gettime64 = ptp_dp83640_gettime;
 clock->caps.settime64 = ptp_dp83640_settime;
 clock->caps.enable = ptp_dp83640_enable;
 clock->caps.verify = ptp_dp83640_verify;



 dp83640_gpio_defaults(clock->caps.pin_config);



 get_device(&bus->dev);
}
