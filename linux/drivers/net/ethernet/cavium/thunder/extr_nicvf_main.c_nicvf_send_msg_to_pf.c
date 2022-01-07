
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int pf_acked; int pf_nacked; int rx_mode_mtx; int vf_id; int netdev; } ;


 int EBUSY ;
 int EINVAL ;
 int NIC_MBOX_MSG_TIMEOUT ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*,int,int ) ;
 int nicvf_write_to_mbx (struct nicvf*,union nic_mbx*) ;

int nicvf_send_msg_to_pf(struct nicvf *nic, union nic_mbx *mbx)
{
 int timeout = NIC_MBOX_MSG_TIMEOUT;
 int sleep = 10;
 int ret = 0;

 mutex_lock(&nic->rx_mode_mtx);

 nic->pf_acked = 0;
 nic->pf_nacked = 0;

 nicvf_write_to_mbx(nic, mbx);


 while (!nic->pf_acked) {
  if (nic->pf_nacked) {
   netdev_err(nic->netdev,
       "PF NACK to mbox msg 0x%02x from VF%d\n",
       (mbx->msg.msg & 0xFF), nic->vf_id);
   ret = -EINVAL;
   break;
  }
  msleep(sleep);
  if (nic->pf_acked)
   break;
  timeout -= sleep;
  if (!timeout) {
   netdev_err(nic->netdev,
       "PF didn't ACK to mbox msg 0x%02x from VF%d\n",
       (mbx->msg.msg & 0xFF), nic->vf_id);
   ret = -EBUSY;
   break;
  }
 }
 mutex_unlock(&nic->rx_mode_mtx);
 return ret;
}
