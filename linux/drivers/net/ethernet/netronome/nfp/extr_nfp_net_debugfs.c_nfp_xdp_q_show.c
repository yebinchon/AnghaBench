
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int nfp_tx_q_show (struct seq_file*,void*) ;

__attribute__((used)) static int nfp_xdp_q_show(struct seq_file *file, void *data)
{
 return nfp_tx_q_show(file, data);
}
