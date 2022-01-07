
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct serio_driver {int dummy; } ;
struct serio {int dev; } ;
struct pulse8 {int config_pending; int restoring_config; TYPE_2__* adap; int ping_eeprom_work; scalar_t__ autonomous; int * dev; int config_lock; int write_lock; int work; struct serio* serio; } ;
struct cec_log_addrs {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {TYPE_1__ devnode; } ;


 int CEC_CAP_DEFAULTS ;
 int CEC_CAP_MONITOR_ALL ;
 int CEC_CAP_PHYS_ADDR ;
 int CEC_PHYS_ADDR_INVALID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int PING_PERIOD ;
 int PTR_ERR_OR_ZERO (TYPE_2__*) ;
 TYPE_2__* cec_allocate_adapter (int *,struct pulse8*,int ,int,int) ;
 int cec_delete_adapter (TYPE_2__*) ;
 int cec_register_adapter (TYPE_2__*,int *) ;
 int dev_name (int *) ;
 int kfree (struct pulse8*) ;
 struct pulse8* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ persistent_config ;
 int pulse8_apply_persistent_config (struct pulse8*,struct cec_log_addrs*,int ) ;
 int pulse8_cec_adap_ops ;
 int pulse8_irq_work_handler ;
 int pulse8_ping_eeprom_work_handler ;
 int pulse8_setup (struct pulse8*,struct serio*,struct cec_log_addrs*,int *) ;
 int schedule_delayed_work (int *,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct pulse8*) ;

__attribute__((used)) static int pulse8_connect(struct serio *serio, struct serio_driver *drv)
{
 u32 caps = CEC_CAP_DEFAULTS | CEC_CAP_PHYS_ADDR | CEC_CAP_MONITOR_ALL;
 struct pulse8 *pulse8;
 int err = -ENOMEM;
 struct cec_log_addrs log_addrs = {};
 u16 pa = CEC_PHYS_ADDR_INVALID;

 pulse8 = kzalloc(sizeof(*pulse8), GFP_KERNEL);

 if (!pulse8)
  return -ENOMEM;

 pulse8->serio = serio;
 pulse8->adap = cec_allocate_adapter(&pulse8_cec_adap_ops, pulse8,
         dev_name(&serio->dev), caps, 1);
 err = PTR_ERR_OR_ZERO(pulse8->adap);
 if (err < 0)
  goto free_device;

 pulse8->dev = &serio->dev;
 serio_set_drvdata(serio, pulse8);
 INIT_WORK(&pulse8->work, pulse8_irq_work_handler);
 mutex_init(&pulse8->write_lock);
 mutex_init(&pulse8->config_lock);
 pulse8->config_pending = 0;

 err = serio_open(serio, drv);
 if (err)
  goto delete_adap;

 err = pulse8_setup(pulse8, serio, &log_addrs, &pa);
 if (err)
  goto close_serio;

 err = cec_register_adapter(pulse8->adap, &serio->dev);
 if (err < 0)
  goto close_serio;

 pulse8->dev = &pulse8->adap->devnode.dev;

 if (persistent_config && pulse8->autonomous) {
  err = pulse8_apply_persistent_config(pulse8, &log_addrs, pa);
  if (err)
   goto close_serio;
  pulse8->restoring_config = 1;
 }

 INIT_DELAYED_WORK(&pulse8->ping_eeprom_work,
     pulse8_ping_eeprom_work_handler);
 schedule_delayed_work(&pulse8->ping_eeprom_work, PING_PERIOD);

 return 0;

close_serio:
 serio_close(serio);
delete_adap:
 cec_delete_adapter(pulse8->adap);
 serio_set_drvdata(serio, ((void*)0));
free_device:
 kfree(pulse8);
 return err;
}
