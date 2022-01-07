
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 int CXL_PSL9_CTCCFG ;
 int CXL_PSL9_TRACECFG ;
 int CXL_PSL9_TRACEID_MAX ;
 int CXL_PSL9_TRACESTATE_FIN ;
 int cxl_p1_read (struct cxl*,int ) ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int dev_dbg (int *,char*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cxl_stop_trace_psl9(struct cxl *adapter)
{
 int traceid;
 u64 trace_state, trace_mask;
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);


 for (traceid = 0; traceid <= CXL_PSL9_TRACEID_MAX; ++traceid) {
  trace_state = cxl_p1_read(adapter, CXL_PSL9_CTCCFG);
  trace_mask = (0x3ULL << (62 - traceid * 2));
  trace_state = (trace_state & trace_mask) >> (62 - traceid * 2);
  dev_dbg(&dev->dev, "cxl: Traceid-%d trace_state=0x%0llX\n",
   traceid, trace_state);


  if (trace_state != CXL_PSL9_TRACESTATE_FIN)
   cxl_p1_write(adapter, CXL_PSL9_TRACECFG,
         0x8400000000000000ULL | traceid);
 }
}
