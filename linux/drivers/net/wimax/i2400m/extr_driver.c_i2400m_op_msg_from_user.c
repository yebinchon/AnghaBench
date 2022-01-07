
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i2400m {int wimax_dev; } ;
struct genl_info {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,struct i2400m*,void const*,size_t,struct genl_info const*,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,struct i2400m*,void const*,size_t,struct genl_info const*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 struct sk_buff* i2400m_msg_to_dev (struct i2400m*,void const*,size_t) ;
 struct i2400m* wimax_dev_to_i2400m (struct wimax_dev*) ;
 int wimax_msg_send (int *,struct sk_buff*) ;

__attribute__((used)) static
int i2400m_op_msg_from_user(struct wimax_dev *wimax_dev,
       const char *pipe_name,
       const void *msg_buf, size_t msg_len,
       const struct genl_info *genl_info)
{
 int result;
 struct i2400m *i2400m = wimax_dev_to_i2400m(wimax_dev);
 struct device *dev = i2400m_dev(i2400m);
 struct sk_buff *ack_skb;

 d_fnstart(4, dev, "(wimax_dev %p [i2400m %p] msg_buf %p "
    "msg_len %zu genl_info %p)\n", wimax_dev, i2400m,
    msg_buf, msg_len, genl_info);
 ack_skb = i2400m_msg_to_dev(i2400m, msg_buf, msg_len);
 result = PTR_ERR(ack_skb);
 if (IS_ERR(ack_skb))
  goto error_msg_to_dev;
 result = wimax_msg_send(&i2400m->wimax_dev, ack_skb);
error_msg_to_dev:
 d_fnend(4, dev, "(wimax_dev %p [i2400m %p] msg_buf %p msg_len %zu "
  "genl_info %p) = %d\n", wimax_dev, i2400m, msg_buf, msg_len,
  genl_info, result);
 return result;
}
