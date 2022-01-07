
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int use_compressed_rx_status; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int
wil_compressed_rx_status_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;

 seq_printf(s, "%d\n", wil->use_compressed_rx_status);

 return 0;
}
