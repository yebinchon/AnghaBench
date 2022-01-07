
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_rx_buf {unsigned int page_offset; } ;



__attribute__((used)) static void
ice_rx_buf_adjust_pg_offset(struct ice_rx_buf *rx_buf, unsigned int size)
{


 rx_buf->page_offset ^= size;




}
