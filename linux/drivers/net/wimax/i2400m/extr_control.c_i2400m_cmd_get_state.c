
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
 int I2400M_MT_GET_STATE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 void* cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int,...) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_msg_check_status (struct i2400m_l3l4_hdr const*,char*,int) ;
 struct sk_buff* i2400m_msg_to_dev (struct i2400m*,struct i2400m_l3l4_hdr*,int) ;
 int i2400m_report_state_hook (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char*) ;
 int kfree (struct i2400m_l3l4_hdr*) ;
 int kfree_skb (struct sk_buff*) ;
 struct i2400m_l3l4_hdr* kzalloc (int,int ) ;
 struct i2400m_l3l4_hdr* wimax_msg_data_len (struct sk_buff*,size_t*) ;

__attribute__((used)) static int i2400m_cmd_get_state(struct i2400m *i2400m)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 struct sk_buff *ack_skb;
 struct i2400m_l3l4_hdr *cmd;
 const struct i2400m_l3l4_hdr *ack;
 size_t ack_len;
 char strerr[32];

 result = -ENOMEM;
 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  goto error_alloc;
 cmd->type = cpu_to_le16(I2400M_MT_GET_STATE);
 cmd->length = 0;
 cmd->version = cpu_to_le16(I2400M_L3L4_VERSION);

 ack_skb = i2400m_msg_to_dev(i2400m, cmd, sizeof(*cmd));
 if (IS_ERR(ack_skb)) {
  dev_err(dev, "Failed to issue 'get state' command: %ld\n",
   PTR_ERR(ack_skb));
  result = PTR_ERR(ack_skb);
  goto error_msg_to_dev;
 }
 ack = wimax_msg_data_len(ack_skb, &ack_len);
 result = i2400m_msg_check_status(ack, strerr, sizeof(strerr));
 if (result < 0) {
  dev_err(dev, "'get state' (0x%04x) command failed: "
   "%d - %s\n", I2400M_MT_GET_STATE, result, strerr);
  goto error_cmd_failed;
 }
 i2400m_report_state_hook(i2400m, ack, ack_len - sizeof(*ack),
     "GET STATE");
 result = 0;
 kfree_skb(ack_skb);
error_cmd_failed:
error_msg_to_dev:
 kfree(cmd);
error_alloc:
 return result;
}
