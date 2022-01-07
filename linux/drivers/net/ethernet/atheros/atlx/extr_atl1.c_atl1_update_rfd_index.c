
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int pkt_size; } ;
struct TYPE_4__ {TYPE_1__ xsum_sz; } ;
struct rx_return_desc {int num_buf; TYPE_2__ xsz; } ;
struct atl1_adapter {int rx_buffer_len; } ;


 int atl1_clean_alloc_flag (struct atl1_adapter*,struct rx_return_desc*,int) ;

__attribute__((used)) static void atl1_update_rfd_index(struct atl1_adapter *adapter,
 struct rx_return_desc *rrd)
{
 u16 num_buf;

 num_buf = (rrd->xsz.xsum_sz.pkt_size + adapter->rx_buffer_len - 1) /
  adapter->rx_buffer_len;
 if (rrd->num_buf == num_buf)

  atl1_clean_alloc_flag(adapter, rrd, num_buf);
}
