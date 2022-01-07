
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct e1000_adapter {int dummy; } ;


 int E1000_HEADROOM ;
 unsigned int e1000_frag_len (struct e1000_adapter const*) ;
 scalar_t__ likely (void*) ;
 void* netdev_alloc_frag (unsigned int) ;

__attribute__((used)) static void *e1000_alloc_frag(const struct e1000_adapter *a)
{
 unsigned int len = e1000_frag_len(a);
 u8 *data = netdev_alloc_frag(len);

 if (likely(data))
  data += E1000_HEADROOM;
 return data;
}
