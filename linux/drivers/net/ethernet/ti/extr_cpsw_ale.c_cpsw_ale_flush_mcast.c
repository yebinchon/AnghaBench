
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_ale {int port_mask_bits; } ;


 int ALE_TYPE_FREE ;
 int cpsw_ale_get_port_mask (int *,int ) ;
 int cpsw_ale_set_entry_type (int *,int ) ;
 int cpsw_ale_set_port_mask (int *,int,int ) ;

__attribute__((used)) static void cpsw_ale_flush_mcast(struct cpsw_ale *ale, u32 *ale_entry,
     int port_mask)
{
 int mask;

 mask = cpsw_ale_get_port_mask(ale_entry,
          ale->port_mask_bits);
 if ((mask & port_mask) == 0)
  return;
 mask &= ~port_mask;


 if (mask)
  cpsw_ale_set_port_mask(ale_entry, mask,
           ale->port_mask_bits);
 else
  cpsw_ale_set_entry_type(ale_entry, ALE_TYPE_FREE);
}
