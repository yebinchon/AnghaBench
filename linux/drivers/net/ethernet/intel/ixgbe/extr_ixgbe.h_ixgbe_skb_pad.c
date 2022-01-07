
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IXGBE_2K_TOO_SMALL_WITH_PADDING ;
 int IXGBE_RXBUFFER_1536 ;
 int IXGBE_RXBUFFER_3K ;
 scalar_t__ NET_IP_ALIGN ;
 int SKB_DATA_ALIGN (scalar_t__) ;
 int ixgbe_compute_pad (int) ;

__attribute__((used)) static inline int ixgbe_skb_pad(void)
{
 int rx_buf_len;
 if (IXGBE_2K_TOO_SMALL_WITH_PADDING)
  rx_buf_len = IXGBE_RXBUFFER_3K + SKB_DATA_ALIGN(NET_IP_ALIGN);
 else
  rx_buf_len = IXGBE_RXBUFFER_1536;


 rx_buf_len -= NET_IP_ALIGN;

 return ixgbe_compute_pad(rx_buf_len);
}
