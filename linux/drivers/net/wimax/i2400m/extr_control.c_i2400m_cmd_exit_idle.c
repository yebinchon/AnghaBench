
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m_l3l4_hdr {void* version; scalar_t__ length; void* type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef int strerr ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2400M_L3L4_VERSION ;
 int I2400M_MT_CMD_EXIT_IDLE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 void* cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_msg_check_status (int ,char*,int) ;
 struct sk_buff* i2400m_msg_to_dev (struct i2400m*,struct i2400m_l3l4_hdr*,int) ;
 int kfree (struct i2400m_l3l4_hdr*) ;
 int kfree_skb (struct sk_buff*) ;
 struct i2400m_l3l4_hdr* kzalloc (int,int ) ;
 int wimax_msg_data (struct sk_buff*) ;

int i2400m_cmd_exit_idle(struct i2400m *i2400m)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 struct sk_buff *ack_skb;
 struct i2400m_l3l4_hdr *cmd;
 char strerr[32];

 result = -ENOMEM;
 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  goto error_alloc;
 cmd->type = cpu_to_le16(I2400M_MT_CMD_EXIT_IDLE);
 cmd->length = 0;
 cmd->version = cpu_to_le16(I2400M_L3L4_VERSION);

 ack_skb = i2400m_msg_to_dev(i2400m, cmd, sizeof(*cmd));
 result = PTR_ERR(ack_skb);
 if (IS_ERR(ack_skb)) {
  dev_err(dev, "Failed to issue 'exit idle' command: %d\n",
   result);
  goto error_msg_to_dev;
 }
 result = i2400m_msg_check_status(wimax_msg_data(ack_skb),
      strerr, sizeof(strerr));
 kfree_skb(ack_skb);
error_msg_to_dev:
 kfree(cmd);
error_alloc:
 return result;

}
