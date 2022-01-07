
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct TYPE_3__ {int xmac_offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 unsigned long HZ ;
 int XM_RXO_OK_HI ;
 int XM_RXO_OK_LO ;
 int XM_SC_SNP_RXC ;
 int XM_SC_SNP_TXC ;
 int XM_STAT_CMD ;
 int XM_TXO_OK_HI ;
 int XM_TXO_OK_LO ;
 unsigned long jiffies ;
 TYPE_1__* skge_stats ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_read32 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void genesis_get_stats(struct skge_port *skge, u64 *data)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 int i;
 unsigned long timeout = jiffies + HZ;

 xm_write16(hw, port,
   XM_STAT_CMD, XM_SC_SNP_TXC | XM_SC_SNP_RXC);


 while (xm_read16(hw, port, XM_STAT_CMD)
        & (XM_SC_SNP_TXC | XM_SC_SNP_RXC)) {
  if (time_after(jiffies, timeout))
   break;
  udelay(10);
 }


 data[0] = (u64) xm_read32(hw, port, XM_TXO_OK_HI) << 32
  | xm_read32(hw, port, XM_TXO_OK_LO);
 data[1] = (u64) xm_read32(hw, port, XM_RXO_OK_HI) << 32
  | xm_read32(hw, port, XM_RXO_OK_LO);

 for (i = 2; i < ARRAY_SIZE(skge_stats); i++)
  data[i] = xm_read32(hw, port, skge_stats[i].xmac_offset);
}
