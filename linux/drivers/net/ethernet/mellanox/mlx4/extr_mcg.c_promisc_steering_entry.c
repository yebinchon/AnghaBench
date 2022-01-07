
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_mgm {int * qp; int members_count; } ;
struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_mgm* buf; } ;
typedef enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MGM_QPN_MASK ;
 int be32_to_cpu (int ) ;
 int get_promisc_qp (struct mlx4_dev*,int,int,int) ;
 scalar_t__ mlx4_READ_ENTRY (struct mlx4_dev*,unsigned int,struct mlx4_cmd_mailbox*) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

__attribute__((used)) static bool promisc_steering_entry(struct mlx4_dev *dev, u8 port,
       enum mlx4_steer_type steer,
       unsigned int index, u32 tqpn,
       u32 *members_count)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_mgm *mgm;
 u32 m_count;
 bool ret = 0;
 int i;

 if (port < 1 || port > dev->caps.num_ports)
  return 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return 0;
 mgm = mailbox->buf;

 if (mlx4_READ_ENTRY(dev, index, mailbox))
  goto out;
 m_count = be32_to_cpu(mgm->members_count) & 0xffffff;
 if (members_count)
  *members_count = m_count;

 for (i = 0; i < m_count; i++) {
  u32 qpn = be32_to_cpu(mgm->qp[i]) & MGM_QPN_MASK;
  if (!get_promisc_qp(dev, port, steer, qpn) && qpn != tqpn) {

   goto out;
  }
 }
 ret = 1;
out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return ret;
}
