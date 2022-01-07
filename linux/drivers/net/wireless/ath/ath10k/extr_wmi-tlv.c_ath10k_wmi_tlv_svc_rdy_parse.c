
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_tlv_svc_rdy_parse {int svc_bmap_done; int dbs_hw_mode_done; void const* svc_bmap; void const* mem_reqs; void const* reg; void const* ev; } ;
struct ath10k {int dummy; } ;







__attribute__((used)) static int ath10k_wmi_tlv_svc_rdy_parse(struct ath10k *ar, u16 tag, u16 len,
     const void *ptr, void *data)
{
 struct wmi_tlv_svc_rdy_parse *svc_rdy = data;

 switch (tag) {
 case 128:
  svc_rdy->ev = ptr;
  break;
 case 129:
  svc_rdy->reg = ptr;
  break;
 case 131:
  svc_rdy->mem_reqs = ptr;
  break;
 case 130:
  if (!svc_rdy->svc_bmap_done) {
   svc_rdy->svc_bmap_done = 1;
   svc_rdy->svc_bmap = ptr;
  } else if (!svc_rdy->dbs_hw_mode_done) {
   svc_rdy->dbs_hw_mode_done = 1;
  }
  break;
 default:
  break;
 }
 return 0;
}
