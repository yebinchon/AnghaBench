; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@GMAC_DUPLEX_TYPE_REG = common dso_local global i32 0, align 4
@GMAC_FD_FC_TYPE_REG = common dso_local global i32 0, align 4
@GMAC_FC_TX_TIMER_REG = common dso_local global i32 0, align 4
@GMAC_FD_FC_ADDR_LOW_REG = common dso_local global i32 0, align 4
@GMAC_FD_FC_ADDR_HIGH_REG = common dso_local global i32 0, align 4
@GMAC_IPG_TX_TIMER_REG = common dso_local global i32 0, align 4
@GMAC_PAUSE_THR_REG = common dso_local global i32 0, align 4
@GMAC_MAX_FRM_SIZE_REG = common dso_local global i32 0, align 4
@GMAC_PORT_MODE_REG = common dso_local global i32 0, align 4
@GMAC_PORT_EN_REG = common dso_local global i32 0, align 4
@GMAC_PAUSE_EN_REG = common dso_local global i32 0, align 4
@GMAC_SHORT_RUNTS_THR_REG = common dso_local global i32 0, align 4
@GMAC_AN_NEG_STATE_REG = common dso_local global i32 0, align 4
@GMAC_TX_LOCAL_PAGE_REG = common dso_local global i32 0, align 4
@GMAC_TRANSMIT_CONTROL_REG = common dso_local global i32 0, align 4
@GMAC_REC_FILT_CONTROL_REG = common dso_local global i32 0, align 4
@GMAC_PTP_CONFIG_REG = common dso_local global i32 0, align 4
@GMAC_RX_OCTETS_TOTAL_OK_REG = common dso_local global i32 0, align 4
@GMAC_RX_OCTETS_BAD_REG = common dso_local global i32 0, align 4
@GMAC_RX_UC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_MC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_BC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_64OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_65TO127OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_128TO255OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_255TO511OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_512TO1023OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_1024TO1518OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_1519TOMAXOCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_FCS_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_TAGGED_REG = common dso_local global i32 0, align 4
@GMAC_RX_DATA_ERR_REG = common dso_local global i32 0, align 4
@GMAC_RX_ALIGN_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_LONG_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_JABBER_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PAUSE_MACCTRL_FRAM_REG = common dso_local global i32 0, align 4
@GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG = common dso_local global i32 0, align 4
@GMAC_RX_VERY_LONG_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_RUNT_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_SHORT_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_FILT_PKT_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_OCTETS_TOTAL_FILT_REG = common dso_local global i32 0, align 4
@GMAC_OCTETS_TRANSMITTED_OK_REG = common dso_local global i32 0, align 4
@GMAC_OCTETS_TRANSMITTED_BAD_REG = common dso_local global i32 0, align 4
@GMAC_TX_UC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_MC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_BC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_64OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_65TO127OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_128TO255OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_255TO511OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_512TO1023OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_1024TO1518OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_1519TOMAXOCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_EXCESSIVE_LENGTH_DROP_REG = common dso_local global i32 0, align 4
@GMAC_TX_UNDERRUN_REG = common dso_local global i32 0, align 4
@GMAC_TX_TAGGED_REG = common dso_local global i32 0, align 4
@GMAC_TX_CRC_ERROR_REG = common dso_local global i32 0, align 4
@GMAC_TX_PAUSE_FRAMES_REG = common dso_local global i32 0, align 4
@GAMC_RX_MAX_FRAME = common dso_local global i32 0, align 4
@GMAC_LINE_LOOP_BACK_REG = common dso_local global i32 0, align 4
@GMAC_CF_CRC_STRIP_REG = common dso_local global i32 0, align 4
@GMAC_MODE_CHANGE_EN_REG = common dso_local global i32 0, align 4
@GMAC_SIXTEEN_BIT_CNTR_REG = common dso_local global i32 0, align 4
@GMAC_LD_LINK_COUNTER_REG = common dso_local global i32 0, align 4
@GMAC_LOOP_REG = common dso_local global i32 0, align 4
@GMAC_RECV_CONTROL_REG = common dso_local global i32 0, align 4
@GMAC_VLAN_CODE_REG = common dso_local global i32 0, align 4
@GMAC_RX_OVERRUN_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_LENGTHFIELD_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_FAIL_COMMA_CNT_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_0_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_0_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_1_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_1_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_2_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_2_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_3_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_3_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_4_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_4_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_5_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_5_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_MSK_0_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_MSK_0_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_LOW_MSK_1_REG = common dso_local global i32 0, align 4
@GMAC_STATION_ADDR_HIGH_MSK_1_REG = common dso_local global i32 0, align 4
@GMAC_MAC_SKIP_LEN_REG = common dso_local global i32 0, align 4
@GMAC_TX_LOOP_PKT_PRI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hns_gmac_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_get_regs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_driver*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mac_driver*
  store %struct.mac_driver* %11, %struct.mac_driver** %7, align 8
  %12 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %13 = load i32, i32* @GMAC_DUPLEX_TYPE_REG, align 4
  %14 = call i32 @dsaf_read_dev(%struct.mac_driver* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %18 = load i32, i32* @GMAC_FD_FC_TYPE_REG, align 4
  %19 = call i32 @dsaf_read_dev(%struct.mac_driver* %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %23 = load i32, i32* @GMAC_FC_TX_TIMER_REG, align 4
  %24 = call i32 @dsaf_read_dev(%struct.mac_driver* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %28 = load i32, i32* @GMAC_FD_FC_ADDR_LOW_REG, align 4
  %29 = call i32 @dsaf_read_dev(%struct.mac_driver* %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %33 = load i32, i32* @GMAC_FD_FC_ADDR_HIGH_REG, align 4
  %34 = call i32 @dsaf_read_dev(%struct.mac_driver* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %38 = load i32, i32* @GMAC_IPG_TX_TIMER_REG, align 4
  %39 = call i32 @dsaf_read_dev(%struct.mac_driver* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %43 = load i32, i32* @GMAC_PAUSE_THR_REG, align 4
  %44 = call i32 @dsaf_read_dev(%struct.mac_driver* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %48 = load i32, i32* @GMAC_MAX_FRM_SIZE_REG, align 4
  %49 = call i32 @dsaf_read_dev(%struct.mac_driver* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %53 = load i32, i32* @GMAC_PORT_MODE_REG, align 4
  %54 = call i32 @dsaf_read_dev(%struct.mac_driver* %52, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %58 = load i32, i32* @GMAC_PORT_EN_REG, align 4
  %59 = call i32 @dsaf_read_dev(%struct.mac_driver* %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %63 = load i32, i32* @GMAC_PAUSE_EN_REG, align 4
  %64 = call i32 @dsaf_read_dev(%struct.mac_driver* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 10
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %68 = load i32, i32* @GMAC_SHORT_RUNTS_THR_REG, align 4
  %69 = call i32 @dsaf_read_dev(%struct.mac_driver* %67, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 11
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %73 = load i32, i32* @GMAC_AN_NEG_STATE_REG, align 4
  %74 = call i32 @dsaf_read_dev(%struct.mac_driver* %72, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %78 = load i32, i32* @GMAC_TX_LOCAL_PAGE_REG, align 4
  %79 = call i32 @dsaf_read_dev(%struct.mac_driver* %77, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 13
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %83 = load i32, i32* @GMAC_TRANSMIT_CONTROL_REG, align 4
  %84 = call i32 @dsaf_read_dev(%struct.mac_driver* %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 14
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %88 = load i32, i32* @GMAC_REC_FILT_CONTROL_REG, align 4
  %89 = call i32 @dsaf_read_dev(%struct.mac_driver* %87, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 15
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %93 = load i32, i32* @GMAC_PTP_CONFIG_REG, align 4
  %94 = call i32 @dsaf_read_dev(%struct.mac_driver* %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 16
  store i32 %94, i32* %96, align 4
  %97 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %98 = load i32, i32* @GMAC_RX_OCTETS_TOTAL_OK_REG, align 4
  %99 = call i32 @dsaf_read_dev(%struct.mac_driver* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 17
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %103 = load i32, i32* @GMAC_RX_OCTETS_BAD_REG, align 4
  %104 = call i32 @dsaf_read_dev(%struct.mac_driver* %102, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 18
  store i32 %104, i32* %106, align 4
  %107 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %108 = load i32, i32* @GMAC_RX_UC_PKTS_REG, align 4
  %109 = call i32 @dsaf_read_dev(%struct.mac_driver* %107, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 19
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %113 = load i32, i32* @GMAC_RX_MC_PKTS_REG, align 4
  %114 = call i32 @dsaf_read_dev(%struct.mac_driver* %112, i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 20
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %118 = load i32, i32* @GMAC_RX_BC_PKTS_REG, align 4
  %119 = call i32 @dsaf_read_dev(%struct.mac_driver* %117, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 21
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %123 = load i32, i32* @GMAC_RX_PKTS_64OCTETS_REG, align 4
  %124 = call i32 @dsaf_read_dev(%struct.mac_driver* %122, i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 22
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %128 = load i32, i32* @GMAC_RX_PKTS_65TO127OCTETS_REG, align 4
  %129 = call i32 @dsaf_read_dev(%struct.mac_driver* %127, i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 23
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %133 = load i32, i32* @GMAC_RX_PKTS_128TO255OCTETS_REG, align 4
  %134 = call i32 @dsaf_read_dev(%struct.mac_driver* %132, i32 %133)
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 24
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %138 = load i32, i32* @GMAC_RX_PKTS_255TO511OCTETS_REG, align 4
  %139 = call i32 @dsaf_read_dev(%struct.mac_driver* %137, i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 25
  store i32 %139, i32* %141, align 4
  %142 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %143 = load i32, i32* @GMAC_RX_PKTS_512TO1023OCTETS_REG, align 4
  %144 = call i32 @dsaf_read_dev(%struct.mac_driver* %142, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 26
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %148 = load i32, i32* @GMAC_RX_PKTS_1024TO1518OCTETS_REG, align 4
  %149 = call i32 @dsaf_read_dev(%struct.mac_driver* %147, i32 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 27
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %153 = load i32, i32* @GMAC_RX_PKTS_1519TOMAXOCTETS_REG, align 4
  %154 = call i32 @dsaf_read_dev(%struct.mac_driver* %152, i32 %153)
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 28
  store i32 %154, i32* %156, align 4
  %157 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %158 = load i32, i32* @GMAC_RX_FCS_ERRORS_REG, align 4
  %159 = call i32 @dsaf_read_dev(%struct.mac_driver* %157, i32 %158)
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 29
  store i32 %159, i32* %161, align 4
  %162 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %163 = load i32, i32* @GMAC_RX_TAGGED_REG, align 4
  %164 = call i32 @dsaf_read_dev(%struct.mac_driver* %162, i32 %163)
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 30
  store i32 %164, i32* %166, align 4
  %167 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %168 = load i32, i32* @GMAC_RX_DATA_ERR_REG, align 4
  %169 = call i32 @dsaf_read_dev(%struct.mac_driver* %167, i32 %168)
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 31
  store i32 %169, i32* %171, align 4
  %172 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %173 = load i32, i32* @GMAC_RX_ALIGN_ERRORS_REG, align 4
  %174 = call i32 @dsaf_read_dev(%struct.mac_driver* %172, i32 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 32
  store i32 %174, i32* %176, align 4
  %177 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %178 = load i32, i32* @GMAC_RX_LONG_ERRORS_REG, align 4
  %179 = call i32 @dsaf_read_dev(%struct.mac_driver* %177, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 33
  store i32 %179, i32* %181, align 4
  %182 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %183 = load i32, i32* @GMAC_RX_JABBER_ERRORS_REG, align 4
  %184 = call i32 @dsaf_read_dev(%struct.mac_driver* %182, i32 %183)
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 34
  store i32 %184, i32* %186, align 4
  %187 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %188 = load i32, i32* @GMAC_RX_PAUSE_MACCTRL_FRAM_REG, align 4
  %189 = call i32 @dsaf_read_dev(%struct.mac_driver* %187, i32 %188)
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 35
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %193 = load i32, i32* @GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG, align 4
  %194 = call i32 @dsaf_read_dev(%struct.mac_driver* %192, i32 %193)
  %195 = load i32*, i32** %5, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 36
  store i32 %194, i32* %196, align 4
  %197 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %198 = load i32, i32* @GMAC_RX_VERY_LONG_ERR_CNT_REG, align 4
  %199 = call i32 @dsaf_read_dev(%struct.mac_driver* %197, i32 %198)
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 37
  store i32 %199, i32* %201, align 4
  %202 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %203 = load i32, i32* @GMAC_RX_RUNT_ERR_CNT_REG, align 4
  %204 = call i32 @dsaf_read_dev(%struct.mac_driver* %202, i32 %203)
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 38
  store i32 %204, i32* %206, align 4
  %207 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %208 = load i32, i32* @GMAC_RX_SHORT_ERR_CNT_REG, align 4
  %209 = call i32 @dsaf_read_dev(%struct.mac_driver* %207, i32 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 39
  store i32 %209, i32* %211, align 4
  %212 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %213 = load i32, i32* @GMAC_RX_FILT_PKT_CNT_REG, align 4
  %214 = call i32 @dsaf_read_dev(%struct.mac_driver* %212, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 40
  store i32 %214, i32* %216, align 4
  %217 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %218 = load i32, i32* @GMAC_RX_OCTETS_TOTAL_FILT_REG, align 4
  %219 = call i32 @dsaf_read_dev(%struct.mac_driver* %217, i32 %218)
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 41
  store i32 %219, i32* %221, align 4
  %222 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %223 = load i32, i32* @GMAC_OCTETS_TRANSMITTED_OK_REG, align 4
  %224 = call i32 @dsaf_read_dev(%struct.mac_driver* %222, i32 %223)
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 42
  store i32 %224, i32* %226, align 4
  %227 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %228 = load i32, i32* @GMAC_OCTETS_TRANSMITTED_BAD_REG, align 4
  %229 = call i32 @dsaf_read_dev(%struct.mac_driver* %227, i32 %228)
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 43
  store i32 %229, i32* %231, align 4
  %232 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %233 = load i32, i32* @GMAC_TX_UC_PKTS_REG, align 4
  %234 = call i32 @dsaf_read_dev(%struct.mac_driver* %232, i32 %233)
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 44
  store i32 %234, i32* %236, align 4
  %237 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %238 = load i32, i32* @GMAC_TX_MC_PKTS_REG, align 4
  %239 = call i32 @dsaf_read_dev(%struct.mac_driver* %237, i32 %238)
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 45
  store i32 %239, i32* %241, align 4
  %242 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %243 = load i32, i32* @GMAC_TX_BC_PKTS_REG, align 4
  %244 = call i32 @dsaf_read_dev(%struct.mac_driver* %242, i32 %243)
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 46
  store i32 %244, i32* %246, align 4
  %247 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %248 = load i32, i32* @GMAC_TX_PKTS_64OCTETS_REG, align 4
  %249 = call i32 @dsaf_read_dev(%struct.mac_driver* %247, i32 %248)
  %250 = load i32*, i32** %5, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 47
  store i32 %249, i32* %251, align 4
  %252 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %253 = load i32, i32* @GMAC_TX_PKTS_65TO127OCTETS_REG, align 4
  %254 = call i32 @dsaf_read_dev(%struct.mac_driver* %252, i32 %253)
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 48
  store i32 %254, i32* %256, align 4
  %257 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %258 = load i32, i32* @GMAC_TX_PKTS_128TO255OCTETS_REG, align 4
  %259 = call i32 @dsaf_read_dev(%struct.mac_driver* %257, i32 %258)
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 49
  store i32 %259, i32* %261, align 4
  %262 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %263 = load i32, i32* @GMAC_TX_PKTS_255TO511OCTETS_REG, align 4
  %264 = call i32 @dsaf_read_dev(%struct.mac_driver* %262, i32 %263)
  %265 = load i32*, i32** %5, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 50
  store i32 %264, i32* %266, align 4
  %267 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %268 = load i32, i32* @GMAC_TX_PKTS_512TO1023OCTETS_REG, align 4
  %269 = call i32 @dsaf_read_dev(%struct.mac_driver* %267, i32 %268)
  %270 = load i32*, i32** %5, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 51
  store i32 %269, i32* %271, align 4
  %272 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %273 = load i32, i32* @GMAC_TX_PKTS_1024TO1518OCTETS_REG, align 4
  %274 = call i32 @dsaf_read_dev(%struct.mac_driver* %272, i32 %273)
  %275 = load i32*, i32** %5, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 52
  store i32 %274, i32* %276, align 4
  %277 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %278 = load i32, i32* @GMAC_TX_PKTS_1519TOMAXOCTETS_REG, align 4
  %279 = call i32 @dsaf_read_dev(%struct.mac_driver* %277, i32 %278)
  %280 = load i32*, i32** %5, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 53
  store i32 %279, i32* %281, align 4
  %282 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %283 = load i32, i32* @GMAC_TX_EXCESSIVE_LENGTH_DROP_REG, align 4
  %284 = call i32 @dsaf_read_dev(%struct.mac_driver* %282, i32 %283)
  %285 = load i32*, i32** %5, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 54
  store i32 %284, i32* %286, align 4
  %287 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %288 = load i32, i32* @GMAC_TX_UNDERRUN_REG, align 4
  %289 = call i32 @dsaf_read_dev(%struct.mac_driver* %287, i32 %288)
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 55
  store i32 %289, i32* %291, align 4
  %292 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %293 = load i32, i32* @GMAC_TX_TAGGED_REG, align 4
  %294 = call i32 @dsaf_read_dev(%struct.mac_driver* %292, i32 %293)
  %295 = load i32*, i32** %5, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 56
  store i32 %294, i32* %296, align 4
  %297 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %298 = load i32, i32* @GMAC_TX_CRC_ERROR_REG, align 4
  %299 = call i32 @dsaf_read_dev(%struct.mac_driver* %297, i32 %298)
  %300 = load i32*, i32** %5, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 57
  store i32 %299, i32* %301, align 4
  %302 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %303 = load i32, i32* @GMAC_TX_PAUSE_FRAMES_REG, align 4
  %304 = call i32 @dsaf_read_dev(%struct.mac_driver* %302, i32 %303)
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 58
  store i32 %304, i32* %306, align 4
  %307 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %308 = load i32, i32* @GAMC_RX_MAX_FRAME, align 4
  %309 = call i32 @dsaf_read_dev(%struct.mac_driver* %307, i32 %308)
  %310 = load i32*, i32** %5, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 59
  store i32 %309, i32* %311, align 4
  %312 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %313 = load i32, i32* @GMAC_LINE_LOOP_BACK_REG, align 4
  %314 = call i32 @dsaf_read_dev(%struct.mac_driver* %312, i32 %313)
  %315 = load i32*, i32** %5, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 60
  store i32 %314, i32* %316, align 4
  %317 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %318 = load i32, i32* @GMAC_CF_CRC_STRIP_REG, align 4
  %319 = call i32 @dsaf_read_dev(%struct.mac_driver* %317, i32 %318)
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 61
  store i32 %319, i32* %321, align 4
  %322 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %323 = load i32, i32* @GMAC_MODE_CHANGE_EN_REG, align 4
  %324 = call i32 @dsaf_read_dev(%struct.mac_driver* %322, i32 %323)
  %325 = load i32*, i32** %5, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 62
  store i32 %324, i32* %326, align 4
  %327 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %328 = load i32, i32* @GMAC_SIXTEEN_BIT_CNTR_REG, align 4
  %329 = call i32 @dsaf_read_dev(%struct.mac_driver* %327, i32 %328)
  %330 = load i32*, i32** %5, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 63
  store i32 %329, i32* %331, align 4
  %332 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %333 = load i32, i32* @GMAC_LD_LINK_COUNTER_REG, align 4
  %334 = call i32 @dsaf_read_dev(%struct.mac_driver* %332, i32 %333)
  %335 = load i32*, i32** %5, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 64
  store i32 %334, i32* %336, align 4
  %337 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %338 = load i32, i32* @GMAC_LOOP_REG, align 4
  %339 = call i32 @dsaf_read_dev(%struct.mac_driver* %337, i32 %338)
  %340 = load i32*, i32** %5, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 65
  store i32 %339, i32* %341, align 4
  %342 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %343 = load i32, i32* @GMAC_RECV_CONTROL_REG, align 4
  %344 = call i32 @dsaf_read_dev(%struct.mac_driver* %342, i32 %343)
  %345 = load i32*, i32** %5, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 66
  store i32 %344, i32* %346, align 4
  %347 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %348 = load i32, i32* @GMAC_VLAN_CODE_REG, align 4
  %349 = call i32 @dsaf_read_dev(%struct.mac_driver* %347, i32 %348)
  %350 = load i32*, i32** %5, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 67
  store i32 %349, i32* %351, align 4
  %352 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %353 = load i32, i32* @GMAC_RX_OVERRUN_CNT_REG, align 4
  %354 = call i32 @dsaf_read_dev(%struct.mac_driver* %352, i32 %353)
  %355 = load i32*, i32** %5, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 68
  store i32 %354, i32* %356, align 4
  %357 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %358 = load i32, i32* @GMAC_RX_LENGTHFIELD_ERR_CNT_REG, align 4
  %359 = call i32 @dsaf_read_dev(%struct.mac_driver* %357, i32 %358)
  %360 = load i32*, i32** %5, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 69
  store i32 %359, i32* %361, align 4
  %362 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %363 = load i32, i32* @GMAC_RX_FAIL_COMMA_CNT_REG, align 4
  %364 = call i32 @dsaf_read_dev(%struct.mac_driver* %362, i32 %363)
  %365 = load i32*, i32** %5, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 70
  store i32 %364, i32* %366, align 4
  %367 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %368 = load i32, i32* @GMAC_STATION_ADDR_LOW_0_REG, align 4
  %369 = call i32 @dsaf_read_dev(%struct.mac_driver* %367, i32 %368)
  %370 = load i32*, i32** %5, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 71
  store i32 %369, i32* %371, align 4
  %372 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %373 = load i32, i32* @GMAC_STATION_ADDR_HIGH_0_REG, align 4
  %374 = call i32 @dsaf_read_dev(%struct.mac_driver* %372, i32 %373)
  %375 = load i32*, i32** %5, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 72
  store i32 %374, i32* %376, align 4
  %377 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %378 = load i32, i32* @GMAC_STATION_ADDR_LOW_1_REG, align 4
  %379 = call i32 @dsaf_read_dev(%struct.mac_driver* %377, i32 %378)
  %380 = load i32*, i32** %5, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 73
  store i32 %379, i32* %381, align 4
  %382 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %383 = load i32, i32* @GMAC_STATION_ADDR_HIGH_1_REG, align 4
  %384 = call i32 @dsaf_read_dev(%struct.mac_driver* %382, i32 %383)
  %385 = load i32*, i32** %5, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 74
  store i32 %384, i32* %386, align 4
  %387 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %388 = load i32, i32* @GMAC_STATION_ADDR_LOW_2_REG, align 4
  %389 = call i32 @dsaf_read_dev(%struct.mac_driver* %387, i32 %388)
  %390 = load i32*, i32** %5, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 75
  store i32 %389, i32* %391, align 4
  %392 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %393 = load i32, i32* @GMAC_STATION_ADDR_HIGH_2_REG, align 4
  %394 = call i32 @dsaf_read_dev(%struct.mac_driver* %392, i32 %393)
  %395 = load i32*, i32** %5, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 76
  store i32 %394, i32* %396, align 4
  %397 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %398 = load i32, i32* @GMAC_STATION_ADDR_LOW_3_REG, align 4
  %399 = call i32 @dsaf_read_dev(%struct.mac_driver* %397, i32 %398)
  %400 = load i32*, i32** %5, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 77
  store i32 %399, i32* %401, align 4
  %402 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %403 = load i32, i32* @GMAC_STATION_ADDR_HIGH_3_REG, align 4
  %404 = call i32 @dsaf_read_dev(%struct.mac_driver* %402, i32 %403)
  %405 = load i32*, i32** %5, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 78
  store i32 %404, i32* %406, align 4
  %407 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %408 = load i32, i32* @GMAC_STATION_ADDR_LOW_4_REG, align 4
  %409 = call i32 @dsaf_read_dev(%struct.mac_driver* %407, i32 %408)
  %410 = load i32*, i32** %5, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 79
  store i32 %409, i32* %411, align 4
  %412 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %413 = load i32, i32* @GMAC_STATION_ADDR_HIGH_4_REG, align 4
  %414 = call i32 @dsaf_read_dev(%struct.mac_driver* %412, i32 %413)
  %415 = load i32*, i32** %5, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 80
  store i32 %414, i32* %416, align 4
  %417 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %418 = load i32, i32* @GMAC_STATION_ADDR_LOW_5_REG, align 4
  %419 = call i32 @dsaf_read_dev(%struct.mac_driver* %417, i32 %418)
  %420 = load i32*, i32** %5, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 81
  store i32 %419, i32* %421, align 4
  %422 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %423 = load i32, i32* @GMAC_STATION_ADDR_HIGH_5_REG, align 4
  %424 = call i32 @dsaf_read_dev(%struct.mac_driver* %422, i32 %423)
  %425 = load i32*, i32** %5, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 82
  store i32 %424, i32* %426, align 4
  %427 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %428 = load i32, i32* @GMAC_STATION_ADDR_LOW_MSK_0_REG, align 4
  %429 = call i32 @dsaf_read_dev(%struct.mac_driver* %427, i32 %428)
  %430 = load i32*, i32** %5, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 83
  store i32 %429, i32* %431, align 4
  %432 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %433 = load i32, i32* @GMAC_STATION_ADDR_HIGH_MSK_0_REG, align 4
  %434 = call i32 @dsaf_read_dev(%struct.mac_driver* %432, i32 %433)
  %435 = load i32*, i32** %5, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 84
  store i32 %434, i32* %436, align 4
  %437 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %438 = load i32, i32* @GMAC_STATION_ADDR_LOW_MSK_1_REG, align 4
  %439 = call i32 @dsaf_read_dev(%struct.mac_driver* %437, i32 %438)
  %440 = load i32*, i32** %5, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 85
  store i32 %439, i32* %441, align 4
  %442 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %443 = load i32, i32* @GMAC_STATION_ADDR_HIGH_MSK_1_REG, align 4
  %444 = call i32 @dsaf_read_dev(%struct.mac_driver* %442, i32 %443)
  %445 = load i32*, i32** %5, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 86
  store i32 %444, i32* %446, align 4
  %447 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %448 = load i32, i32* @GMAC_MAC_SKIP_LEN_REG, align 4
  %449 = call i32 @dsaf_read_dev(%struct.mac_driver* %447, i32 %448)
  %450 = load i32*, i32** %5, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 87
  store i32 %449, i32* %451, align 4
  %452 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %453 = load i32, i32* @GMAC_TX_LOOP_PKT_PRI_REG, align 4
  %454 = call i32 @dsaf_read_dev(%struct.mac_driver* %452, i32 %453)
  %455 = load i32*, i32** %5, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 88
  store i32 %454, i32* %456, align 4
  store i32 89, i32* %6, align 4
  br label %457

457:                                              ; preds = %465, %2
  %458 = load i32, i32* %6, align 4
  %459 = icmp slt i32 %458, 96
  br i1 %459, label %460, label %468

460:                                              ; preds = %457
  %461 = load i32*, i32** %5, align 8
  %462 = load i32, i32* %6, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  store i32 -1431655766, i32* %464, align 4
  br label %465

465:                                              ; preds = %460
  %466 = load i32, i32* %6, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %6, align 4
  br label %457

468:                                              ; preds = %457
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
