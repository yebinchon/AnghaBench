
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {scalar_t__* fw_version; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int seq_printf (struct seq_file*,char*,scalar_t__*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int wil_fw_version_debugfs_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;

 if (wil->fw_version[0])
  seq_printf(s, "%s\n", wil->fw_version);
 else
  seq_puts(s, "N/A\n");

 return 0;
}
