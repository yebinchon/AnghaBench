
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;


 int memset (int *,int,int) ;

__attribute__((used)) static void ixgbe_create_lbtest_frame(struct sk_buff *skb,
          unsigned int frame_size)
{
 memset(skb->data, 0xFF, frame_size);
 frame_size >>= 1;
 memset(&skb->data[frame_size], 0xAA, frame_size / 2 - 1);
 memset(&skb->data[frame_size + 10], 0xBE, 1);
 memset(&skb->data[frame_size + 12], 0xAF, 1);
}
