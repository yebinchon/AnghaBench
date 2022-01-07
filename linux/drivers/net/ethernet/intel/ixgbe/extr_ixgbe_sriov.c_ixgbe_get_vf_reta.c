
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct ixgbe_adapter {int* rss_indir_tbl; TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int vf_api; int rss_query_enabled; } ;


 int EOPNOTSUPP ;
 int EPERM ;



 size_t ixgbe_rss_indir_tbl_entries (struct ixgbe_adapter*) ;

__attribute__((used)) static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
{
 u32 i, j;
 u32 *out_buf = &msgbuf[1];
 const u8 *reta = adapter->rss_indir_tbl;
 u32 reta_size = ixgbe_rss_indir_tbl_entries(adapter);


 if (!adapter->vfinfo[vf].rss_query_enabled)
  return -EPERM;


 switch (adapter->vfinfo[vf].vf_api) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  return -EOPNOTSUPP;
 }






 for (i = 0; i < reta_size / 16; i++) {
  out_buf[i] = 0;
  for (j = 0; j < 16; j++)
   out_buf[i] |= (u32)(reta[16 * i + j] & 0x3) << (2 * j);
 }

 return 0;
}
