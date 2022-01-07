
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ehea_eqe {scalar_t__ entry; } ;
struct ehea_adapter {TYPE_1__* neq; int handle; } ;
struct TYPE_2__ {int fw_handle; } ;


 int EHEA_BMASK_SET (int ,int) ;
 int NELR_ADAPTER_MALFUNC ;
 int NELR_PORTSTATE_CHG ;
 int NELR_PORT_MALFUNC ;
 int ehea_h_reset_events (int ,int ,int) ;
 int ehea_parse_eqe (struct ehea_adapter*,scalar_t__) ;
 struct ehea_eqe* ehea_poll_eq (TYPE_1__*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void ehea_neq_tasklet(unsigned long data)
{
 struct ehea_adapter *adapter = (struct ehea_adapter *)data;
 struct ehea_eqe *eqe;
 u64 event_mask;

 eqe = ehea_poll_eq(adapter->neq);
 pr_debug("eqe=%p\n", eqe);

 while (eqe) {
  pr_debug("*eqe=%lx\n", (unsigned long) eqe->entry);
  ehea_parse_eqe(adapter, eqe->entry);
  eqe = ehea_poll_eq(adapter->neq);
  pr_debug("next eqe=%p\n", eqe);
 }

 event_mask = EHEA_BMASK_SET(NELR_PORTSTATE_CHG, 1)
     | EHEA_BMASK_SET(NELR_ADAPTER_MALFUNC, 1)
     | EHEA_BMASK_SET(NELR_PORT_MALFUNC, 1);

 ehea_h_reset_events(adapter->handle,
       adapter->neq->fw_handle, event_mask);
}
