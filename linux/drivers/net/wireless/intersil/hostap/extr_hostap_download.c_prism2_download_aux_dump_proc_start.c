
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct prism2_download_aux_dump* private; } ;
struct prism2_download_aux_dump {TYPE_1__* local; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ prism2_download_aux_dump_npages ;
 int prism2_enable_aux_port (int ,int) ;

__attribute__((used)) static void *prism2_download_aux_dump_proc_start(struct seq_file *m, loff_t *_pos)
{
 struct prism2_download_aux_dump *ctx = m->private;
 prism2_enable_aux_port(ctx->local->dev, 1);
 if (*_pos >= prism2_download_aux_dump_npages)
  return ((void*)0);
 return (void *)((unsigned long)*_pos + 1);
}
