
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IAVF_2K_TOO_SMALL_WITH_PADDING ;
 int IAVF_RXBUFFER_1536 ;
 int IAVF_RXBUFFER_3072 ;
 scalar_t__ NET_IP_ALIGN ;
 int SKB_DATA_ALIGN (scalar_t__) ;
 int iavf_compute_pad (int) ;

__attribute__((used)) static inline int iavf_skb_pad(void)
{
 int rx_buf_len;
 if (IAVF_2K_TOO_SMALL_WITH_PADDING)
  rx_buf_len = IAVF_RXBUFFER_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
 else
  rx_buf_len = IAVF_RXBUFFER_1536;


 rx_buf_len -= NET_IP_ALIGN;

 return iavf_compute_pad(rx_buf_len);
}
