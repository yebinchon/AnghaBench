
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_PRSSK (int) ;
 int ENETC_RSSHASH_KEY_SIZE ;
 int enetc_port_wr (struct enetc_hw*,int ,int ) ;

void enetc_set_rss_key(struct enetc_hw *hw, const u8 *bytes)
{
 int i;

 for (i = 0; i < ENETC_RSSHASH_KEY_SIZE / 4; i++)
  enetc_port_wr(hw, ENETC_PRSSK(i), ((u32 *)bytes)[i]);
}
