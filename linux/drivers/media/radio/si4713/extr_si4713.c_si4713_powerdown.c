
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si4713_device {scalar_t__ power_state; int sd; scalar_t__ vio; scalar_t__ vdd; scalar_t__ gpio_reset; } ;


 int ARRAY_SIZE (int *) ;
 int DEFAULT_TIMEOUT ;
 scalar_t__ POWER_OFF ;
 int SI4713_CMD_POWER_DOWN ;
 int SI4713_PWDN_NRESP ;
 int debug ;
 int gpiod_set_value (scalar_t__,int ) ;
 int regulator_disable (scalar_t__) ;
 int si4713_send_command (struct si4713_device*,int ,int *,int ,int *,int ,int ) ;
 int v4l2_dbg (int,int ,int *,char*,...) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static int si4713_powerdown(struct si4713_device *sdev)
{
 int err;
 u8 resp[SI4713_PWDN_NRESP];

 if (!sdev->power_state)
  return 0;

 err = si4713_send_command(sdev, SI4713_CMD_POWER_DOWN,
     ((void*)0), 0,
     resp, ARRAY_SIZE(resp),
     DEFAULT_TIMEOUT);

 if (!err) {
  v4l2_dbg(1, debug, &sdev->sd, "Power down response: 0x%02x\n",
    resp[0]);
  v4l2_dbg(1, debug, &sdev->sd, "Device in reset mode\n");
  if (sdev->gpio_reset)
   gpiod_set_value(sdev->gpio_reset, 0);

  if (sdev->vdd) {
   err = regulator_disable(sdev->vdd);
   if (err) {
    v4l2_err(&sdev->sd,
     "Failed to disable vdd: %d\n", err);
   }
  }

  if (sdev->vio) {
   err = regulator_disable(sdev->vio);
   if (err) {
    v4l2_err(&sdev->sd,
     "Failed to disable vio: %d\n", err);
   }
  }
  sdev->power_state = POWER_OFF;
 }

 return err;
}
