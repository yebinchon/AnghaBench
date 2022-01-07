
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPAA2_ETH_DBG_ROOT ;
 int debugfs_create_dir (int ,int *) ;
 int dpaa2_dbg_root ;
 int pr_debug (char*) ;

void dpaa2_eth_dbg_init(void)
{
 dpaa2_dbg_root = debugfs_create_dir(DPAA2_ETH_DBG_ROOT, ((void*)0));
 pr_debug("DPAA2-ETH: debugfs created\n");
}
