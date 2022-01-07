
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;
struct qlc_83xx_rmw {int dummy; } ;
struct qlc_83xx_entry_hdr {int count; scalar_t__ delay; } ;
struct qlc_83xx_entry {int arg2; int arg1; } ;


 int qlcnic_83xx_rmw_crb_reg (struct qlcnic_adapter*,int ,int ,struct qlc_83xx_rmw*) ;
 int udelay (int ) ;

__attribute__((used)) static void qlcnic_83xx_read_modify_write(struct qlcnic_adapter *p_dev,
       struct qlc_83xx_entry_hdr *p_hdr)
{
 int i;
 struct qlc_83xx_entry *entry;
 struct qlc_83xx_rmw *rmw_hdr;

 rmw_hdr = (struct qlc_83xx_rmw *)((char *)p_hdr +
       sizeof(struct qlc_83xx_entry_hdr));

 entry = (struct qlc_83xx_entry *)((char *)rmw_hdr +
       sizeof(struct qlc_83xx_rmw));

 for (i = 0; i < p_hdr->count; i++, entry++) {
  qlcnic_83xx_rmw_crb_reg(p_dev, entry->arg1,
     entry->arg2, rmw_hdr);
  if (p_hdr->delay)
   udelay((u32)(p_hdr->delay));
 }
}
