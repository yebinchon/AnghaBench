
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynpcc_info {int intr_cnt; } ;
struct jme_adapter {int rx_ring_size; struct dynpcc_info dpi; } ;


 int jme_process_receive (struct jme_adapter*,int ) ;

__attribute__((used)) static void
jme_rx_clean_tasklet(unsigned long arg)
{
 struct jme_adapter *jme = (struct jme_adapter *)arg;
 struct dynpcc_info *dpi = &(jme->dpi);

 jme_process_receive(jme, jme->rx_ring_size);
 ++(dpi->intr_cnt);

}
