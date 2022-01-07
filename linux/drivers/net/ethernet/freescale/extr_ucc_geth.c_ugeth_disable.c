
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {struct ucc_fast_private* uccf; TYPE_2__* ug_info; } ;
struct ucc_fast_private {int stopped_rx; scalar_t__ enabled_rx; int stopped_tx; scalar_t__ enabled_tx; } ;
typedef enum comm_dir { ____Placeholder_comm_dir } comm_dir ;
struct TYPE_3__ {scalar_t__ ucc_num; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;


 int COMM_DIR_RX ;
 int COMM_DIR_TX ;
 int EINVAL ;
 scalar_t__ UCC_MAX_NUM ;
 scalar_t__ netif_msg_probe (struct ucc_geth_private*) ;
 int pr_err (char*) ;
 int ucc_fast_disable (struct ucc_fast_private*,int) ;
 int ugeth_graceful_stop_rx (struct ucc_geth_private*) ;
 int ugeth_graceful_stop_tx (struct ucc_geth_private*) ;

__attribute__((used)) static int ugeth_disable(struct ucc_geth_private *ugeth, enum comm_dir mode)
{
 struct ucc_fast_private *uccf;

 uccf = ugeth->uccf;


 if (ugeth->ug_info->uf_info.ucc_num >= UCC_MAX_NUM) {
  if (netif_msg_probe(ugeth))
   pr_err("ucc_num out of range\n");
  return -EINVAL;
 }


 if ((mode & COMM_DIR_TX) && uccf->enabled_tx && !uccf->stopped_tx)
  ugeth_graceful_stop_tx(ugeth);


 if ((mode & COMM_DIR_RX) && uccf->enabled_rx && !uccf->stopped_rx)
  ugeth_graceful_stop_rx(ugeth);

 ucc_fast_disable(ugeth->uccf, mode);

 return 0;
}
