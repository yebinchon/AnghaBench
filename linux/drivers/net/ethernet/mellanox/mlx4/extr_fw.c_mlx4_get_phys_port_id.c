
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct TYPE_2__ {size_t num_ports; int* phys_port_id; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {size_t* buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_MOD_STAT_CFG ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_GET (size_t,size_t*,int ) ;
 int MOD_STAT_CFG_GUID_H ;
 int MOD_STAT_CFG_GUID_L ;
 size_t MOD_STAT_CFG_PORT_OFFSET ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,size_t,int,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,size_t) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_get_phys_port_id(struct mlx4_dev *dev)
{
 u8 port;
 u32 *outbox;
 struct mlx4_cmd_mailbox *mailbox;
 u32 in_mod;
 u32 guid_hi, guid_lo;
 int err, ret = 0;




 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 for (port = 1; port <= dev->caps.num_ports; port++) {
  in_mod = port << 8;
  err = mlx4_cmd_box(dev, 0, mailbox->dma, in_mod, 0x2,
       MLX4_CMD_MOD_STAT_CFG, MLX4_CMD_TIME_CLASS_A,
       MLX4_CMD_NATIVE);
  if (err) {
   mlx4_err(dev, "Fail to get port %d uplink guid\n",
     port);
   ret = err;
  } else {
   MLX4_GET(guid_hi, outbox, 0X14);
   MLX4_GET(guid_lo, outbox, 0X1c);
   dev->caps.phys_port_id[port] = (u64)guid_lo |
             (u64)guid_hi << 32;
  }
 }
 mlx4_free_cmd_mailbox(dev, mailbox);
 return ret;
}
