
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int id; int * r_vecs; int max_r_vecs; int max_tx_rings; int max_rx_rings; struct dentry* debugfs_dir; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 void* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,int *,int *) ;
 int min (int ,int ) ;
 int nfp_dir ;
 scalar_t__ nfp_net_is_data_vnic (struct nfp_net*) ;
 int nfp_rx_q_fops ;
 int nfp_tx_q_fops ;
 int nfp_xdp_q_fops ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

void nfp_net_debugfs_vnic_add(struct nfp_net *nn, struct dentry *ddir)
{
 struct dentry *queues, *tx, *rx, *xdp;
 char name[20];
 int i;

 if (IS_ERR_OR_NULL(nfp_dir))
  return;

 if (nfp_net_is_data_vnic(nn))
  sprintf(name, "vnic%d", nn->id);
 else
  strcpy(name, "ctrl-vnic");
 nn->debugfs_dir = debugfs_create_dir(name, ddir);


 queues = debugfs_create_dir("queue", nn->debugfs_dir);

 rx = debugfs_create_dir("rx", queues);
 tx = debugfs_create_dir("tx", queues);
 xdp = debugfs_create_dir("xdp", queues);

 for (i = 0; i < min(nn->max_rx_rings, nn->max_r_vecs); i++) {
  sprintf(name, "%d", i);
  debugfs_create_file(name, 0400, rx,
        &nn->r_vecs[i], &nfp_rx_q_fops);
  debugfs_create_file(name, 0400, xdp,
        &nn->r_vecs[i], &nfp_xdp_q_fops);
 }

 for (i = 0; i < min(nn->max_tx_rings, nn->max_r_vecs); i++) {
  sprintf(name, "%d", i);
  debugfs_create_file(name, 0400, tx,
        &nn->r_vecs[i], &nfp_tx_q_fops);
 }
}
