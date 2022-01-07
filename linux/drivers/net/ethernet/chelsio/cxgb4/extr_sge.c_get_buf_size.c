
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int fl_pg_order; } ;
struct rx_sw_desc {unsigned int dma_addr; } ;
struct adapter {struct sge sge; } ;


 int BUG () ;
 int FL_MTU_LARGE_BUFSIZE (struct adapter*) ;
 int FL_MTU_SMALL_BUFSIZE (struct adapter*) ;
 int PAGE_SIZE ;
 unsigned int RX_BUF_SIZE ;





__attribute__((used)) static inline int get_buf_size(struct adapter *adapter,
          const struct rx_sw_desc *d)
{
 struct sge *s = &adapter->sge;
 unsigned int rx_buf_size_idx = d->dma_addr & RX_BUF_SIZE;
 int buf_size;

 switch (rx_buf_size_idx) {
 case 128:
  buf_size = PAGE_SIZE;
  break;

 case 130:
  buf_size = PAGE_SIZE << s->fl_pg_order;
  break;

 case 129:
  buf_size = FL_MTU_SMALL_BUFSIZE(adapter);
  break;

 case 131:
  buf_size = FL_MTU_LARGE_BUFSIZE(adapter);
  break;

 default:
  BUG();
 }

 return buf_size;
}
