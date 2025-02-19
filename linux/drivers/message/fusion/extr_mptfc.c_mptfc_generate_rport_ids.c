
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct fc_rport_identifiers {int node_name; int port_name; int roles; int port_id; } ;
struct TYPE_6__ {scalar_t__ Low; scalar_t__ High; } ;
struct TYPE_5__ {scalar_t__ Low; scalar_t__ High; } ;
struct TYPE_7__ {int Flags; int Protocol; int PortIdentifier; TYPE_2__ WWPN; TYPE_1__ WWNN; } ;
typedef TYPE_3__ FCDevicePage0_t ;


 int FC_RPORT_ROLE_UNKNOWN ;
 int MPI_FC_DEVICE_PAGE0_FLAGS_PLOGI_INVALID ;
 int MPI_FC_DEVICE_PAGE0_FLAGS_PRLI_INVALID ;
 int MPI_FC_DEVICE_PAGE0_FLAGS_TARGETID_BUS_VALID ;
 int MPI_FC_DEVICE_PAGE0_PROT_FCP_TARGET ;

__attribute__((used)) static int
mptfc_generate_rport_ids(FCDevicePage0_t *pg0, struct fc_rport_identifiers *rid)
{

 if (pg0->Flags & (MPI_FC_DEVICE_PAGE0_FLAGS_PLOGI_INVALID |
     MPI_FC_DEVICE_PAGE0_FLAGS_PRLI_INVALID))
  return -1;

 if (!(pg0->Flags & MPI_FC_DEVICE_PAGE0_FLAGS_TARGETID_BUS_VALID))
  return -1;

 if (!(pg0->Protocol & MPI_FC_DEVICE_PAGE0_PROT_FCP_TARGET))
  return -1;





 rid->node_name = ((u64)pg0->WWNN.High) << 32 | (u64)pg0->WWNN.Low;
 rid->port_name = ((u64)pg0->WWPN.High) << 32 | (u64)pg0->WWPN.Low;
 rid->port_id = pg0->PortIdentifier;
 rid->roles = FC_RPORT_ROLE_UNKNOWN;

 return 0;
}
