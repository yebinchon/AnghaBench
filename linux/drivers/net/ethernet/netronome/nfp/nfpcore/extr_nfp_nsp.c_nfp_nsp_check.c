
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ major; scalar_t__ minor; } ;
struct nfp_nsp {TYPE_1__ ver; int res; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ FIELD_GET (int ,int) ;
 scalar_t__ NSP_MAGIC ;
 scalar_t__ NSP_MAJOR ;
 scalar_t__ NSP_MINOR ;
 int NSP_STATUS ;
 int NSP_STATUS_BUSY ;
 int NSP_STATUS_MAGIC ;
 int NSP_STATUS_MAJOR ;
 int NSP_STATUS_MINOR ;
 int nfp_cpp_readq (struct nfp_cpp*,int ,int,int*) ;
 int nfp_err (struct nfp_cpp*,char*,...) ;
 int nfp_resource_address (int ) ;
 int nfp_resource_cpp_id (int ) ;

__attribute__((used)) static int nfp_nsp_check(struct nfp_nsp *state)
{
 struct nfp_cpp *cpp = state->cpp;
 u64 nsp_status, reg;
 u32 nsp_cpp;
 int err;

 nsp_cpp = nfp_resource_cpp_id(state->res);
 nsp_status = nfp_resource_address(state->res) + NSP_STATUS;

 err = nfp_cpp_readq(cpp, nsp_cpp, nsp_status, &reg);
 if (err < 0)
  return err;

 if (FIELD_GET(NSP_STATUS_MAGIC, reg) != NSP_MAGIC) {
  nfp_err(cpp, "Cannot detect NFP Service Processor\n");
  return -ENODEV;
 }

 state->ver.major = FIELD_GET(NSP_STATUS_MAJOR, reg);
 state->ver.minor = FIELD_GET(NSP_STATUS_MINOR, reg);

 if (state->ver.major != NSP_MAJOR) {
  nfp_err(cpp, "Unsupported ABI %hu.%hu\n",
   state->ver.major, state->ver.minor);
  return -EINVAL;
 }
 if (state->ver.minor < NSP_MINOR) {
  nfp_err(cpp, "ABI too old to support NIC operation (%u.%hu < %u.%u), please update the management FW on the flash\n",
   NSP_MAJOR, state->ver.minor, NSP_MAJOR, NSP_MINOR);
  return -EINVAL;
 }

 if (reg & NSP_STATUS_BUSY) {
  nfp_err(cpp, "Service processor busy!\n");
  return -EBUSY;
 }

 return 0;
}
