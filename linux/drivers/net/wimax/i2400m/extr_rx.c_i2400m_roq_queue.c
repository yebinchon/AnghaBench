
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m_roq {int ws; int queue; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int I2400M_RO_TYPE_PACKET ;
 int I2400M_RT_WARM ;
 unsigned int __i2400m_roq_nsn (struct i2400m_roq*,unsigned int) ;
 int __i2400m_roq_queue (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int,unsigned int) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ;
 int dev_err (struct device*,char*,unsigned int,unsigned int,int ) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_reset (struct i2400m*,int ) ;
 int i2400m_roq_log_add (struct i2400m*,struct i2400m_roq*,int ,int ,unsigned int,unsigned int,unsigned int,int ) ;
 int i2400m_roq_log_dump (struct i2400m*,struct i2400m_roq*) ;
 unsigned int skb_queue_len (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static
void i2400m_roq_queue(struct i2400m *i2400m, struct i2400m_roq *roq,
        struct sk_buff * skb, unsigned lbn)
{
 struct device *dev = i2400m_dev(i2400m);
 unsigned nsn, len;

 d_fnstart(2, dev, "(i2400m %p roq %p skb %p lbn %u) = void\n",
    i2400m, roq, skb, lbn);
 len = skb_queue_len(&roq->queue);
 nsn = __i2400m_roq_nsn(roq, lbn);
 if (unlikely(nsn >= 1024)) {
  dev_err(dev, "SW BUG? queue nsn %d (lbn %u ws %u)\n",
   nsn, lbn, roq->ws);
  i2400m_roq_log_dump(i2400m, roq);
  i2400m_reset(i2400m, I2400M_RT_WARM);
 } else {
  __i2400m_roq_queue(i2400m, roq, skb, lbn, nsn);
  i2400m_roq_log_add(i2400m, roq, I2400M_RO_TYPE_PACKET,
         roq->ws, len, lbn, nsn, ~0);
 }
 d_fnend(2, dev, "(i2400m %p roq %p skb %p lbn %u) = void\n",
  i2400m, roq, skb, lbn);
}
