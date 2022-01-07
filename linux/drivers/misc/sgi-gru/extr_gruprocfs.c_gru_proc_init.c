
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cch_seq_ops ;
 int gru_seq_ops ;
 int mcs_statistics_fops ;
 int options_fops ;
 int proc_create (char*,int,int ,int *) ;
 int proc_create_seq (char*,int,int ,int *) ;
 int proc_gru ;
 int proc_mkdir (char*,int *) ;
 int remove_proc_subtree (char*,int *) ;
 int statistics_fops ;

int gru_proc_init(void)
{
 proc_gru = proc_mkdir("sgi_uv/gru", ((void*)0));
 if (!proc_gru)
  return -1;
 if (!proc_create("statistics", 0644, proc_gru, &statistics_fops))
  goto err;
 if (!proc_create("mcs_statistics", 0644, proc_gru, &mcs_statistics_fops))
  goto err;
 if (!proc_create("debug_options", 0644, proc_gru, &options_fops))
  goto err;
 if (!proc_create_seq("cch_status", 0444, proc_gru, &cch_seq_ops))
  goto err;
 if (!proc_create_seq("gru_status", 0444, proc_gru, &gru_seq_ops))
  goto err;
 return 0;
err:
 remove_proc_subtree("sgi_uv/gru", ((void*)0));
 return -1;
}
