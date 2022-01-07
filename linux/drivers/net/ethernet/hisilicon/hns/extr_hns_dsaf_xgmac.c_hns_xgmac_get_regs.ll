; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@XGMAC_INT_STATUS_REG = common dso_local global i32 0, align 4
@XGMAC_INT_ENABLE_REG = common dso_local global i32 0, align 4
@XGMAC_INT_SET_REG = common dso_local global i32 0, align 4
@XGMAC_IERR_U_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_OVF_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_OVF_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_REG = common dso_local global i32 0, align 4
@XGMAC_CLK_ENABLE_REG = common dso_local global i32 0, align 4
@XGMAC_RESET_REG = common dso_local global i32 0, align 4
@XGMAC_LINK_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_LINK_STATUS_REG = common dso_local global i32 0, align 4
@XGMAC_SPARE_REG = common dso_local global i32 0, align 4
@XGMAC_SPARE_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_ENABLE_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_IPG_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MSG_CRC_EN_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MSG_IMG_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MSG_FC_CFG_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MSG_TC_CFG_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAD_SIZE_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MIN_PKT_SIZE_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MAX_PKT_SIZE_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_CTRL_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_TIME_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_GAP_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_LOCAL_MAC_H_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_LOCAL_MAC_L_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_PEER_MAC_H_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_PEER_MAC_L_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_PFC_PRI_EN_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_1588_CTRL_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_1588_TX_PORT_DLY_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_1588_RX_PORT_DLY_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_1588_ASYM_DLY_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_1588_ADJUST_CFG_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_Y1731_ETH_TYPE_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_MIB_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_WAN_RATE_ADJUST_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_TX_ERR_MARK_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_TX_LF_RF_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_RX_LF_RF_STATUS_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_TX_RUNT_PKT_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_RX_RUNT_PKT_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_RX_PREAM_ERR_PKT_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_TX_LF_RF_TERM_PKT_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_TX_SN_MISMATCH_PKT_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_RX_ERR_MSG_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_RX_ERR_EFD_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_ERR_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_MAC_DBG_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_SYNC_THD_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_STATUS1_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_STATUS1_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_STATUS2_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_SEEDA_0_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_SEEDA_1_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_SEEDB_0_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_SEEDB_1_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_TEST_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_BASER_TEST_ERR_CNT_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_DBG_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_DBG_INFO1_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_DBG_INFO2_REG = common dso_local global i32 0, align 4
@XGMAC_PCS_DBG_INFO3_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_ENABLE_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_SIGNAL_STATUS_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_DBG_INFO_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_FEC_ABILITY_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_FEC_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_PMA_FEC_CORR_BLOCK_CNT__REG = common dso_local global i32 0, align 4
@XGMAC_PMA_FEC_UNCORR_BLOCK_CNT__REG = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_FRAGMENT = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_UNDERSIZE = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_UNDERMIN = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_64OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_65TO127OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_128TO255OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_256TO511OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_512TO1023OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1024TO1518OCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1519TOMAXOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_1519TOMAXOCTETSOK = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_OVERSIZE = common dso_local global i32 0, align 4
@XGMAC_TX_PKTS_JABBER = common dso_local global i32 0, align 4
@XGMAC_TX_GOODPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_GOODOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_TOTAL_PKTS = common dso_local global i32 0, align 4
@XGMAC_TX_TOTALOCTETS = common dso_local global i32 0, align 4
@XGMAC_TX_UNICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_MULTICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_BROADCASTPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI0PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI1PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI2PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI3PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI4PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI5PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI6PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_PRI7PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_MACCTRLPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_1731PKTS = common dso_local global i32 0, align 4
@XGMAC_TX_1588PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FROMAPPGOODPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FROMAPPBADPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_ERRALLPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_FRAGMENT = common dso_local global i32 0, align 4
@XGMAC_RX_PKTSUNDERSIZE = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_UNDERMIN = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_64OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_65TO127OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_128TO255OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_256TO511OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_512TO1023OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1024TO1518OCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1519TOMAXOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_1519TOMAXOCTETSOK = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_OVERSIZE = common dso_local global i32 0, align 4
@XGMAC_RX_PKTS_JABBER = common dso_local global i32 0, align 4
@XGMAC_RX_GOODPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_GOODOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_TOTAL_PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_TOTALOCTETS = common dso_local global i32 0, align 4
@XGMAC_RX_UNICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_MULTICASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_BROADCASTPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI0PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI1PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI2PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI3PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI4PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI5PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI6PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_PRI7PAUSEPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_MACCTRLPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_SENDAPPGOODPKTS = common dso_local global i32 0, align 4
@XGMAC_TX_SENDAPPBADPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_1731PKTS = common dso_local global i32 0, align 4
@XGMAC_RX_SYMBOLERRPKTS = common dso_local global i32 0, align 4
@XGMAC_RX_FCSERRPKTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hns_xgmac_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_get_regs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac_driver*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mac_driver*
  store %struct.mac_driver* %10, %struct.mac_driver** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %14 = load i32, i32* @XGMAC_INT_STATUS_REG, align 4
  %15 = call i32 @dsaf_read_dev(%struct.mac_driver* %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %19 = load i32, i32* @XGMAC_INT_ENABLE_REG, align 4
  %20 = call i32 @dsaf_read_dev(%struct.mac_driver* %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %24 = load i32, i32* @XGMAC_INT_SET_REG, align 4
  %25 = call i32 @dsaf_read_dev(%struct.mac_driver* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %29 = load i32, i32* @XGMAC_IERR_U_INFO_REG, align 4
  %30 = call i32 @dsaf_read_dev(%struct.mac_driver* %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %34 = load i32, i32* @XGMAC_OVF_INFO_REG, align 4
  %35 = call i32 @dsaf_read_dev(%struct.mac_driver* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %39 = load i32, i32* @XGMAC_OVF_CNT_REG, align 4
  %40 = call i32 @dsaf_read_dev(%struct.mac_driver* %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %44 = load i32, i32* @XGMAC_PORT_MODE_REG, align 4
  %45 = call i32 @dsaf_read_dev(%struct.mac_driver* %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %49 = load i32, i32* @XGMAC_CLK_ENABLE_REG, align 4
  %50 = call i32 @dsaf_read_dev(%struct.mac_driver* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %54 = load i32, i32* @XGMAC_RESET_REG, align 4
  %55 = call i32 @dsaf_read_dev(%struct.mac_driver* %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %59 = load i32, i32* @XGMAC_LINK_CONTROL_REG, align 4
  %60 = call i32 @dsaf_read_dev(%struct.mac_driver* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %64 = load i32, i32* @XGMAC_LINK_STATUS_REG, align 4
  %65 = call i32 @dsaf_read_dev(%struct.mac_driver* %63, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %69 = load i32, i32* @XGMAC_SPARE_REG, align 4
  %70 = call i32 @dsaf_read_dev(%struct.mac_driver* %68, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %74 = load i32, i32* @XGMAC_SPARE_CNT_REG, align 4
  %75 = call i32 @dsaf_read_dev(%struct.mac_driver* %73, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %79 = load i32, i32* @XGMAC_MAC_ENABLE_REG, align 4
  %80 = call i32 @dsaf_read_dev(%struct.mac_driver* %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 13
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %84 = load i32, i32* @XGMAC_MAC_CONTROL_REG, align 4
  %85 = call i32 @dsaf_read_dev(%struct.mac_driver* %83, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 14
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %89 = load i32, i32* @XGMAC_MAC_IPG_REG, align 4
  %90 = call i32 @dsaf_read_dev(%struct.mac_driver* %88, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 15
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %94 = load i32, i32* @XGMAC_MAC_MSG_CRC_EN_REG, align 4
  %95 = call i32 @dsaf_read_dev(%struct.mac_driver* %93, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 16
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %99 = load i32, i32* @XGMAC_MAC_MSG_IMG_REG, align 4
  %100 = call i32 @dsaf_read_dev(%struct.mac_driver* %98, i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 17
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %104 = load i32, i32* @XGMAC_MAC_MSG_FC_CFG_REG, align 4
  %105 = call i32 @dsaf_read_dev(%struct.mac_driver* %103, i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 18
  store i32 %105, i32* %107, align 4
  %108 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %109 = load i32, i32* @XGMAC_MAC_MSG_TC_CFG_REG, align 4
  %110 = call i32 @dsaf_read_dev(%struct.mac_driver* %108, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 19
  store i32 %110, i32* %112, align 4
  %113 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %114 = load i32, i32* @XGMAC_MAC_PAD_SIZE_REG, align 4
  %115 = call i32 @dsaf_read_dev(%struct.mac_driver* %113, i32 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 20
  store i32 %115, i32* %117, align 4
  %118 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %119 = load i32, i32* @XGMAC_MAC_MIN_PKT_SIZE_REG, align 4
  %120 = call i32 @dsaf_read_dev(%struct.mac_driver* %118, i32 %119)
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 21
  store i32 %120, i32* %122, align 4
  %123 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %124 = load i32, i32* @XGMAC_MAC_MAX_PKT_SIZE_REG, align 4
  %125 = call i32 @dsaf_read_dev(%struct.mac_driver* %123, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 22
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %129 = load i32, i32* @XGMAC_MAC_PAUSE_CTRL_REG, align 4
  %130 = call i32 @dsaf_read_dev(%struct.mac_driver* %128, i32 %129)
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 23
  store i32 %130, i32* %132, align 4
  %133 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %134 = load i32, i32* @XGMAC_MAC_PAUSE_TIME_REG, align 4
  %135 = call i32 @dsaf_read_dev(%struct.mac_driver* %133, i32 %134)
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 24
  store i32 %135, i32* %137, align 4
  %138 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %139 = load i32, i32* @XGMAC_MAC_PAUSE_GAP_REG, align 4
  %140 = call i32 @dsaf_read_dev(%struct.mac_driver* %138, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 25
  store i32 %140, i32* %142, align 4
  %143 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %144 = load i32, i32* @XGMAC_MAC_PAUSE_LOCAL_MAC_H_REG, align 4
  %145 = call i32 @dsaf_read_dev(%struct.mac_driver* %143, i32 %144)
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 26
  store i32 %145, i32* %147, align 4
  %148 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %149 = load i32, i32* @XGMAC_MAC_PAUSE_LOCAL_MAC_L_REG, align 4
  %150 = call i32 @dsaf_read_dev(%struct.mac_driver* %148, i32 %149)
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 27
  store i32 %150, i32* %152, align 4
  %153 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %154 = load i32, i32* @XGMAC_MAC_PAUSE_PEER_MAC_H_REG, align 4
  %155 = call i32 @dsaf_read_dev(%struct.mac_driver* %153, i32 %154)
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 28
  store i32 %155, i32* %157, align 4
  %158 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %159 = load i32, i32* @XGMAC_MAC_PAUSE_PEER_MAC_L_REG, align 4
  %160 = call i32 @dsaf_read_dev(%struct.mac_driver* %158, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 29
  store i32 %160, i32* %162, align 4
  %163 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %164 = load i32, i32* @XGMAC_MAC_PFC_PRI_EN_REG, align 4
  %165 = call i32 @dsaf_read_dev(%struct.mac_driver* %163, i32 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 30
  store i32 %165, i32* %167, align 4
  %168 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %169 = load i32, i32* @XGMAC_MAC_1588_CTRL_REG, align 4
  %170 = call i32 @dsaf_read_dev(%struct.mac_driver* %168, i32 %169)
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 31
  store i32 %170, i32* %172, align 4
  %173 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %174 = load i32, i32* @XGMAC_MAC_1588_TX_PORT_DLY_REG, align 4
  %175 = call i32 @dsaf_read_dev(%struct.mac_driver* %173, i32 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 32
  store i32 %175, i32* %177, align 4
  %178 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %179 = load i32, i32* @XGMAC_MAC_1588_RX_PORT_DLY_REG, align 4
  %180 = call i32 @dsaf_read_dev(%struct.mac_driver* %178, i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 33
  store i32 %180, i32* %182, align 4
  %183 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %184 = load i32, i32* @XGMAC_MAC_1588_ASYM_DLY_REG, align 4
  %185 = call i32 @dsaf_read_dev(%struct.mac_driver* %183, i32 %184)
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 34
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %189 = load i32, i32* @XGMAC_MAC_1588_ADJUST_CFG_REG, align 4
  %190 = call i32 @dsaf_read_dev(%struct.mac_driver* %188, i32 %189)
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 35
  store i32 %190, i32* %192, align 4
  %193 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %194 = load i32, i32* @XGMAC_MAC_Y1731_ETH_TYPE_REG, align 4
  %195 = call i32 @dsaf_read_dev(%struct.mac_driver* %193, i32 %194)
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 36
  store i32 %195, i32* %197, align 4
  %198 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %199 = load i32, i32* @XGMAC_MAC_MIB_CONTROL_REG, align 4
  %200 = call i32 @dsaf_read_dev(%struct.mac_driver* %198, i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 37
  store i32 %200, i32* %202, align 4
  %203 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %204 = load i32, i32* @XGMAC_MAC_WAN_RATE_ADJUST_REG, align 4
  %205 = call i32 @dsaf_read_dev(%struct.mac_driver* %203, i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 38
  store i32 %205, i32* %207, align 4
  %208 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %209 = load i32, i32* @XGMAC_MAC_TX_ERR_MARK_REG, align 4
  %210 = call i32 @dsaf_read_dev(%struct.mac_driver* %208, i32 %209)
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 39
  store i32 %210, i32* %212, align 4
  %213 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %214 = load i32, i32* @XGMAC_MAC_TX_LF_RF_CONTROL_REG, align 4
  %215 = call i32 @dsaf_read_dev(%struct.mac_driver* %213, i32 %214)
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 40
  store i32 %215, i32* %217, align 4
  %218 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %219 = load i32, i32* @XGMAC_MAC_RX_LF_RF_STATUS_REG, align 4
  %220 = call i32 @dsaf_read_dev(%struct.mac_driver* %218, i32 %219)
  %221 = load i32*, i32** %7, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 41
  store i32 %220, i32* %222, align 4
  %223 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %224 = load i32, i32* @XGMAC_MAC_TX_RUNT_PKT_CNT_REG, align 4
  %225 = call i32 @dsaf_read_dev(%struct.mac_driver* %223, i32 %224)
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 42
  store i32 %225, i32* %227, align 4
  %228 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %229 = load i32, i32* @XGMAC_MAC_RX_RUNT_PKT_CNT_REG, align 4
  %230 = call i32 @dsaf_read_dev(%struct.mac_driver* %228, i32 %229)
  %231 = load i32*, i32** %7, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 43
  store i32 %230, i32* %232, align 4
  %233 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %234 = load i32, i32* @XGMAC_MAC_RX_PREAM_ERR_PKT_CNT_REG, align 4
  %235 = call i32 @dsaf_read_dev(%struct.mac_driver* %233, i32 %234)
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 44
  store i32 %235, i32* %237, align 4
  %238 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %239 = load i32, i32* @XGMAC_MAC_TX_LF_RF_TERM_PKT_CNT_REG, align 4
  %240 = call i32 @dsaf_read_dev(%struct.mac_driver* %238, i32 %239)
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 45
  store i32 %240, i32* %242, align 4
  %243 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %244 = load i32, i32* @XGMAC_MAC_TX_SN_MISMATCH_PKT_CNT_REG, align 4
  %245 = call i32 @dsaf_read_dev(%struct.mac_driver* %243, i32 %244)
  %246 = load i32*, i32** %7, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 46
  store i32 %245, i32* %247, align 4
  %248 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %249 = load i32, i32* @XGMAC_MAC_RX_ERR_MSG_CNT_REG, align 4
  %250 = call i32 @dsaf_read_dev(%struct.mac_driver* %248, i32 %249)
  %251 = load i32*, i32** %7, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 47
  store i32 %250, i32* %252, align 4
  %253 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %254 = load i32, i32* @XGMAC_MAC_RX_ERR_EFD_CNT_REG, align 4
  %255 = call i32 @dsaf_read_dev(%struct.mac_driver* %253, i32 %254)
  %256 = load i32*, i32** %7, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 48
  store i32 %255, i32* %257, align 4
  %258 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %259 = load i32, i32* @XGMAC_MAC_ERR_INFO_REG, align 4
  %260 = call i32 @dsaf_read_dev(%struct.mac_driver* %258, i32 %259)
  %261 = load i32*, i32** %7, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 49
  store i32 %260, i32* %262, align 4
  %263 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %264 = load i32, i32* @XGMAC_MAC_DBG_INFO_REG, align 4
  %265 = call i32 @dsaf_read_dev(%struct.mac_driver* %263, i32 %264)
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 50
  store i32 %265, i32* %267, align 4
  %268 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %269 = load i32, i32* @XGMAC_PCS_BASER_SYNC_THD_REG, align 4
  %270 = call i32 @dsaf_read_dev(%struct.mac_driver* %268, i32 %269)
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 51
  store i32 %270, i32* %272, align 4
  %273 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %274 = load i32, i32* @XGMAC_PCS_STATUS1_REG, align 4
  %275 = call i32 @dsaf_read_dev(%struct.mac_driver* %273, i32 %274)
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 52
  store i32 %275, i32* %277, align 4
  %278 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %279 = load i32, i32* @XGMAC_PCS_BASER_STATUS1_REG, align 4
  %280 = call i32 @dsaf_read_dev(%struct.mac_driver* %278, i32 %279)
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 53
  store i32 %280, i32* %282, align 4
  %283 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %284 = load i32, i32* @XGMAC_PCS_BASER_STATUS2_REG, align 4
  %285 = call i32 @dsaf_read_dev(%struct.mac_driver* %283, i32 %284)
  %286 = load i32*, i32** %7, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 54
  store i32 %285, i32* %287, align 4
  %288 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %289 = load i32, i32* @XGMAC_PCS_BASER_SEEDA_0_REG, align 4
  %290 = call i32 @dsaf_read_dev(%struct.mac_driver* %288, i32 %289)
  %291 = load i32*, i32** %7, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 55
  store i32 %290, i32* %292, align 4
  %293 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %294 = load i32, i32* @XGMAC_PCS_BASER_SEEDA_1_REG, align 4
  %295 = call i32 @dsaf_read_dev(%struct.mac_driver* %293, i32 %294)
  %296 = load i32*, i32** %7, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 56
  store i32 %295, i32* %297, align 4
  %298 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %299 = load i32, i32* @XGMAC_PCS_BASER_SEEDB_0_REG, align 4
  %300 = call i32 @dsaf_read_dev(%struct.mac_driver* %298, i32 %299)
  %301 = load i32*, i32** %7, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 57
  store i32 %300, i32* %302, align 4
  %303 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %304 = load i32, i32* @XGMAC_PCS_BASER_SEEDB_1_REG, align 4
  %305 = call i32 @dsaf_read_dev(%struct.mac_driver* %303, i32 %304)
  %306 = load i32*, i32** %7, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 58
  store i32 %305, i32* %307, align 4
  %308 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %309 = load i32, i32* @XGMAC_PCS_BASER_TEST_CONTROL_REG, align 4
  %310 = call i32 @dsaf_read_dev(%struct.mac_driver* %308, i32 %309)
  %311 = load i32*, i32** %7, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 59
  store i32 %310, i32* %312, align 4
  %313 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %314 = load i32, i32* @XGMAC_PCS_BASER_TEST_ERR_CNT_REG, align 4
  %315 = call i32 @dsaf_read_dev(%struct.mac_driver* %313, i32 %314)
  %316 = load i32*, i32** %7, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 60
  store i32 %315, i32* %317, align 4
  %318 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %319 = load i32, i32* @XGMAC_PCS_DBG_INFO_REG, align 4
  %320 = call i32 @dsaf_read_dev(%struct.mac_driver* %318, i32 %319)
  %321 = load i32*, i32** %7, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 61
  store i32 %320, i32* %322, align 4
  %323 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %324 = load i32, i32* @XGMAC_PCS_DBG_INFO1_REG, align 4
  %325 = call i32 @dsaf_read_dev(%struct.mac_driver* %323, i32 %324)
  %326 = load i32*, i32** %7, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 62
  store i32 %325, i32* %327, align 4
  %328 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %329 = load i32, i32* @XGMAC_PCS_DBG_INFO2_REG, align 4
  %330 = call i32 @dsaf_read_dev(%struct.mac_driver* %328, i32 %329)
  %331 = load i32*, i32** %7, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 63
  store i32 %330, i32* %332, align 4
  %333 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %334 = load i32, i32* @XGMAC_PCS_DBG_INFO3_REG, align 4
  %335 = call i32 @dsaf_read_dev(%struct.mac_driver* %333, i32 %334)
  %336 = load i32*, i32** %7, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 64
  store i32 %335, i32* %337, align 4
  %338 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %339 = load i32, i32* @XGMAC_PMA_ENABLE_REG, align 4
  %340 = call i32 @dsaf_read_dev(%struct.mac_driver* %338, i32 %339)
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 65
  store i32 %340, i32* %342, align 4
  %343 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %344 = load i32, i32* @XGMAC_PMA_CONTROL_REG, align 4
  %345 = call i32 @dsaf_read_dev(%struct.mac_driver* %343, i32 %344)
  %346 = load i32*, i32** %7, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 66
  store i32 %345, i32* %347, align 4
  %348 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %349 = load i32, i32* @XGMAC_PMA_SIGNAL_STATUS_REG, align 4
  %350 = call i32 @dsaf_read_dev(%struct.mac_driver* %348, i32 %349)
  %351 = load i32*, i32** %7, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 67
  store i32 %350, i32* %352, align 4
  %353 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %354 = load i32, i32* @XGMAC_PMA_DBG_INFO_REG, align 4
  %355 = call i32 @dsaf_read_dev(%struct.mac_driver* %353, i32 %354)
  %356 = load i32*, i32** %7, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 68
  store i32 %355, i32* %357, align 4
  %358 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %359 = load i32, i32* @XGMAC_PMA_FEC_ABILITY_REG, align 4
  %360 = call i32 @dsaf_read_dev(%struct.mac_driver* %358, i32 %359)
  %361 = load i32*, i32** %7, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 69
  store i32 %360, i32* %362, align 4
  %363 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %364 = load i32, i32* @XGMAC_PMA_FEC_CONTROL_REG, align 4
  %365 = call i32 @dsaf_read_dev(%struct.mac_driver* %363, i32 %364)
  %366 = load i32*, i32** %7, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 70
  store i32 %365, i32* %367, align 4
  %368 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %369 = load i32, i32* @XGMAC_PMA_FEC_CORR_BLOCK_CNT__REG, align 4
  %370 = call i32 @dsaf_read_dev(%struct.mac_driver* %368, i32 %369)
  %371 = load i32*, i32** %7, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 71
  store i32 %370, i32* %372, align 4
  %373 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %374 = load i32, i32* @XGMAC_PMA_FEC_UNCORR_BLOCK_CNT__REG, align 4
  %375 = call i32 @dsaf_read_dev(%struct.mac_driver* %373, i32 %374)
  %376 = load i32*, i32** %7, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 72
  store i32 %375, i32* %377, align 4
  %378 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %379 = load i32, i32* @XGMAC_TX_PKTS_FRAGMENT, align 4
  %380 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %378, i32 %379)
  store i32 %380, i32* %8, align 4
  br label %381

381:                                              ; preds = %2
  %382 = load i32, i32* %8, align 4
  %383 = load i32*, i32** %7, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 73
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %8, align 4
  %386 = ashr i32 %385, 32
  %387 = load i32*, i32** %7, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 73
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  store i32 %386, i32* %389, align 4
  br label %390

390:                                              ; preds = %381
  %391 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %392 = load i32, i32* @XGMAC_TX_PKTS_UNDERSIZE, align 4
  %393 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %391, i32 %392)
  store i32 %393, i32* %8, align 4
  br label %394

394:                                              ; preds = %390
  %395 = load i32, i32* %8, align 4
  %396 = load i32*, i32** %7, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 75
  store i32 %395, i32* %397, align 4
  %398 = load i32, i32* %8, align 4
  %399 = ashr i32 %398, 32
  %400 = load i32*, i32** %7, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 75
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  store i32 %399, i32* %402, align 4
  br label %403

403:                                              ; preds = %394
  %404 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %405 = load i32, i32* @XGMAC_TX_PKTS_UNDERMIN, align 4
  %406 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %404, i32 %405)
  store i32 %406, i32* %8, align 4
  br label %407

407:                                              ; preds = %403
  %408 = load i32, i32* %8, align 4
  %409 = load i32*, i32** %7, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 77
  store i32 %408, i32* %410, align 4
  %411 = load i32, i32* %8, align 4
  %412 = ashr i32 %411, 32
  %413 = load i32*, i32** %7, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 77
  %415 = getelementptr inbounds i32, i32* %414, i64 1
  store i32 %412, i32* %415, align 4
  br label %416

416:                                              ; preds = %407
  %417 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %418 = load i32, i32* @XGMAC_TX_PKTS_64OCTETS, align 4
  %419 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %417, i32 %418)
  store i32 %419, i32* %8, align 4
  br label %420

420:                                              ; preds = %416
  %421 = load i32, i32* %8, align 4
  %422 = load i32*, i32** %7, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 79
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* %8, align 4
  %425 = ashr i32 %424, 32
  %426 = load i32*, i32** %7, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 79
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  store i32 %425, i32* %428, align 4
  br label %429

429:                                              ; preds = %420
  %430 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %431 = load i32, i32* @XGMAC_TX_PKTS_65TO127OCTETS, align 4
  %432 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %430, i32 %431)
  store i32 %432, i32* %8, align 4
  br label %433

433:                                              ; preds = %429
  %434 = load i32, i32* %8, align 4
  %435 = load i32*, i32** %7, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 81
  store i32 %434, i32* %436, align 4
  %437 = load i32, i32* %8, align 4
  %438 = ashr i32 %437, 32
  %439 = load i32*, i32** %7, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 81
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  store i32 %438, i32* %441, align 4
  br label %442

442:                                              ; preds = %433
  %443 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %444 = load i32, i32* @XGMAC_TX_PKTS_128TO255OCTETS, align 4
  %445 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %443, i32 %444)
  store i32 %445, i32* %8, align 4
  br label %446

446:                                              ; preds = %442
  %447 = load i32, i32* %8, align 4
  %448 = load i32*, i32** %7, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 83
  store i32 %447, i32* %449, align 4
  %450 = load i32, i32* %8, align 4
  %451 = ashr i32 %450, 32
  %452 = load i32*, i32** %7, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 83
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  store i32 %451, i32* %454, align 4
  br label %455

455:                                              ; preds = %446
  %456 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %457 = load i32, i32* @XGMAC_TX_PKTS_256TO511OCTETS, align 4
  %458 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %456, i32 %457)
  store i32 %458, i32* %8, align 4
  br label %459

459:                                              ; preds = %455
  %460 = load i32, i32* %8, align 4
  %461 = load i32*, i32** %7, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 85
  store i32 %460, i32* %462, align 4
  %463 = load i32, i32* %8, align 4
  %464 = ashr i32 %463, 32
  %465 = load i32*, i32** %7, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 85
  %467 = getelementptr inbounds i32, i32* %466, i64 1
  store i32 %464, i32* %467, align 4
  br label %468

468:                                              ; preds = %459
  %469 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %470 = load i32, i32* @XGMAC_TX_PKTS_512TO1023OCTETS, align 4
  %471 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %469, i32 %470)
  store i32 %471, i32* %8, align 4
  br label %472

472:                                              ; preds = %468
  %473 = load i32, i32* %8, align 4
  %474 = load i32*, i32** %7, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 87
  store i32 %473, i32* %475, align 4
  %476 = load i32, i32* %8, align 4
  %477 = ashr i32 %476, 32
  %478 = load i32*, i32** %7, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 87
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  store i32 %477, i32* %480, align 4
  br label %481

481:                                              ; preds = %472
  %482 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %483 = load i32, i32* @XGMAC_TX_PKTS_1024TO1518OCTETS, align 4
  %484 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %482, i32 %483)
  store i32 %484, i32* %8, align 4
  br label %485

485:                                              ; preds = %481
  %486 = load i32, i32* %8, align 4
  %487 = load i32*, i32** %7, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 89
  store i32 %486, i32* %488, align 4
  %489 = load i32, i32* %8, align 4
  %490 = ashr i32 %489, 32
  %491 = load i32*, i32** %7, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 89
  %493 = getelementptr inbounds i32, i32* %492, i64 1
  store i32 %490, i32* %493, align 4
  br label %494

494:                                              ; preds = %485
  %495 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %496 = load i32, i32* @XGMAC_TX_PKTS_1519TOMAXOCTETS, align 4
  %497 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %495, i32 %496)
  store i32 %497, i32* %8, align 4
  br label %498

498:                                              ; preds = %494
  %499 = load i32, i32* %8, align 4
  %500 = load i32*, i32** %7, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 91
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %8, align 4
  %503 = ashr i32 %502, 32
  %504 = load i32*, i32** %7, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 91
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  store i32 %503, i32* %506, align 4
  br label %507

507:                                              ; preds = %498
  %508 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %509 = load i32, i32* @XGMAC_TX_PKTS_1519TOMAXOCTETSOK, align 4
  %510 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %508, i32 %509)
  store i32 %510, i32* %8, align 4
  br label %511

511:                                              ; preds = %507
  %512 = load i32, i32* %8, align 4
  %513 = load i32*, i32** %7, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 93
  store i32 %512, i32* %514, align 4
  %515 = load i32, i32* %8, align 4
  %516 = ashr i32 %515, 32
  %517 = load i32*, i32** %7, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 93
  %519 = getelementptr inbounds i32, i32* %518, i64 1
  store i32 %516, i32* %519, align 4
  br label %520

520:                                              ; preds = %511
  %521 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %522 = load i32, i32* @XGMAC_TX_PKTS_OVERSIZE, align 4
  %523 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %521, i32 %522)
  store i32 %523, i32* %8, align 4
  br label %524

524:                                              ; preds = %520
  %525 = load i32, i32* %8, align 4
  %526 = load i32*, i32** %7, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 95
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %8, align 4
  %529 = ashr i32 %528, 32
  %530 = load i32*, i32** %7, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 95
  %532 = getelementptr inbounds i32, i32* %531, i64 1
  store i32 %529, i32* %532, align 4
  br label %533

533:                                              ; preds = %524
  %534 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %535 = load i32, i32* @XGMAC_TX_PKTS_JABBER, align 4
  %536 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %534, i32 %535)
  store i32 %536, i32* %8, align 4
  br label %537

537:                                              ; preds = %533
  %538 = load i32, i32* %8, align 4
  %539 = load i32*, i32** %7, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 97
  store i32 %538, i32* %540, align 4
  %541 = load i32, i32* %8, align 4
  %542 = ashr i32 %541, 32
  %543 = load i32*, i32** %7, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 97
  %545 = getelementptr inbounds i32, i32* %544, i64 1
  store i32 %542, i32* %545, align 4
  br label %546

546:                                              ; preds = %537
  %547 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %548 = load i32, i32* @XGMAC_TX_GOODPKTS, align 4
  %549 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %547, i32 %548)
  store i32 %549, i32* %8, align 4
  br label %550

550:                                              ; preds = %546
  %551 = load i32, i32* %8, align 4
  %552 = load i32*, i32** %7, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 99
  store i32 %551, i32* %553, align 4
  %554 = load i32, i32* %8, align 4
  %555 = ashr i32 %554, 32
  %556 = load i32*, i32** %7, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 99
  %558 = getelementptr inbounds i32, i32* %557, i64 1
  store i32 %555, i32* %558, align 4
  br label %559

559:                                              ; preds = %550
  %560 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %561 = load i32, i32* @XGMAC_TX_GOODOCTETS, align 4
  %562 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %560, i32 %561)
  store i32 %562, i32* %8, align 4
  br label %563

563:                                              ; preds = %559
  %564 = load i32, i32* %8, align 4
  %565 = load i32*, i32** %7, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 101
  store i32 %564, i32* %566, align 4
  %567 = load i32, i32* %8, align 4
  %568 = ashr i32 %567, 32
  %569 = load i32*, i32** %7, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 101
  %571 = getelementptr inbounds i32, i32* %570, i64 1
  store i32 %568, i32* %571, align 4
  br label %572

572:                                              ; preds = %563
  %573 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %574 = load i32, i32* @XGMAC_TX_TOTAL_PKTS, align 4
  %575 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %573, i32 %574)
  store i32 %575, i32* %8, align 4
  br label %576

576:                                              ; preds = %572
  %577 = load i32, i32* %8, align 4
  %578 = load i32*, i32** %7, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 103
  store i32 %577, i32* %579, align 4
  %580 = load i32, i32* %8, align 4
  %581 = ashr i32 %580, 32
  %582 = load i32*, i32** %7, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 103
  %584 = getelementptr inbounds i32, i32* %583, i64 1
  store i32 %581, i32* %584, align 4
  br label %585

585:                                              ; preds = %576
  %586 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %587 = load i32, i32* @XGMAC_TX_TOTALOCTETS, align 4
  %588 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %586, i32 %587)
  store i32 %588, i32* %8, align 4
  br label %589

589:                                              ; preds = %585
  %590 = load i32, i32* %8, align 4
  %591 = load i32*, i32** %7, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 105
  store i32 %590, i32* %592, align 4
  %593 = load i32, i32* %8, align 4
  %594 = ashr i32 %593, 32
  %595 = load i32*, i32** %7, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 105
  %597 = getelementptr inbounds i32, i32* %596, i64 1
  store i32 %594, i32* %597, align 4
  br label %598

598:                                              ; preds = %589
  %599 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %600 = load i32, i32* @XGMAC_TX_UNICASTPKTS, align 4
  %601 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %599, i32 %600)
  store i32 %601, i32* %8, align 4
  br label %602

602:                                              ; preds = %598
  %603 = load i32, i32* %8, align 4
  %604 = load i32*, i32** %7, align 8
  %605 = getelementptr inbounds i32, i32* %604, i64 107
  store i32 %603, i32* %605, align 4
  %606 = load i32, i32* %8, align 4
  %607 = ashr i32 %606, 32
  %608 = load i32*, i32** %7, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 107
  %610 = getelementptr inbounds i32, i32* %609, i64 1
  store i32 %607, i32* %610, align 4
  br label %611

611:                                              ; preds = %602
  %612 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %613 = load i32, i32* @XGMAC_TX_MULTICASTPKTS, align 4
  %614 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %612, i32 %613)
  store i32 %614, i32* %8, align 4
  br label %615

615:                                              ; preds = %611
  %616 = load i32, i32* %8, align 4
  %617 = load i32*, i32** %7, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 109
  store i32 %616, i32* %618, align 4
  %619 = load i32, i32* %8, align 4
  %620 = ashr i32 %619, 32
  %621 = load i32*, i32** %7, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 109
  %623 = getelementptr inbounds i32, i32* %622, i64 1
  store i32 %620, i32* %623, align 4
  br label %624

624:                                              ; preds = %615
  %625 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %626 = load i32, i32* @XGMAC_TX_BROADCASTPKTS, align 4
  %627 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %625, i32 %626)
  store i32 %627, i32* %8, align 4
  br label %628

628:                                              ; preds = %624
  %629 = load i32, i32* %8, align 4
  %630 = load i32*, i32** %7, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 111
  store i32 %629, i32* %631, align 4
  %632 = load i32, i32* %8, align 4
  %633 = ashr i32 %632, 32
  %634 = load i32*, i32** %7, align 8
  %635 = getelementptr inbounds i32, i32* %634, i64 111
  %636 = getelementptr inbounds i32, i32* %635, i64 1
  store i32 %633, i32* %636, align 4
  br label %637

637:                                              ; preds = %628
  %638 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %639 = load i32, i32* @XGMAC_TX_PRI0PAUSEPKTS, align 4
  %640 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %638, i32 %639)
  store i32 %640, i32* %8, align 4
  br label %641

641:                                              ; preds = %637
  %642 = load i32, i32* %8, align 4
  %643 = load i32*, i32** %7, align 8
  %644 = getelementptr inbounds i32, i32* %643, i64 113
  store i32 %642, i32* %644, align 4
  %645 = load i32, i32* %8, align 4
  %646 = ashr i32 %645, 32
  %647 = load i32*, i32** %7, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 113
  %649 = getelementptr inbounds i32, i32* %648, i64 1
  store i32 %646, i32* %649, align 4
  br label %650

650:                                              ; preds = %641
  %651 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %652 = load i32, i32* @XGMAC_TX_PRI1PAUSEPKTS, align 4
  %653 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %651, i32 %652)
  store i32 %653, i32* %8, align 4
  br label %654

654:                                              ; preds = %650
  %655 = load i32, i32* %8, align 4
  %656 = load i32*, i32** %7, align 8
  %657 = getelementptr inbounds i32, i32* %656, i64 115
  store i32 %655, i32* %657, align 4
  %658 = load i32, i32* %8, align 4
  %659 = ashr i32 %658, 32
  %660 = load i32*, i32** %7, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 115
  %662 = getelementptr inbounds i32, i32* %661, i64 1
  store i32 %659, i32* %662, align 4
  br label %663

663:                                              ; preds = %654
  %664 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %665 = load i32, i32* @XGMAC_TX_PRI2PAUSEPKTS, align 4
  %666 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %664, i32 %665)
  store i32 %666, i32* %8, align 4
  br label %667

667:                                              ; preds = %663
  %668 = load i32, i32* %8, align 4
  %669 = load i32*, i32** %7, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 117
  store i32 %668, i32* %670, align 4
  %671 = load i32, i32* %8, align 4
  %672 = ashr i32 %671, 32
  %673 = load i32*, i32** %7, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 117
  %675 = getelementptr inbounds i32, i32* %674, i64 1
  store i32 %672, i32* %675, align 4
  br label %676

676:                                              ; preds = %667
  %677 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %678 = load i32, i32* @XGMAC_TX_PRI3PAUSEPKTS, align 4
  %679 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %677, i32 %678)
  store i32 %679, i32* %8, align 4
  br label %680

680:                                              ; preds = %676
  %681 = load i32, i32* %8, align 4
  %682 = load i32*, i32** %7, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 119
  store i32 %681, i32* %683, align 4
  %684 = load i32, i32* %8, align 4
  %685 = ashr i32 %684, 32
  %686 = load i32*, i32** %7, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 119
  %688 = getelementptr inbounds i32, i32* %687, i64 1
  store i32 %685, i32* %688, align 4
  br label %689

689:                                              ; preds = %680
  %690 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %691 = load i32, i32* @XGMAC_TX_PRI4PAUSEPKTS, align 4
  %692 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %690, i32 %691)
  store i32 %692, i32* %8, align 4
  br label %693

693:                                              ; preds = %689
  %694 = load i32, i32* %8, align 4
  %695 = load i32*, i32** %7, align 8
  %696 = getelementptr inbounds i32, i32* %695, i64 121
  store i32 %694, i32* %696, align 4
  %697 = load i32, i32* %8, align 4
  %698 = ashr i32 %697, 32
  %699 = load i32*, i32** %7, align 8
  %700 = getelementptr inbounds i32, i32* %699, i64 121
  %701 = getelementptr inbounds i32, i32* %700, i64 1
  store i32 %698, i32* %701, align 4
  br label %702

702:                                              ; preds = %693
  %703 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %704 = load i32, i32* @XGMAC_TX_PRI5PAUSEPKTS, align 4
  %705 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %703, i32 %704)
  store i32 %705, i32* %8, align 4
  br label %706

706:                                              ; preds = %702
  %707 = load i32, i32* %8, align 4
  %708 = load i32*, i32** %7, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 123
  store i32 %707, i32* %709, align 4
  %710 = load i32, i32* %8, align 4
  %711 = ashr i32 %710, 32
  %712 = load i32*, i32** %7, align 8
  %713 = getelementptr inbounds i32, i32* %712, i64 123
  %714 = getelementptr inbounds i32, i32* %713, i64 1
  store i32 %711, i32* %714, align 4
  br label %715

715:                                              ; preds = %706
  %716 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %717 = load i32, i32* @XGMAC_TX_PRI6PAUSEPKTS, align 4
  %718 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %716, i32 %717)
  store i32 %718, i32* %8, align 4
  br label %719

719:                                              ; preds = %715
  %720 = load i32, i32* %8, align 4
  %721 = load i32*, i32** %7, align 8
  %722 = getelementptr inbounds i32, i32* %721, i64 125
  store i32 %720, i32* %722, align 4
  %723 = load i32, i32* %8, align 4
  %724 = ashr i32 %723, 32
  %725 = load i32*, i32** %7, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 125
  %727 = getelementptr inbounds i32, i32* %726, i64 1
  store i32 %724, i32* %727, align 4
  br label %728

728:                                              ; preds = %719
  %729 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %730 = load i32, i32* @XGMAC_TX_PRI7PAUSEPKTS, align 4
  %731 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %729, i32 %730)
  store i32 %731, i32* %8, align 4
  br label %732

732:                                              ; preds = %728
  %733 = load i32, i32* %8, align 4
  %734 = load i32*, i32** %7, align 8
  %735 = getelementptr inbounds i32, i32* %734, i64 127
  store i32 %733, i32* %735, align 4
  %736 = load i32, i32* %8, align 4
  %737 = ashr i32 %736, 32
  %738 = load i32*, i32** %7, align 8
  %739 = getelementptr inbounds i32, i32* %738, i64 127
  %740 = getelementptr inbounds i32, i32* %739, i64 1
  store i32 %737, i32* %740, align 4
  br label %741

741:                                              ; preds = %732
  %742 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %743 = load i32, i32* @XGMAC_TX_MACCTRLPKTS, align 4
  %744 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %742, i32 %743)
  store i32 %744, i32* %8, align 4
  br label %745

745:                                              ; preds = %741
  %746 = load i32, i32* %8, align 4
  %747 = load i32*, i32** %7, align 8
  %748 = getelementptr inbounds i32, i32* %747, i64 129
  store i32 %746, i32* %748, align 4
  %749 = load i32, i32* %8, align 4
  %750 = ashr i32 %749, 32
  %751 = load i32*, i32** %7, align 8
  %752 = getelementptr inbounds i32, i32* %751, i64 129
  %753 = getelementptr inbounds i32, i32* %752, i64 1
  store i32 %750, i32* %753, align 4
  br label %754

754:                                              ; preds = %745
  %755 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %756 = load i32, i32* @XGMAC_TX_1731PKTS, align 4
  %757 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %755, i32 %756)
  store i32 %757, i32* %8, align 4
  br label %758

758:                                              ; preds = %754
  %759 = load i32, i32* %8, align 4
  %760 = load i32*, i32** %7, align 8
  %761 = getelementptr inbounds i32, i32* %760, i64 131
  store i32 %759, i32* %761, align 4
  %762 = load i32, i32* %8, align 4
  %763 = ashr i32 %762, 32
  %764 = load i32*, i32** %7, align 8
  %765 = getelementptr inbounds i32, i32* %764, i64 131
  %766 = getelementptr inbounds i32, i32* %765, i64 1
  store i32 %763, i32* %766, align 4
  br label %767

767:                                              ; preds = %758
  %768 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %769 = load i32, i32* @XGMAC_TX_1588PKTS, align 4
  %770 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %768, i32 %769)
  store i32 %770, i32* %8, align 4
  br label %771

771:                                              ; preds = %767
  %772 = load i32, i32* %8, align 4
  %773 = load i32*, i32** %7, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 133
  store i32 %772, i32* %774, align 4
  %775 = load i32, i32* %8, align 4
  %776 = ashr i32 %775, 32
  %777 = load i32*, i32** %7, align 8
  %778 = getelementptr inbounds i32, i32* %777, i64 133
  %779 = getelementptr inbounds i32, i32* %778, i64 1
  store i32 %776, i32* %779, align 4
  br label %780

780:                                              ; preds = %771
  %781 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %782 = load i32, i32* @XGMAC_RX_FROMAPPGOODPKTS, align 4
  %783 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %781, i32 %782)
  store i32 %783, i32* %8, align 4
  br label %784

784:                                              ; preds = %780
  %785 = load i32, i32* %8, align 4
  %786 = load i32*, i32** %7, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 135
  store i32 %785, i32* %787, align 4
  %788 = load i32, i32* %8, align 4
  %789 = ashr i32 %788, 32
  %790 = load i32*, i32** %7, align 8
  %791 = getelementptr inbounds i32, i32* %790, i64 135
  %792 = getelementptr inbounds i32, i32* %791, i64 1
  store i32 %789, i32* %792, align 4
  br label %793

793:                                              ; preds = %784
  %794 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %795 = load i32, i32* @XGMAC_RX_FROMAPPBADPKTS, align 4
  %796 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %794, i32 %795)
  store i32 %796, i32* %8, align 4
  br label %797

797:                                              ; preds = %793
  %798 = load i32, i32* %8, align 4
  %799 = load i32*, i32** %7, align 8
  %800 = getelementptr inbounds i32, i32* %799, i64 137
  store i32 %798, i32* %800, align 4
  %801 = load i32, i32* %8, align 4
  %802 = ashr i32 %801, 32
  %803 = load i32*, i32** %7, align 8
  %804 = getelementptr inbounds i32, i32* %803, i64 137
  %805 = getelementptr inbounds i32, i32* %804, i64 1
  store i32 %802, i32* %805, align 4
  br label %806

806:                                              ; preds = %797
  %807 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %808 = load i32, i32* @XGMAC_TX_ERRALLPKTS, align 4
  %809 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %807, i32 %808)
  store i32 %809, i32* %8, align 4
  br label %810

810:                                              ; preds = %806
  %811 = load i32, i32* %8, align 4
  %812 = load i32*, i32** %7, align 8
  %813 = getelementptr inbounds i32, i32* %812, i64 139
  store i32 %811, i32* %813, align 4
  %814 = load i32, i32* %8, align 4
  %815 = ashr i32 %814, 32
  %816 = load i32*, i32** %7, align 8
  %817 = getelementptr inbounds i32, i32* %816, i64 139
  %818 = getelementptr inbounds i32, i32* %817, i64 1
  store i32 %815, i32* %818, align 4
  br label %819

819:                                              ; preds = %810
  %820 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %821 = load i32, i32* @XGMAC_RX_PKTS_FRAGMENT, align 4
  %822 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %820, i32 %821)
  store i32 %822, i32* %8, align 4
  br label %823

823:                                              ; preds = %819
  %824 = load i32, i32* %8, align 4
  %825 = load i32*, i32** %7, align 8
  %826 = getelementptr inbounds i32, i32* %825, i64 141
  store i32 %824, i32* %826, align 4
  %827 = load i32, i32* %8, align 4
  %828 = ashr i32 %827, 32
  %829 = load i32*, i32** %7, align 8
  %830 = getelementptr inbounds i32, i32* %829, i64 141
  %831 = getelementptr inbounds i32, i32* %830, i64 1
  store i32 %828, i32* %831, align 4
  br label %832

832:                                              ; preds = %823
  %833 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %834 = load i32, i32* @XGMAC_RX_PKTSUNDERSIZE, align 4
  %835 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %833, i32 %834)
  store i32 %835, i32* %8, align 4
  br label %836

836:                                              ; preds = %832
  %837 = load i32, i32* %8, align 4
  %838 = load i32*, i32** %7, align 8
  %839 = getelementptr inbounds i32, i32* %838, i64 143
  store i32 %837, i32* %839, align 4
  %840 = load i32, i32* %8, align 4
  %841 = ashr i32 %840, 32
  %842 = load i32*, i32** %7, align 8
  %843 = getelementptr inbounds i32, i32* %842, i64 143
  %844 = getelementptr inbounds i32, i32* %843, i64 1
  store i32 %841, i32* %844, align 4
  br label %845

845:                                              ; preds = %836
  %846 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %847 = load i32, i32* @XGMAC_RX_PKTS_UNDERMIN, align 4
  %848 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %846, i32 %847)
  store i32 %848, i32* %8, align 4
  br label %849

849:                                              ; preds = %845
  %850 = load i32, i32* %8, align 4
  %851 = load i32*, i32** %7, align 8
  %852 = getelementptr inbounds i32, i32* %851, i64 145
  store i32 %850, i32* %852, align 4
  %853 = load i32, i32* %8, align 4
  %854 = ashr i32 %853, 32
  %855 = load i32*, i32** %7, align 8
  %856 = getelementptr inbounds i32, i32* %855, i64 145
  %857 = getelementptr inbounds i32, i32* %856, i64 1
  store i32 %854, i32* %857, align 4
  br label %858

858:                                              ; preds = %849
  %859 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %860 = load i32, i32* @XGMAC_RX_PKTS_64OCTETS, align 4
  %861 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %859, i32 %860)
  store i32 %861, i32* %8, align 4
  br label %862

862:                                              ; preds = %858
  %863 = load i32, i32* %8, align 4
  %864 = load i32*, i32** %7, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 147
  store i32 %863, i32* %865, align 4
  %866 = load i32, i32* %8, align 4
  %867 = ashr i32 %866, 32
  %868 = load i32*, i32** %7, align 8
  %869 = getelementptr inbounds i32, i32* %868, i64 147
  %870 = getelementptr inbounds i32, i32* %869, i64 1
  store i32 %867, i32* %870, align 4
  br label %871

871:                                              ; preds = %862
  %872 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %873 = load i32, i32* @XGMAC_RX_PKTS_65TO127OCTETS, align 4
  %874 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %872, i32 %873)
  store i32 %874, i32* %8, align 4
  br label %875

875:                                              ; preds = %871
  %876 = load i32, i32* %8, align 4
  %877 = load i32*, i32** %7, align 8
  %878 = getelementptr inbounds i32, i32* %877, i64 149
  store i32 %876, i32* %878, align 4
  %879 = load i32, i32* %8, align 4
  %880 = ashr i32 %879, 32
  %881 = load i32*, i32** %7, align 8
  %882 = getelementptr inbounds i32, i32* %881, i64 149
  %883 = getelementptr inbounds i32, i32* %882, i64 1
  store i32 %880, i32* %883, align 4
  br label %884

884:                                              ; preds = %875
  %885 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %886 = load i32, i32* @XGMAC_RX_PKTS_128TO255OCTETS, align 4
  %887 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %885, i32 %886)
  store i32 %887, i32* %8, align 4
  br label %888

888:                                              ; preds = %884
  %889 = load i32, i32* %8, align 4
  %890 = load i32*, i32** %7, align 8
  %891 = getelementptr inbounds i32, i32* %890, i64 151
  store i32 %889, i32* %891, align 4
  %892 = load i32, i32* %8, align 4
  %893 = ashr i32 %892, 32
  %894 = load i32*, i32** %7, align 8
  %895 = getelementptr inbounds i32, i32* %894, i64 151
  %896 = getelementptr inbounds i32, i32* %895, i64 1
  store i32 %893, i32* %896, align 4
  br label %897

897:                                              ; preds = %888
  %898 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %899 = load i32, i32* @XGMAC_RX_PKTS_256TO511OCTETS, align 4
  %900 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %898, i32 %899)
  store i32 %900, i32* %8, align 4
  br label %901

901:                                              ; preds = %897
  %902 = load i32, i32* %8, align 4
  %903 = load i32*, i32** %7, align 8
  %904 = getelementptr inbounds i32, i32* %903, i64 153
  store i32 %902, i32* %904, align 4
  %905 = load i32, i32* %8, align 4
  %906 = ashr i32 %905, 32
  %907 = load i32*, i32** %7, align 8
  %908 = getelementptr inbounds i32, i32* %907, i64 153
  %909 = getelementptr inbounds i32, i32* %908, i64 1
  store i32 %906, i32* %909, align 4
  br label %910

910:                                              ; preds = %901
  %911 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %912 = load i32, i32* @XGMAC_RX_PKTS_512TO1023OCTETS, align 4
  %913 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %911, i32 %912)
  store i32 %913, i32* %8, align 4
  br label %914

914:                                              ; preds = %910
  %915 = load i32, i32* %8, align 4
  %916 = load i32*, i32** %7, align 8
  %917 = getelementptr inbounds i32, i32* %916, i64 155
  store i32 %915, i32* %917, align 4
  %918 = load i32, i32* %8, align 4
  %919 = ashr i32 %918, 32
  %920 = load i32*, i32** %7, align 8
  %921 = getelementptr inbounds i32, i32* %920, i64 155
  %922 = getelementptr inbounds i32, i32* %921, i64 1
  store i32 %919, i32* %922, align 4
  br label %923

923:                                              ; preds = %914
  %924 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %925 = load i32, i32* @XGMAC_RX_PKTS_1024TO1518OCTETS, align 4
  %926 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %924, i32 %925)
  store i32 %926, i32* %8, align 4
  br label %927

927:                                              ; preds = %923
  %928 = load i32, i32* %8, align 4
  %929 = load i32*, i32** %7, align 8
  %930 = getelementptr inbounds i32, i32* %929, i64 157
  store i32 %928, i32* %930, align 4
  %931 = load i32, i32* %8, align 4
  %932 = ashr i32 %931, 32
  %933 = load i32*, i32** %7, align 8
  %934 = getelementptr inbounds i32, i32* %933, i64 157
  %935 = getelementptr inbounds i32, i32* %934, i64 1
  store i32 %932, i32* %935, align 4
  br label %936

936:                                              ; preds = %927
  %937 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %938 = load i32, i32* @XGMAC_RX_PKTS_1519TOMAXOCTETS, align 4
  %939 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %937, i32 %938)
  store i32 %939, i32* %8, align 4
  br label %940

940:                                              ; preds = %936
  %941 = load i32, i32* %8, align 4
  %942 = load i32*, i32** %7, align 8
  %943 = getelementptr inbounds i32, i32* %942, i64 159
  store i32 %941, i32* %943, align 4
  %944 = load i32, i32* %8, align 4
  %945 = ashr i32 %944, 32
  %946 = load i32*, i32** %7, align 8
  %947 = getelementptr inbounds i32, i32* %946, i64 159
  %948 = getelementptr inbounds i32, i32* %947, i64 1
  store i32 %945, i32* %948, align 4
  br label %949

949:                                              ; preds = %940
  %950 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %951 = load i32, i32* @XGMAC_RX_PKTS_1519TOMAXOCTETSOK, align 4
  %952 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %950, i32 %951)
  store i32 %952, i32* %8, align 4
  br label %953

953:                                              ; preds = %949
  %954 = load i32, i32* %8, align 4
  %955 = load i32*, i32** %7, align 8
  %956 = getelementptr inbounds i32, i32* %955, i64 161
  store i32 %954, i32* %956, align 4
  %957 = load i32, i32* %8, align 4
  %958 = ashr i32 %957, 32
  %959 = load i32*, i32** %7, align 8
  %960 = getelementptr inbounds i32, i32* %959, i64 161
  %961 = getelementptr inbounds i32, i32* %960, i64 1
  store i32 %958, i32* %961, align 4
  br label %962

962:                                              ; preds = %953
  %963 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %964 = load i32, i32* @XGMAC_RX_PKTS_OVERSIZE, align 4
  %965 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %963, i32 %964)
  store i32 %965, i32* %8, align 4
  br label %966

966:                                              ; preds = %962
  %967 = load i32, i32* %8, align 4
  %968 = load i32*, i32** %7, align 8
  %969 = getelementptr inbounds i32, i32* %968, i64 163
  store i32 %967, i32* %969, align 4
  %970 = load i32, i32* %8, align 4
  %971 = ashr i32 %970, 32
  %972 = load i32*, i32** %7, align 8
  %973 = getelementptr inbounds i32, i32* %972, i64 163
  %974 = getelementptr inbounds i32, i32* %973, i64 1
  store i32 %971, i32* %974, align 4
  br label %975

975:                                              ; preds = %966
  %976 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %977 = load i32, i32* @XGMAC_RX_PKTS_JABBER, align 4
  %978 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %976, i32 %977)
  store i32 %978, i32* %8, align 4
  br label %979

979:                                              ; preds = %975
  %980 = load i32, i32* %8, align 4
  %981 = load i32*, i32** %7, align 8
  %982 = getelementptr inbounds i32, i32* %981, i64 165
  store i32 %980, i32* %982, align 4
  %983 = load i32, i32* %8, align 4
  %984 = ashr i32 %983, 32
  %985 = load i32*, i32** %7, align 8
  %986 = getelementptr inbounds i32, i32* %985, i64 165
  %987 = getelementptr inbounds i32, i32* %986, i64 1
  store i32 %984, i32* %987, align 4
  br label %988

988:                                              ; preds = %979
  %989 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %990 = load i32, i32* @XGMAC_RX_GOODPKTS, align 4
  %991 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %989, i32 %990)
  store i32 %991, i32* %8, align 4
  br label %992

992:                                              ; preds = %988
  %993 = load i32, i32* %8, align 4
  %994 = load i32*, i32** %7, align 8
  %995 = getelementptr inbounds i32, i32* %994, i64 167
  store i32 %993, i32* %995, align 4
  %996 = load i32, i32* %8, align 4
  %997 = ashr i32 %996, 32
  %998 = load i32*, i32** %7, align 8
  %999 = getelementptr inbounds i32, i32* %998, i64 167
  %1000 = getelementptr inbounds i32, i32* %999, i64 1
  store i32 %997, i32* %1000, align 4
  br label %1001

1001:                                             ; preds = %992
  %1002 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1003 = load i32, i32* @XGMAC_RX_GOODOCTETS, align 4
  %1004 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1002, i32 %1003)
  store i32 %1004, i32* %8, align 4
  br label %1005

1005:                                             ; preds = %1001
  %1006 = load i32, i32* %8, align 4
  %1007 = load i32*, i32** %7, align 8
  %1008 = getelementptr inbounds i32, i32* %1007, i64 169
  store i32 %1006, i32* %1008, align 4
  %1009 = load i32, i32* %8, align 4
  %1010 = ashr i32 %1009, 32
  %1011 = load i32*, i32** %7, align 8
  %1012 = getelementptr inbounds i32, i32* %1011, i64 169
  %1013 = getelementptr inbounds i32, i32* %1012, i64 1
  store i32 %1010, i32* %1013, align 4
  br label %1014

1014:                                             ; preds = %1005
  %1015 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1016 = load i32, i32* @XGMAC_RX_TOTAL_PKTS, align 4
  %1017 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1015, i32 %1016)
  store i32 %1017, i32* %8, align 4
  br label %1018

1018:                                             ; preds = %1014
  %1019 = load i32, i32* %8, align 4
  %1020 = load i32*, i32** %7, align 8
  %1021 = getelementptr inbounds i32, i32* %1020, i64 171
  store i32 %1019, i32* %1021, align 4
  %1022 = load i32, i32* %8, align 4
  %1023 = ashr i32 %1022, 32
  %1024 = load i32*, i32** %7, align 8
  %1025 = getelementptr inbounds i32, i32* %1024, i64 171
  %1026 = getelementptr inbounds i32, i32* %1025, i64 1
  store i32 %1023, i32* %1026, align 4
  br label %1027

1027:                                             ; preds = %1018
  %1028 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1029 = load i32, i32* @XGMAC_RX_TOTALOCTETS, align 4
  %1030 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1028, i32 %1029)
  store i32 %1030, i32* %8, align 4
  br label %1031

1031:                                             ; preds = %1027
  %1032 = load i32, i32* %8, align 4
  %1033 = load i32*, i32** %7, align 8
  %1034 = getelementptr inbounds i32, i32* %1033, i64 173
  store i32 %1032, i32* %1034, align 4
  %1035 = load i32, i32* %8, align 4
  %1036 = ashr i32 %1035, 32
  %1037 = load i32*, i32** %7, align 8
  %1038 = getelementptr inbounds i32, i32* %1037, i64 173
  %1039 = getelementptr inbounds i32, i32* %1038, i64 1
  store i32 %1036, i32* %1039, align 4
  br label %1040

1040:                                             ; preds = %1031
  %1041 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1042 = load i32, i32* @XGMAC_RX_UNICASTPKTS, align 4
  %1043 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1041, i32 %1042)
  store i32 %1043, i32* %8, align 4
  br label %1044

1044:                                             ; preds = %1040
  %1045 = load i32, i32* %8, align 4
  %1046 = load i32*, i32** %7, align 8
  %1047 = getelementptr inbounds i32, i32* %1046, i64 175
  store i32 %1045, i32* %1047, align 4
  %1048 = load i32, i32* %8, align 4
  %1049 = ashr i32 %1048, 32
  %1050 = load i32*, i32** %7, align 8
  %1051 = getelementptr inbounds i32, i32* %1050, i64 175
  %1052 = getelementptr inbounds i32, i32* %1051, i64 1
  store i32 %1049, i32* %1052, align 4
  br label %1053

1053:                                             ; preds = %1044
  %1054 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1055 = load i32, i32* @XGMAC_RX_MULTICASTPKTS, align 4
  %1056 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1054, i32 %1055)
  store i32 %1056, i32* %8, align 4
  br label %1057

1057:                                             ; preds = %1053
  %1058 = load i32, i32* %8, align 4
  %1059 = load i32*, i32** %7, align 8
  %1060 = getelementptr inbounds i32, i32* %1059, i64 177
  store i32 %1058, i32* %1060, align 4
  %1061 = load i32, i32* %8, align 4
  %1062 = ashr i32 %1061, 32
  %1063 = load i32*, i32** %7, align 8
  %1064 = getelementptr inbounds i32, i32* %1063, i64 177
  %1065 = getelementptr inbounds i32, i32* %1064, i64 1
  store i32 %1062, i32* %1065, align 4
  br label %1066

1066:                                             ; preds = %1057
  %1067 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1068 = load i32, i32* @XGMAC_RX_BROADCASTPKTS, align 4
  %1069 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1067, i32 %1068)
  store i32 %1069, i32* %8, align 4
  br label %1070

1070:                                             ; preds = %1066
  %1071 = load i32, i32* %8, align 4
  %1072 = load i32*, i32** %7, align 8
  %1073 = getelementptr inbounds i32, i32* %1072, i64 179
  store i32 %1071, i32* %1073, align 4
  %1074 = load i32, i32* %8, align 4
  %1075 = ashr i32 %1074, 32
  %1076 = load i32*, i32** %7, align 8
  %1077 = getelementptr inbounds i32, i32* %1076, i64 179
  %1078 = getelementptr inbounds i32, i32* %1077, i64 1
  store i32 %1075, i32* %1078, align 4
  br label %1079

1079:                                             ; preds = %1070
  %1080 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1081 = load i32, i32* @XGMAC_RX_PRI0PAUSEPKTS, align 4
  %1082 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1080, i32 %1081)
  store i32 %1082, i32* %8, align 4
  br label %1083

1083:                                             ; preds = %1079
  %1084 = load i32, i32* %8, align 4
  %1085 = load i32*, i32** %7, align 8
  %1086 = getelementptr inbounds i32, i32* %1085, i64 181
  store i32 %1084, i32* %1086, align 4
  %1087 = load i32, i32* %8, align 4
  %1088 = ashr i32 %1087, 32
  %1089 = load i32*, i32** %7, align 8
  %1090 = getelementptr inbounds i32, i32* %1089, i64 181
  %1091 = getelementptr inbounds i32, i32* %1090, i64 1
  store i32 %1088, i32* %1091, align 4
  br label %1092

1092:                                             ; preds = %1083
  %1093 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1094 = load i32, i32* @XGMAC_RX_PRI1PAUSEPKTS, align 4
  %1095 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1093, i32 %1094)
  store i32 %1095, i32* %8, align 4
  br label %1096

1096:                                             ; preds = %1092
  %1097 = load i32, i32* %8, align 4
  %1098 = load i32*, i32** %7, align 8
  %1099 = getelementptr inbounds i32, i32* %1098, i64 183
  store i32 %1097, i32* %1099, align 4
  %1100 = load i32, i32* %8, align 4
  %1101 = ashr i32 %1100, 32
  %1102 = load i32*, i32** %7, align 8
  %1103 = getelementptr inbounds i32, i32* %1102, i64 183
  %1104 = getelementptr inbounds i32, i32* %1103, i64 1
  store i32 %1101, i32* %1104, align 4
  br label %1105

1105:                                             ; preds = %1096
  %1106 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1107 = load i32, i32* @XGMAC_RX_PRI2PAUSEPKTS, align 4
  %1108 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1106, i32 %1107)
  store i32 %1108, i32* %8, align 4
  br label %1109

1109:                                             ; preds = %1105
  %1110 = load i32, i32* %8, align 4
  %1111 = load i32*, i32** %7, align 8
  %1112 = getelementptr inbounds i32, i32* %1111, i64 185
  store i32 %1110, i32* %1112, align 4
  %1113 = load i32, i32* %8, align 4
  %1114 = ashr i32 %1113, 32
  %1115 = load i32*, i32** %7, align 8
  %1116 = getelementptr inbounds i32, i32* %1115, i64 185
  %1117 = getelementptr inbounds i32, i32* %1116, i64 1
  store i32 %1114, i32* %1117, align 4
  br label %1118

1118:                                             ; preds = %1109
  %1119 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1120 = load i32, i32* @XGMAC_RX_PRI3PAUSEPKTS, align 4
  %1121 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1119, i32 %1120)
  store i32 %1121, i32* %8, align 4
  br label %1122

1122:                                             ; preds = %1118
  %1123 = load i32, i32* %8, align 4
  %1124 = load i32*, i32** %7, align 8
  %1125 = getelementptr inbounds i32, i32* %1124, i64 187
  store i32 %1123, i32* %1125, align 4
  %1126 = load i32, i32* %8, align 4
  %1127 = ashr i32 %1126, 32
  %1128 = load i32*, i32** %7, align 8
  %1129 = getelementptr inbounds i32, i32* %1128, i64 187
  %1130 = getelementptr inbounds i32, i32* %1129, i64 1
  store i32 %1127, i32* %1130, align 4
  br label %1131

1131:                                             ; preds = %1122
  %1132 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1133 = load i32, i32* @XGMAC_RX_PRI4PAUSEPKTS, align 4
  %1134 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1132, i32 %1133)
  store i32 %1134, i32* %8, align 4
  br label %1135

1135:                                             ; preds = %1131
  %1136 = load i32, i32* %8, align 4
  %1137 = load i32*, i32** %7, align 8
  %1138 = getelementptr inbounds i32, i32* %1137, i64 189
  store i32 %1136, i32* %1138, align 4
  %1139 = load i32, i32* %8, align 4
  %1140 = ashr i32 %1139, 32
  %1141 = load i32*, i32** %7, align 8
  %1142 = getelementptr inbounds i32, i32* %1141, i64 189
  %1143 = getelementptr inbounds i32, i32* %1142, i64 1
  store i32 %1140, i32* %1143, align 4
  br label %1144

1144:                                             ; preds = %1135
  %1145 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1146 = load i32, i32* @XGMAC_RX_PRI5PAUSEPKTS, align 4
  %1147 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1145, i32 %1146)
  store i32 %1147, i32* %8, align 4
  br label %1148

1148:                                             ; preds = %1144
  %1149 = load i32, i32* %8, align 4
  %1150 = load i32*, i32** %7, align 8
  %1151 = getelementptr inbounds i32, i32* %1150, i64 191
  store i32 %1149, i32* %1151, align 4
  %1152 = load i32, i32* %8, align 4
  %1153 = ashr i32 %1152, 32
  %1154 = load i32*, i32** %7, align 8
  %1155 = getelementptr inbounds i32, i32* %1154, i64 191
  %1156 = getelementptr inbounds i32, i32* %1155, i64 1
  store i32 %1153, i32* %1156, align 4
  br label %1157

1157:                                             ; preds = %1148
  %1158 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1159 = load i32, i32* @XGMAC_RX_PRI6PAUSEPKTS, align 4
  %1160 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1158, i32 %1159)
  store i32 %1160, i32* %8, align 4
  br label %1161

1161:                                             ; preds = %1157
  %1162 = load i32, i32* %8, align 4
  %1163 = load i32*, i32** %7, align 8
  %1164 = getelementptr inbounds i32, i32* %1163, i64 193
  store i32 %1162, i32* %1164, align 4
  %1165 = load i32, i32* %8, align 4
  %1166 = ashr i32 %1165, 32
  %1167 = load i32*, i32** %7, align 8
  %1168 = getelementptr inbounds i32, i32* %1167, i64 193
  %1169 = getelementptr inbounds i32, i32* %1168, i64 1
  store i32 %1166, i32* %1169, align 4
  br label %1170

1170:                                             ; preds = %1161
  %1171 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1172 = load i32, i32* @XGMAC_RX_PRI7PAUSEPKTS, align 4
  %1173 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1171, i32 %1172)
  store i32 %1173, i32* %8, align 4
  br label %1174

1174:                                             ; preds = %1170
  %1175 = load i32, i32* %8, align 4
  %1176 = load i32*, i32** %7, align 8
  %1177 = getelementptr inbounds i32, i32* %1176, i64 195
  store i32 %1175, i32* %1177, align 4
  %1178 = load i32, i32* %8, align 4
  %1179 = ashr i32 %1178, 32
  %1180 = load i32*, i32** %7, align 8
  %1181 = getelementptr inbounds i32, i32* %1180, i64 195
  %1182 = getelementptr inbounds i32, i32* %1181, i64 1
  store i32 %1179, i32* %1182, align 4
  br label %1183

1183:                                             ; preds = %1174
  %1184 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1185 = load i32, i32* @XGMAC_RX_MACCTRLPKTS, align 4
  %1186 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1184, i32 %1185)
  store i32 %1186, i32* %8, align 4
  br label %1187

1187:                                             ; preds = %1183
  %1188 = load i32, i32* %8, align 4
  %1189 = load i32*, i32** %7, align 8
  %1190 = getelementptr inbounds i32, i32* %1189, i64 197
  store i32 %1188, i32* %1190, align 4
  %1191 = load i32, i32* %8, align 4
  %1192 = ashr i32 %1191, 32
  %1193 = load i32*, i32** %7, align 8
  %1194 = getelementptr inbounds i32, i32* %1193, i64 197
  %1195 = getelementptr inbounds i32, i32* %1194, i64 1
  store i32 %1192, i32* %1195, align 4
  br label %1196

1196:                                             ; preds = %1187
  %1197 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1198 = load i32, i32* @XGMAC_TX_SENDAPPGOODPKTS, align 4
  %1199 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1197, i32 %1198)
  store i32 %1199, i32* %8, align 4
  br label %1200

1200:                                             ; preds = %1196
  %1201 = load i32, i32* %8, align 4
  %1202 = load i32*, i32** %7, align 8
  %1203 = getelementptr inbounds i32, i32* %1202, i64 199
  store i32 %1201, i32* %1203, align 4
  %1204 = load i32, i32* %8, align 4
  %1205 = ashr i32 %1204, 32
  %1206 = load i32*, i32** %7, align 8
  %1207 = getelementptr inbounds i32, i32* %1206, i64 199
  %1208 = getelementptr inbounds i32, i32* %1207, i64 1
  store i32 %1205, i32* %1208, align 4
  br label %1209

1209:                                             ; preds = %1200
  %1210 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1211 = load i32, i32* @XGMAC_TX_SENDAPPBADPKTS, align 4
  %1212 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1210, i32 %1211)
  store i32 %1212, i32* %8, align 4
  br label %1213

1213:                                             ; preds = %1209
  %1214 = load i32, i32* %8, align 4
  %1215 = load i32*, i32** %7, align 8
  %1216 = getelementptr inbounds i32, i32* %1215, i64 201
  store i32 %1214, i32* %1216, align 4
  %1217 = load i32, i32* %8, align 4
  %1218 = ashr i32 %1217, 32
  %1219 = load i32*, i32** %7, align 8
  %1220 = getelementptr inbounds i32, i32* %1219, i64 201
  %1221 = getelementptr inbounds i32, i32* %1220, i64 1
  store i32 %1218, i32* %1221, align 4
  br label %1222

1222:                                             ; preds = %1213
  %1223 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1224 = load i32, i32* @XGMAC_RX_1731PKTS, align 4
  %1225 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1223, i32 %1224)
  store i32 %1225, i32* %8, align 4
  br label %1226

1226:                                             ; preds = %1222
  %1227 = load i32, i32* %8, align 4
  %1228 = load i32*, i32** %7, align 8
  %1229 = getelementptr inbounds i32, i32* %1228, i64 203
  store i32 %1227, i32* %1229, align 4
  %1230 = load i32, i32* %8, align 4
  %1231 = ashr i32 %1230, 32
  %1232 = load i32*, i32** %7, align 8
  %1233 = getelementptr inbounds i32, i32* %1232, i64 203
  %1234 = getelementptr inbounds i32, i32* %1233, i64 1
  store i32 %1231, i32* %1234, align 4
  br label %1235

1235:                                             ; preds = %1226
  %1236 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1237 = load i32, i32* @XGMAC_RX_SYMBOLERRPKTS, align 4
  %1238 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1236, i32 %1237)
  store i32 %1238, i32* %8, align 4
  br label %1239

1239:                                             ; preds = %1235
  %1240 = load i32, i32* %8, align 4
  %1241 = load i32*, i32** %7, align 8
  %1242 = getelementptr inbounds i32, i32* %1241, i64 205
  store i32 %1240, i32* %1242, align 4
  %1243 = load i32, i32* %8, align 4
  %1244 = ashr i32 %1243, 32
  %1245 = load i32*, i32** %7, align 8
  %1246 = getelementptr inbounds i32, i32* %1245, i64 205
  %1247 = getelementptr inbounds i32, i32* %1246, i64 1
  store i32 %1244, i32* %1247, align 4
  br label %1248

1248:                                             ; preds = %1239
  %1249 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %1250 = load i32, i32* @XGMAC_RX_FCSERRPKTS, align 4
  %1251 = call i32 @hns_mac_reg_read64(%struct.mac_driver* %1249, i32 %1250)
  store i32 %1251, i32* %8, align 4
  br label %1252

1252:                                             ; preds = %1248
  %1253 = load i32, i32* %8, align 4
  %1254 = load i32*, i32** %7, align 8
  %1255 = getelementptr inbounds i32, i32* %1254, i64 207
  store i32 %1253, i32* %1255, align 4
  %1256 = load i32, i32* %8, align 4
  %1257 = ashr i32 %1256, 32
  %1258 = load i32*, i32** %7, align 8
  %1259 = getelementptr inbounds i32, i32* %1258, i64 207
  %1260 = getelementptr inbounds i32, i32* %1259, i64 1
  store i32 %1257, i32* %1260, align 4
  br label %1261

1261:                                             ; preds = %1252
  store i32 208, i32* %5, align 4
  br label %1262

1262:                                             ; preds = %1270, %1261
  %1263 = load i32, i32* %5, align 4
  %1264 = icmp slt i32 %1263, 214
  br i1 %1264, label %1265, label %1273

1265:                                             ; preds = %1262
  %1266 = load i32*, i32** %7, align 8
  %1267 = load i32, i32* %5, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i32, i32* %1266, i64 %1268
  store i32 -1431655766, i32* %1269, align 4
  br label %1270

1270:                                             ; preds = %1265
  %1271 = load i32, i32* %5, align 4
  %1272 = add nsw i32 %1271, 1
  store i32 %1272, i32* %5, align 4
  br label %1262

1273:                                             ; preds = %1262
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local i32 @hns_mac_reg_read64(%struct.mac_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
