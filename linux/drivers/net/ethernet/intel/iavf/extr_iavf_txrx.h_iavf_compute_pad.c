
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (int,int) ;
 int PAGE_SIZE ;
 int SKB_WITH_OVERHEAD (int) ;

__attribute__((used)) static inline int iavf_compute_pad(int rx_buf_len)
{
 int page_size, pad_size;

 page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
 pad_size = SKB_WITH_OVERHEAD(page_size) - rx_buf_len;

 return pad_size;
}
