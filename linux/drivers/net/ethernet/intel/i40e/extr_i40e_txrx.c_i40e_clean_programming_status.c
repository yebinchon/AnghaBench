
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i40e_rx_desc {int dummy; } i40e_rx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct i40e_rx_buffer {int dummy; } ;
struct i40e_ring {int next_to_clean; int count; struct i40e_rx_buffer* rx_bi; } ;


 int I40E_RX_DESC (struct i40e_ring*,int ) ;
 int I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS ;
 int I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK ;
 int I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT ;
 int i40e_fd_handle_status (struct i40e_ring*,union i40e_rx_desc*,int) ;
 int i40e_rx_is_programming_status (int) ;
 int prefetch (int ) ;

struct i40e_rx_buffer *i40e_clean_programming_status(
 struct i40e_ring *rx_ring,
 union i40e_rx_desc *rx_desc,
 u64 qw)
{
 struct i40e_rx_buffer *rx_buffer;
 u32 ntc;
 u8 id;

 if (!i40e_rx_is_programming_status(qw))
  return ((void*)0);

 ntc = rx_ring->next_to_clean;


 rx_buffer = &rx_ring->rx_bi[ntc++];
 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(I40E_RX_DESC(rx_ring, ntc));

 id = (qw & I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK) >>
    I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT;

 if (id == I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS)
  i40e_fd_handle_status(rx_ring, rx_desc, id);

 return rx_buffer;
}
