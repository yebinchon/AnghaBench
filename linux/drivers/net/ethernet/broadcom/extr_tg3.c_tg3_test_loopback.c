
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tg3 {int dma_limit; int phy_flags; int dev; } ;


 scalar_t__ ASIC_REV_5780 ;
 int CPMU_PRESENT ;
 int EIO ;
 int ENABLE_RSS ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int JUMBO_RING_ENABLE ;
 int MAC_RSS_INDIR_TBL_0 ;
 int MAC_TX_STATUS ;
 size_t TG3_EXT_LOOPB_TEST ;
 int TG3_JMB_LOOPBACK_FAILED ;
 int TG3_LOOPBACK_FAILED ;
 size_t TG3_MAC_LOOPB_TEST ;
 int TG3_PHYFLG_EEE_CAP ;
 int TG3_PHYFLG_ENABLE_APD ;
 int TG3_PHYFLG_PHY_SERDES ;
 size_t TG3_PHY_LOOPB_TEST ;
 int TG3_RSS_INDIR_TBL_SIZE ;
 int TG3_STD_LOOPBACK_FAILED ;
 int TG3_TSO_LOOPBACK_FAILED ;
 int TSO_CAPABLE ;
 int TX_STATUS_LINK_UP ;
 int USE_PHYLIB ;
 int mdelay (int) ;
 int netif_running (int ) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_mac_loopback (struct tg3*,int) ;
 int tg3_phy_lpbk_set (struct tg3*,int ,int) ;
 int tg3_phy_toggle_apd (struct tg3*,int) ;
 int tg3_reset_hw (struct tg3*,int) ;
 scalar_t__ tg3_run_loopback (struct tg3*,int,int) ;
 int tr32 (int ) ;
 int tw32 (int,int) ;

__attribute__((used)) static int tg3_test_loopback(struct tg3 *tp, u64 *data, bool do_extlpbk)
{
 int err = -EIO;
 u32 eee_cap;
 u32 jmb_pkt_sz = 9000;

 if (tp->dma_limit)
  jmb_pkt_sz = tp->dma_limit - ETH_HLEN;

 eee_cap = tp->phy_flags & TG3_PHYFLG_EEE_CAP;
 tp->phy_flags &= ~TG3_PHYFLG_EEE_CAP;

 if (!netif_running(tp->dev)) {
  data[TG3_MAC_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  data[TG3_PHY_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  if (do_extlpbk)
   data[TG3_EXT_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  goto done;
 }

 err = tg3_reset_hw(tp, 1);
 if (err) {
  data[TG3_MAC_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  data[TG3_PHY_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  if (do_extlpbk)
   data[TG3_EXT_LOOPB_TEST] = TG3_LOOPBACK_FAILED;
  goto done;
 }

 if (tg3_flag(tp, ENABLE_RSS)) {
  int i;


  for (i = MAC_RSS_INDIR_TBL_0;
       i < MAC_RSS_INDIR_TBL_0 + TG3_RSS_INDIR_TBL_SIZE; i += 4)
   tw32(i, 0x0);
 }






 if (tg3_asic_rev(tp) != ASIC_REV_5780 &&
     !tg3_flag(tp, CPMU_PRESENT)) {
  tg3_mac_loopback(tp, 1);

  if (tg3_run_loopback(tp, ETH_FRAME_LEN, 0))
   data[TG3_MAC_LOOPB_TEST] |= TG3_STD_LOOPBACK_FAILED;

  if (tg3_flag(tp, JUMBO_RING_ENABLE) &&
      tg3_run_loopback(tp, jmb_pkt_sz + ETH_HLEN, 0))
   data[TG3_MAC_LOOPB_TEST] |= TG3_JMB_LOOPBACK_FAILED;

  tg3_mac_loopback(tp, 0);
 }

 if (!(tp->phy_flags & TG3_PHYFLG_PHY_SERDES) &&
     !tg3_flag(tp, USE_PHYLIB)) {
  int i;

  tg3_phy_lpbk_set(tp, 0, 0);


  for (i = 0; i < 100; i++) {
   if (tr32(MAC_TX_STATUS) & TX_STATUS_LINK_UP)
    break;
   mdelay(1);
  }

  if (tg3_run_loopback(tp, ETH_FRAME_LEN, 0))
   data[TG3_PHY_LOOPB_TEST] |= TG3_STD_LOOPBACK_FAILED;
  if (tg3_flag(tp, TSO_CAPABLE) &&
      tg3_run_loopback(tp, ETH_FRAME_LEN, 1))
   data[TG3_PHY_LOOPB_TEST] |= TG3_TSO_LOOPBACK_FAILED;
  if (tg3_flag(tp, JUMBO_RING_ENABLE) &&
      tg3_run_loopback(tp, jmb_pkt_sz + ETH_HLEN, 0))
   data[TG3_PHY_LOOPB_TEST] |= TG3_JMB_LOOPBACK_FAILED;

  if (do_extlpbk) {
   tg3_phy_lpbk_set(tp, 0, 1);





   mdelay(40);

   if (tg3_run_loopback(tp, ETH_FRAME_LEN, 0))
    data[TG3_EXT_LOOPB_TEST] |=
       TG3_STD_LOOPBACK_FAILED;
   if (tg3_flag(tp, TSO_CAPABLE) &&
       tg3_run_loopback(tp, ETH_FRAME_LEN, 1))
    data[TG3_EXT_LOOPB_TEST] |=
       TG3_TSO_LOOPBACK_FAILED;
   if (tg3_flag(tp, JUMBO_RING_ENABLE) &&
       tg3_run_loopback(tp, jmb_pkt_sz + ETH_HLEN, 0))
    data[TG3_EXT_LOOPB_TEST] |=
       TG3_JMB_LOOPBACK_FAILED;
  }


  if (tp->phy_flags & TG3_PHYFLG_ENABLE_APD)
   tg3_phy_toggle_apd(tp, 1);
 }

 err = (data[TG3_MAC_LOOPB_TEST] | data[TG3_PHY_LOOPB_TEST] |
        data[TG3_EXT_LOOPB_TEST]) ? -EIO : 0;

done:
 tp->phy_flags |= eee_cap;

 return err;
}
