
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 struct sk_buff* mt76_mcu_msg_alloc (void const*,int ,int,int ) ;

__attribute__((used)) static inline struct sk_buff *
mt76x02_mcu_msg_alloc(const void *data, int len)
{
 return mt76_mcu_msg_alloc(data, 0, len, 0);
}
