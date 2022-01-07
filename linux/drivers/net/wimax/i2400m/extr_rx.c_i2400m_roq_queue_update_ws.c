
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; } ;
struct i2400m_roq_data {int cs; } ;
struct i2400m_roq {unsigned int ws; int queue; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int I2400M_RO_TYPE_PACKET_WS ;
 unsigned int __i2400m_roq_nsn (struct i2400m_roq*,unsigned int) ;
 int __i2400m_roq_queue (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int,unsigned int) ;
 int __i2400m_roq_update_ws (struct i2400m*,struct i2400m_roq*,int ) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_net_erx (struct i2400m*,struct sk_buff*,int ) ;
 int i2400m_roq_log_add (struct i2400m*,struct i2400m_roq*,int ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int skb_queue_len (int *) ;

__attribute__((used)) static
void i2400m_roq_queue_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
    struct sk_buff * skb, unsigned sn)
{
 struct device *dev = i2400m_dev(i2400m);
 unsigned nsn, old_ws, len;

 d_fnstart(2, dev, "(i2400m %p roq %p skb %p sn %u)\n",
    i2400m, roq, skb, sn);
 len = skb_queue_len(&roq->queue);
 nsn = __i2400m_roq_nsn(roq, sn);






 old_ws = roq->ws;



 if (len == 0) {
  struct i2400m_roq_data *roq_data;
  roq_data = (struct i2400m_roq_data *) &skb->cb;
  i2400m_net_erx(i2400m, skb, roq_data->cs);
 } else
  __i2400m_roq_queue(i2400m, roq, skb, sn, nsn);

 __i2400m_roq_update_ws(i2400m, roq, sn + 1);
 i2400m_roq_log_add(i2400m, roq, I2400M_RO_TYPE_PACKET_WS,
      old_ws, len, sn, nsn, roq->ws);

 d_fnend(2, dev, "(i2400m %p roq %p skb %p sn %u) = void\n",
  i2400m, roq, skb, sn);
}
