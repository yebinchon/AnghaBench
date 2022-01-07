
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;


 int CRB_CMDPEG_STATE ;
 int CRB_MPORT_MODE ;
 int CRB_NIC_CAPABILITIES_HOST ;
 int CRB_NIC_MSI_MODE_HOST ;
 int INTR_SCHEME_PERPORT ;
 int MPORT_MULTI_FUNCTION_MODE ;
 int MSI_MODE_MULTIFUNC ;
 int NXWR32 (struct netxen_adapter*,int ,int ) ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 int PHAN_INITIALIZE_ACK ;
 int netxen_receive_peg_ready (struct netxen_adapter*) ;

int netxen_init_firmware(struct netxen_adapter *adapter)
{
 int err;

 err = netxen_receive_peg_ready(adapter);
 if (err)
  return err;

 NXWR32(adapter, CRB_NIC_CAPABILITIES_HOST, INTR_SCHEME_PERPORT);
 NXWR32(adapter, CRB_MPORT_MODE, MPORT_MULTI_FUNCTION_MODE);
 NXWR32(adapter, CRB_CMDPEG_STATE, PHAN_INITIALIZE_ACK);

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
  NXWR32(adapter, CRB_NIC_MSI_MODE_HOST, MSI_MODE_MULTIFUNC);

 return err;
}
