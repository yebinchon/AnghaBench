
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int csum_none ;
 int discard_frame ;
 int good_frame ;
 int llc_snap ;

__attribute__((used)) static int enh_desc_coe_rdes0(int ipc_err, int type, int payload_err)
{
 int ret = good_frame;
 u32 status = (type << 2 | ipc_err << 1 | payload_err) & 0x7;
 if (status == 0x0)
  ret = llc_snap;
 else if (status == 0x4)
  ret = good_frame;
 else if (status == 0x5)
  ret = csum_none;
 else if (status == 0x6)
  ret = csum_none;
 else if (status == 0x7)
  ret = csum_none;
 else if (status == 0x1)
  ret = discard_frame;
 else if (status == 0x3)
  ret = discard_frame;
 return ret;
}
