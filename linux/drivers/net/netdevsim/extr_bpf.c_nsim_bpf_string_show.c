
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {char** private; } ;


 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static int nsim_bpf_string_show(struct seq_file *file, void *data)
{
 const char **str = file->private;

 if (*str)
  seq_printf(file, "%s\n", *str);

 return 0;
}
