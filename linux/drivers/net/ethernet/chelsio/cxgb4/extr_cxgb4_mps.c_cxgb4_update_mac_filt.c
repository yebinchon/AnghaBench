
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_info {int adapter; } ;


 int cxgb4_change_mac (struct port_info*,unsigned int,int*,int const*,int,int *) ;
 int cxgb4_mps_ref_inc (int ,int const*,int,int *) ;

int cxgb4_update_mac_filt(struct port_info *pi, unsigned int viid,
     int *tcam_idx, const u8 *addr,
     bool persistent, u8 *smt_idx)
{
 int ret;

 ret = cxgb4_change_mac(pi, viid, tcam_idx,
          addr, persistent, smt_idx);
 if (ret < 0)
  return ret;

 cxgb4_mps_ref_inc(pi->adapter, addr, *tcam_idx, ((void*)0));
 return ret;
}
