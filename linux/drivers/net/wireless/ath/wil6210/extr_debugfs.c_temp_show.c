
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_temp_sense_all_done_event {int rf_bitmap; int * rf_t1000; int baseband_t1000; } ;
struct wil6210_priv {int fw_capabilities; } ;
struct seq_file {struct wil6210_priv* private; } ;
typedef int s32 ;


 int WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF ;
 int WMI_MAX_XIF_PORTS_NUM ;
 int le32_to_cpu (int ) ;
 int print_temp (struct seq_file*,char*,int ) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wmi_get_all_temperatures (struct wil6210_priv*,struct wmi_temp_sense_all_done_event*) ;
 int wmi_get_temperature (struct wil6210_priv*,int *,int *) ;

__attribute__((used)) static int temp_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;
 int rc, i;

 if (test_bit(WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF,
       wil->fw_capabilities)) {
  struct wmi_temp_sense_all_done_event sense_all_evt;

  wil_dbg_misc(wil,
        "WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is supported");
  rc = wmi_get_all_temperatures(wil, &sense_all_evt);
  if (rc) {
   seq_puts(s, "Failed\n");
   return 0;
  }
  print_temp(s, "T_mac   =",
      le32_to_cpu(sense_all_evt.baseband_t1000));
  seq_printf(s, "Connected RFs [0x%08x]\n",
      sense_all_evt.rf_bitmap);
  for (i = 0; i < WMI_MAX_XIF_PORTS_NUM; i++) {
   seq_printf(s, "RF[%d]   = ", i);
   print_temp(s, "",
       le32_to_cpu(sense_all_evt.rf_t1000[i]));
  }
 } else {
  s32 t_m, t_r;

  wil_dbg_misc(wil,
        "WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is not supported");
  rc = wmi_get_temperature(wil, &t_m, &t_r);
  if (rc) {
   seq_puts(s, "Failed\n");
   return 0;
  }
  print_temp(s, "T_mac   =", t_m);
  print_temp(s, "T_radio =", t_r);
 }
 return 0;
}
