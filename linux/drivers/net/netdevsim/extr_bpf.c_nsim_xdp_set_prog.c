
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_attachment_info {int dummy; } ;
struct netdevsim {int bpf_xdpoffload_accept; int bpf_xdpdrv_accept; } ;
struct netdev_bpf {scalar_t__ command; int extack; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int NSIM_EA (int ,char*) ;
 scalar_t__ XDP_SETUP_PROG ;
 scalar_t__ XDP_SETUP_PROG_HW ;
 int nsim_xdp_offload_prog (struct netdevsim*,struct netdev_bpf*) ;
 int xdp_attachment_flags_ok (struct xdp_attachment_info*,struct netdev_bpf*) ;
 int xdp_attachment_setup (struct xdp_attachment_info*,struct netdev_bpf*) ;

__attribute__((used)) static int
nsim_xdp_set_prog(struct netdevsim *ns, struct netdev_bpf *bpf,
    struct xdp_attachment_info *xdp)
{
 int err;

 if (!xdp_attachment_flags_ok(xdp, bpf))
  return -EBUSY;

 if (bpf->command == XDP_SETUP_PROG && !ns->bpf_xdpdrv_accept) {
  NSIM_EA(bpf->extack, "driver XDP disabled in DebugFS");
  return -EOPNOTSUPP;
 }
 if (bpf->command == XDP_SETUP_PROG_HW && !ns->bpf_xdpoffload_accept) {
  NSIM_EA(bpf->extack, "XDP offload disabled in DebugFS");
  return -EOPNOTSUPP;
 }

 if (bpf->command == XDP_SETUP_PROG_HW) {
  err = nsim_xdp_offload_prog(ns, bpf);
  if (err)
   return err;
 }

 xdp_attachment_setup(xdp, bpf);

 return 0;
}
