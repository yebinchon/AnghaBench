
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct ehea_port {int logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 int EHEA_BCMC_MULTICAST ;
 int EHEA_BCMC_SCOPE_ALL ;
 int EHEA_BCMC_UNTAGGED ;
 int EHEA_BCMC_VLANID_ALL ;
 scalar_t__ ehea_h_reg_dereg_bcmc (int ,int ,int,scalar_t__,int ,int ) ;

__attribute__((used)) static u64 ehea_multicast_reg_helper(struct ehea_port *port, u64 mc_mac_addr,
         u32 hcallid)
{
 u64 hret;
 u8 reg_type;

 reg_type = EHEA_BCMC_MULTICAST | EHEA_BCMC_UNTAGGED;
 if (mc_mac_addr == 0)
  reg_type |= EHEA_BCMC_SCOPE_ALL;

 hret = ehea_h_reg_dereg_bcmc(port->adapter->handle,
         port->logical_port_id,
         reg_type, mc_mac_addr, 0, hcallid);
 if (hret)
  goto out;

 reg_type = EHEA_BCMC_MULTICAST | EHEA_BCMC_VLANID_ALL;
 if (mc_mac_addr == 0)
  reg_type |= EHEA_BCMC_SCOPE_ALL;

 hret = ehea_h_reg_dereg_bcmc(port->adapter->handle,
         port->logical_port_id,
         reg_type, mc_mac_addr, 0, hcallid);
out:
 return hret;
}
