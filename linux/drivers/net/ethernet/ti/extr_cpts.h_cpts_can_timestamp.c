
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cpts {int dummy; } ;



__attribute__((used)) static inline bool cpts_can_timestamp(struct cpts *cpts, struct sk_buff *skb)
{
 return 0;
}
