
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_faead {scalar_t__ conf_fqid; int ctrl; } ;
struct dpaa2_eth_priv {int (* enqueue ) (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int ) ;struct dpaa2_eth_fq* fq; } ;
struct dpaa2_eth_fq {int dummy; } ;


 int DPAA2_ETH_ENQUEUE_RETRIES ;
 int DPAA2_FAEAD_A2V ;
 int DPAA2_FAEAD_A4V ;
 int DPAA2_FAEAD_EBDDV ;
 int DPAA2_FD_CTRL_ASAL ;
 int DPAA2_FD_FRC_FAEADV ;
 int EBUSY ;
 int cpu_to_le32 (int) ;
 int dpaa2_fd_get_frc (struct dpaa2_fd*) ;
 int dpaa2_fd_set_ctrl (struct dpaa2_fd*,int ) ;
 int dpaa2_fd_set_frc (struct dpaa2_fd*,int) ;
 struct dpaa2_faead* dpaa2_get_faead (void*,int) ;
 int stub1 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int ) ;

__attribute__((used)) static int xdp_enqueue(struct dpaa2_eth_priv *priv, struct dpaa2_fd *fd,
         void *buf_start, u16 queue_id)
{
 struct dpaa2_eth_fq *fq;
 struct dpaa2_faead *faead;
 u32 ctrl, frc;
 int i, err;


 frc = dpaa2_fd_get_frc(fd);
 dpaa2_fd_set_frc(fd, frc | DPAA2_FD_FRC_FAEADV);
 dpaa2_fd_set_ctrl(fd, DPAA2_FD_CTRL_ASAL);





 ctrl = DPAA2_FAEAD_A4V | DPAA2_FAEAD_A2V | DPAA2_FAEAD_EBDDV;
 faead = dpaa2_get_faead(buf_start, 0);
 faead->ctrl = cpu_to_le32(ctrl);
 faead->conf_fqid = 0;

 fq = &priv->fq[queue_id];
 for (i = 0; i < DPAA2_ETH_ENQUEUE_RETRIES; i++) {
  err = priv->enqueue(priv, fq, fd, 0);
  if (err != -EBUSY)
   break;
 }

 return err;
}
