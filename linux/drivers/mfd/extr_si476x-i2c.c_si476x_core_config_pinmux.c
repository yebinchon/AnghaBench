
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a1; int intb; int lrout; int icop; int icon; int icip; int icin; int qout; int iout; int iqfs; int iqclk; int xout; int dout; int dfs; int dclk; } ;
struct si476x_core {TYPE_2__* client; TYPE_1__ pinmux; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int si476x_core_cmd_ana_audio_pin_cfg (struct si476x_core*,int ) ;
 int si476x_core_cmd_dig_audio_pin_cfg (struct si476x_core*,int ,int ,int ,int ) ;
 int si476x_core_cmd_ic_link_gpo_ctl_pin_cfg (struct si476x_core*,int ,int ,int ,int ) ;
 int si476x_core_cmd_intb_pin_cfg (struct si476x_core*,int ,int ) ;
 int si476x_core_cmd_zif_pin_cfg (struct si476x_core*,int ,int ,int ,int ) ;

__attribute__((used)) static int si476x_core_config_pinmux(struct si476x_core *core)
{
 int err;
 dev_dbg(&core->client->dev, "Configuring pinmux\n");
 err = si476x_core_cmd_dig_audio_pin_cfg(core,
      core->pinmux.dclk,
      core->pinmux.dfs,
      core->pinmux.dout,
      core->pinmux.xout);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure digital audio pins(err = %d)\n",
   err);
  return err;
 }

 err = si476x_core_cmd_zif_pin_cfg(core,
       core->pinmux.iqclk,
       core->pinmux.iqfs,
       core->pinmux.iout,
       core->pinmux.qout);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure ZIF pins(err = %d)\n",
   err);
  return err;
 }

 err = si476x_core_cmd_ic_link_gpo_ctl_pin_cfg(core,
            core->pinmux.icin,
            core->pinmux.icip,
            core->pinmux.icon,
            core->pinmux.icop);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure IC-Link/GPO pins(err = %d)\n",
   err);
  return err;
 }

 err = si476x_core_cmd_ana_audio_pin_cfg(core,
      core->pinmux.lrout);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure analog audio pins(err = %d)\n",
   err);
  return err;
 }

 err = si476x_core_cmd_intb_pin_cfg(core,
        core->pinmux.intb,
        core->pinmux.a1);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure interrupt pins(err = %d)\n",
   err);
  return err;
 }

 return 0;
}
