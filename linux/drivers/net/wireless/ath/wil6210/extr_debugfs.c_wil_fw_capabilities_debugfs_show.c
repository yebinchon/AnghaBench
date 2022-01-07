
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int fw_capabilities; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int WMI_FW_CAPABILITY_MAX ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int wil_fw_capabilities_debugfs_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;

 seq_printf(s, "fw_capabilities : %*pb\n", WMI_FW_CAPABILITY_MAX,
     wil->fw_capabilities);

 return 0;
}
