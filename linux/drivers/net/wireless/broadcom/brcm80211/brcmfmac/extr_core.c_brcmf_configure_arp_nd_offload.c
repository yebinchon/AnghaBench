
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_if {int dummy; } ;
typedef int s32 ;


 int BRCMF_ARP_OL_AGENT ;
 int BRCMF_ARP_OL_PEER_AUTO_REPLY ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int,int) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;

void brcmf_configure_arp_nd_offload(struct brcmf_if *ifp, bool enable)
{
 s32 err;
 u32 mode;

 if (enable)
  mode = BRCMF_ARP_OL_AGENT | BRCMF_ARP_OL_PEER_AUTO_REPLY;
 else
  mode = 0;



 err = brcmf_fil_iovar_int_set(ifp, "arp_ol", mode);
 if (err) {
  brcmf_dbg(TRACE, "failed to set ARP offload mode to 0x%x, err = %d\n",
     mode, err);
 } else {
  err = brcmf_fil_iovar_int_set(ifp, "arpoe", enable);
  if (err) {
   brcmf_dbg(TRACE, "failed to configure (%d) ARP offload err = %d\n",
      enable, err);
  } else {
   brcmf_dbg(TRACE, "successfully configured (%d) ARP offload to 0x%x\n",
      enable, mode);
  }
 }

 err = brcmf_fil_iovar_int_set(ifp, "ndoe", enable);
 if (err) {
  brcmf_dbg(TRACE, "failed to configure (%d) ND offload err = %d\n",
     enable, err);
 } else {
  brcmf_dbg(TRACE, "successfully configured (%d) ND offload to 0x%x\n",
     enable, mode);
 }
}
