
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ prism2_download_aux_dump_npages ;

__attribute__((used)) static void *prism2_download_aux_dump_proc_next(struct seq_file *m, void *v, loff_t *_pos)
{
 ++*_pos;
 if (*_pos >= prism2_download_aux_dump_npages)
  return ((void*)0);
 return (void *)((unsigned long)*_pos + 1);
}
