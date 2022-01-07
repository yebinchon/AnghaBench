
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int fl_pg_order; } ;
struct rx_sw_desc {int dma_addr; } ;
struct adapter {struct sge sge; } ;


 int PAGE_SIZE ;
 int RX_LARGE_BUF ;

__attribute__((used)) static inline int get_buf_size(const struct adapter *adapter,
          const struct rx_sw_desc *sdesc)
{
 const struct sge *s = &adapter->sge;

 return (s->fl_pg_order > 0 && (sdesc->dma_addr & RX_LARGE_BUF)
  ? (PAGE_SIZE << s->fl_pg_order) : PAGE_SIZE);
}
