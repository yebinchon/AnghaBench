
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int queue_mapping; } ;
struct octeon_device {int num_iqs; } ;



__attribute__((used)) static inline int skb_iq(struct octeon_device *oct, struct sk_buff *skb)
{
 return skb->queue_mapping % oct->num_iqs;
}
