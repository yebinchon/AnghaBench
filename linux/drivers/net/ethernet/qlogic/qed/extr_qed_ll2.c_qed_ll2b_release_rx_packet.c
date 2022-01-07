
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_hwfn {int cdev; } ;
typedef int dma_addr_t ;


 int qed_ll2_dealloc_buffer (int ,void*) ;

__attribute__((used)) static void qed_ll2b_release_rx_packet(void *cxt,
           u8 connection_handle,
           void *cookie,
           dma_addr_t rx_buf_addr,
           bool b_last_packet)
{
 struct qed_hwfn *p_hwfn = cxt;

 qed_ll2_dealloc_buffer(p_hwfn->cdev, cookie);
}
