
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int flags; } ;


 int B44_FLAG_RX_PAUSE ;
 int B44_FLAG_TX_PAUSE ;
 int B44_MAC_FLOW ;
 int B44_RXCONFIG ;
 int MAC_FLOW_PAUSE_ENAB ;
 int MAC_FLOW_RX_HI_WATER ;
 int RXCONFIG_FLOW ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;

__attribute__((used)) static void __b44_set_flow_ctrl(struct b44 *bp, u32 pause_flags)
{
 u32 val;

 bp->flags &= ~(B44_FLAG_TX_PAUSE | B44_FLAG_RX_PAUSE);
 bp->flags |= pause_flags;

 val = br32(bp, B44_RXCONFIG);
 if (pause_flags & B44_FLAG_RX_PAUSE)
  val |= RXCONFIG_FLOW;
 else
  val &= ~RXCONFIG_FLOW;
 bw32(bp, B44_RXCONFIG, val);

 val = br32(bp, B44_MAC_FLOW);
 if (pause_flags & B44_FLAG_TX_PAUSE)
  val |= (MAC_FLOW_PAUSE_ENAB |
   (0xc0 & MAC_FLOW_RX_HI_WATER));
 else
  val &= ~MAC_FLOW_PAUSE_ENAB;
 bw32(bp, B44_MAC_FLOW, val);
}
