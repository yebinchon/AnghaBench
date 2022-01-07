; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@wlc_phy_workarounds_nphy_rev3.rfseq_tx2rx_events_rev3 = internal constant [8 x i32] [i32 137, i32 136, i32 131, i32 133, i32 132, i32 134, i32 140, i32 138], align 16
@wlc_phy_workarounds_nphy_rev3.rfseq_tx2rx_dlys_rev3 = internal constant [8 x i32] [i32 8, i32 4, i32 2, i32 2, i32 4, i32 4, i32 6, i32 1], align 16
@__const.wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_events_rev3 = private unnamed_addr constant [9 x i32] [i32 135, i32 134, i32 132, i32 140, i32 133, i32 131, i32 136, i32 137, i32 138], align 16
@__const.wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_dlys_rev3 = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 18, i32 42, i32 1, i32 1], align 16
@wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_events_rev3_ipa = internal constant [9 x i32] [i32 135, i32 134, i32 132, i32 140, i32 133, i32 131, i32 139, i32 136, i32 138], align 16
@wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_dlys_rev3_ipa = internal constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@wlc_phy_workarounds_nphy_rev3.dac_control = internal constant i32 2, align 4
@__const.wlc_phy_workarounds_nphy_rev3.aux_adc_vmid_rev4 = private unnamed_addr constant [4 x i32] [i32 162, i32 180, i32 180, i32 137], align 16
@__const.wlc_phy_workarounds_nphy_rev3.aux_adc_vmid_rev3 = private unnamed_addr constant [4 x i32] [i32 162, i32 180, i32 180, i32 137], align 16
@__const.wlc_phy_workarounds_nphy_rev3.aux_adc_gain_rev4 = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 0], align 16
@__const.wlc_phy_workarounds_nphy_rev3.aux_adc_gain_rev3 = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 0], align 16
@wlc_phy_workarounds_nphy_rev3.sk_adc_vmid = internal constant [4 x i32] [i32 180, i32 180, i32 180, i32 36], align 16
@wlc_phy_workarounds_nphy_rev3.sk_adc_gain = internal constant [4 x i32] [i32 2, i32 2, i32 2, i32 2], align 16
@NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL = common dso_local global i32 0, align 4
@NPHY_RFSEQ_TX2RX = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@NPHY_TBL_ID_NOISEVAR = common dso_local global i32 0, align 4
@noise_var_tbl_rev3 = common dso_local global i32* null, align 8
@NPHY_TBL_ID_AFECTRL = common dso_local global i32 0, align 4
@WL_CHAN_FREQ_RANGE_2G = common dso_local global i32 0, align 4
@__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_vmid = private unnamed_addr constant [4 x i32] [i32 162, i32 180, i32 180, i32 116], align 16
@__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_gain = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 4], align 16
@__const.wlc_phy_workarounds_nphy_rev3.auxadc_vmid = private unnamed_addr constant [4 x i32] [i32 162, i32 180, i32 180, i32 624], align 16
@__const.wlc_phy_workarounds_nphy_rev3.auxadc_gain = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 0], align 16
@__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_vmid.1 = private unnamed_addr constant [4 x i32] [i32 162, i32 180, i32 180, i32 0], align 16
@__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_gain.2 = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 0], align 16
@RADIO_2056_RX_MIXA_MAST_BIAS = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@RADIO_2056_RX_MIXA_BIAS_MAIN = common dso_local global i32 0, align 4
@RADIO_2056_RX_MIXA_BIAS_AUX = common dso_local global i32 0, align 4
@RADIO_2056_RX_MIXA_LOB_BIAS = common dso_local global i32 0, align 4
@RADIO_2056_RX_MIXA_CMFB_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_RX_MIXG_CMFB_IDAC = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@PHY_CORE_1 = common dso_local global i32 0, align 4
@BFL2_APLL_WAR = common dso_local global i32 0, align 4
@BFL2_GPLL_WAR = common dso_local global i32 0, align 4
@BFL2_GPLL_WAR2 = common dso_local global i32 0, align 4
@RADIO_2056_TX_GMBB_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@BFL2_SINGLEANT_CCK = common dso_local global i32 0, align 4
@MHF4 = common dso_local global i32 0, align 4
@MHF4_BPHY_TXCORE0 = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy_rev3(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [4 x i32], align 16
  %26 = alloca [4 x i32], align 16
  %27 = alloca [4 x i32], align 16
  %28 = alloca [4 x i32], align 16
  %29 = alloca [4 x i32], align 16
  %30 = alloca [4 x i32], align 16
  %31 = alloca [2 x i32], align 4
  %32 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %33 = bitcast [9 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([9 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_events_rev3 to i8*), i64 36, i1 false)
  %34 = bitcast [9 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([9 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_dlys_rev3 to i8*), i64 36, i1 false)
  store i32 0, i32* %15, align 4
  %35 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.aux_adc_vmid_rev4 to i8*), i64 16, i1 false)
  %36 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.aux_adc_vmid_rev3 to i8*), i64 16, i1 false)
  %37 = bitcast [4 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.aux_adc_gain_rev4 to i8*), i64 16, i1 false)
  %38 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.aux_adc_gain_rev3 to i8*), i64 16, i1 false)
  store i32 397, i32* %22, align 4
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 575, i32 504)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = call i32 @write_phy_reg(%struct.brcms_phy* %41, i32 576, i32 504)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = load i32, i32* @NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL, align 4
  %45 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %43, i32 %44, i32 1, i32 0, i32 32, i32* %11)
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 16777215
  store i32 %47, i32* %11, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = load i32, i32* @NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL, align 4
  %50 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %48, i32 %49, i32 1, i32 0, i32 32, i32* %11)
  store i32 293, i32* %5, align 4
  store i32 435, i32* %6, align 4
  store i32 261, i32* %7, align 4
  store i32 366, i32* %8, align 4
  store i32 205, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @write_phy_reg(%struct.brcms_phy* %51, i32 325, i32 %52)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @write_phy_reg(%struct.brcms_phy* %54, i32 326, i32 %55)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @write_phy_reg(%struct.brcms_phy* %57, i32 327, i32 %58)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @write_phy_reg(%struct.brcms_phy* %60, i32 328, i32 %61)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @write_phy_reg(%struct.brcms_phy* %63, i32 329, i32 %64)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @write_phy_reg(%struct.brcms_phy* %66, i32 330, i32 %67)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = call i32 @write_phy_reg(%struct.brcms_phy* %69, i32 56, i32 12)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = call i32 @write_phy_reg(%struct.brcms_phy* %71, i32 686, i32 12)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @NPHY_RFSEQ_TX2RX, align 4
  %75 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_tx2rx_events_rev3, i64 0, i64 0))
  %76 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %73, i32 %74, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_tx2rx_events_rev3, i64 0, i64 0), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_tx2rx_dlys_rev3, i64 0, i64 0), i32 %75)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i64 @PHY_IPA(%struct.brcms_phy* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %1
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = load i32, i32* @NPHY_RFSEQ_RX2TX, align 4
  %83 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_events_rev3_ipa, i64 0, i64 0))
  %84 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %81, i32 %82, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_events_rev3_ipa, i64 0, i64 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @wlc_phy_workarounds_nphy_rev3.rfseq_rx2tx_dlys_rev3_ipa, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %1
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %120

92:                                               ; preds = %85
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %97, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %92
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = call i64 @PHY_IPA(%struct.brcms_phy* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 5
  store i32 59, i32* %109, align 4
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 6
  store i32 1, i32* %110, align 8
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 7
  store i32 138, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = load i32, i32* @NPHY_RFSEQ_RX2TX, align 4
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %117 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %118 = call i32 @ARRAY_SIZE(i32* %117)
  %119 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %113, i32 %114, i32* %115, i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %112, %92, %85
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %122 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @CHSPEC_IS2G(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = call i32 @write_phy_reg(%struct.brcms_phy* %127, i32 106, i32 2)
  br label %132

129:                                              ; preds = %120
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = call i32 @write_phy_reg(%struct.brcms_phy* %130, i32 106, i32 40000)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = call i32 @mod_phy_reg(%struct.brcms_phy* %133, i32 660, i32 3840, i32 1792)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @CHSPEC_IS40(i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %143 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %141, i32 %142, i32 1, i32 3, i32 32, i32* %22)
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %146 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %144, i32 %145, i32 1, i32 127, i32 32, i32* %22)
  br label %160

147:                                              ; preds = %132
  %148 = load i32*, i32** @noise_var_tbl_rev3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %22, align 4
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %152 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %153 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %151, i32 %152, i32 1, i32 3, i32 32, i32* %22)
  %154 = load i32*, i32** @noise_var_tbl_rev3, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 127
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %22, align 4
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %159 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %157, i32 %158, i32 1, i32 127, i32 32, i32* %22)
  br label %160

160:                                              ; preds = %147, %140
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %162 = call i32 @wlc_phy_workarounds_nphy_gainctrl(%struct.brcms_phy* %161)
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %165 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %163, i32 %164, i32 1, i32 0, i32 16, i32* @wlc_phy_workarounds_nphy_rev3.dac_control)
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %167 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %168 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %166, i32 %167, i32 1, i32 16, i32 16, i32* @wlc_phy_workarounds_nphy_rev3.dac_control)
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @CHSPEC_IS5G(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %160
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  br label %184

179:                                              ; preds = %160
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  br label %184

184:                                              ; preds = %179, %174
  %185 = phi i32 [ %178, %174 ], [ %183, %179 ]
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %23, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %243

188:                                              ; preds = %184
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @NREV_GE(i32 %192, i32 4)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32* %196, i32** %18, align 8
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32* %197, i32** %21, align 8
  br label %201

198:                                              ; preds = %188
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32* %199, i32** %18, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32* %200, i32** %21, align 8
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %203 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %202, i32 0)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load i32, i32* %15, align 4
  switch i32 %208, label %224 [
    i32 129, label %209
    i32 128, label %214
    i32 130, label %219
  ]

209:                                              ; preds = %207
  %210 = load i32*, i32** %18, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  store i32 137, i32* %211, align 4
  %212 = load i32*, i32** %21, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  store i32 0, i32* %213, align 4
  br label %225

214:                                              ; preds = %207
  %215 = load i32*, i32** %18, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  store i32 137, i32* %216, align 4
  %217 = load i32*, i32** %21, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  store i32 0, i32* %218, align 4
  br label %225

219:                                              ; preds = %207
  %220 = load i32*, i32** %18, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 3
  store i32 137, i32* %221, align 4
  %222 = load i32*, i32** %21, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 0, i32* %223, align 4
  br label %225

224:                                              ; preds = %207
  br label %225

225:                                              ; preds = %224, %219, %214, %209
  br label %226

226:                                              ; preds = %225, %201
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %228 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %229 = load i32*, i32** %18, align 8
  %230 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %227, i32 %228, i32 4, i32 8, i32 16, i32* %229)
  %231 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %232 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %233 = load i32*, i32** %18, align 8
  %234 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %231, i32 %232, i32 4, i32 24, i32 16, i32* %233)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %235, i32 %236, i32 4, i32 12, i32 16, i32* %237)
  %239 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %240 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %241 = load i32*, i32** %21, align 8
  %242 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %239, i32 %240, i32 4, i32 28, i32 16, i32* %241)
  br label %437

243:                                              ; preds = %184
  %244 = load i32, i32* %23, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %248 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %249 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %247, i32 %248, i32 4, i32 8, i32 16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_rev3.sk_adc_vmid, i64 0, i64 0))
  %250 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %251 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %252 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %250, i32 %251, i32 4, i32 24, i32 16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_rev3.sk_adc_vmid, i64 0, i64 0))
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %254 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %255 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %253, i32 %254, i32 4, i32 12, i32 16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_rev3.sk_adc_gain, i64 0, i64 0))
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %257 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %258 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %256, i32 %257, i32 4, i32 28, i32 16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_rev3.sk_adc_gain, i64 0, i64 0))
  br label %436

259:                                              ; preds = %243
  %260 = load i32, i32* %23, align 4
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %312

262:                                              ; preds = %259
  %263 = bitcast [4 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %263, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_vmid to i8*), i64 16, i1 false)
  %264 = bitcast [4 x i32]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %264, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_gain to i8*), i64 16, i1 false)
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %266 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @NREV_GE(i32 %268, i32 6)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %262
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %273 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %272, i32 0)
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 142, i32* %278, align 4
  %279 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 3, i32* %279, align 4
  br label %283

280:                                              ; preds = %271
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 148, i32* %281, align 4
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 3, i32* %282, align 4
  br label %283

283:                                              ; preds = %280, %277
  br label %295

284:                                              ; preds = %262
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @NREV_IS(i32 %288, i32 5)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %284
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 132, i32* %292, align 4
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 2, i32* %293, align 4
  br label %294

294:                                              ; preds = %291, %284
  br label %295

295:                                              ; preds = %294, %283
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %297 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %299 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %296, i32 %297, i32 4, i32 8, i32 16, i32* %298)
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %301 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %303 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %300, i32 %301, i32 4, i32 24, i32 16, i32* %302)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %306 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %307 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %304, i32 %305, i32 4, i32 12, i32 16, i32* %306)
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %309 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %311 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %308, i32 %309, i32 4, i32 28, i32 16, i32* %310)
  br label %435

312:                                              ; preds = %259
  %313 = load i32, i32* %23, align 4
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %315, label %348

315:                                              ; preds = %312
  %316 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %317 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %316, i32 0)
  store i32 %317, i32* %15, align 4
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @NREV_GE(i32 %321, i32 4)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %347

324:                                              ; preds = %315
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %324
  %329 = bitcast [4 x i32]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %329, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.auxadc_vmid to i8*), i64 16, i1 false)
  %330 = bitcast [4 x i32]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %330, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.auxadc_gain to i8*), i64 16, i1 false)
  %331 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %332 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %334 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %331, i32 %332, i32 4, i32 8, i32 16, i32* %333)
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %336 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %338 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %335, i32 %336, i32 4, i32 24, i32 16, i32* %337)
  %339 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %340 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %342 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %339, i32 %340, i32 4, i32 12, i32 16, i32* %341)
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %344 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %346 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %343, i32 %344, i32 4, i32 28, i32 16, i32* %345)
  br label %347

347:                                              ; preds = %328, %324, %315
  br label %434

348:                                              ; preds = %312
  %349 = load i32, i32* %23, align 4
  %350 = icmp eq i32 %349, 4
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %23, align 4
  %353 = icmp eq i32 %352, 5
  br i1 %353, label %354, label %433

354:                                              ; preds = %351, %348
  %355 = bitcast [4 x i32]* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %355, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_vmid.1 to i8*), i64 16, i1 false)
  %356 = bitcast [4 x i32]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %356, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_rev3.bcm_adc_gain.2 to i8*), i64 16, i1 false)
  %357 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %358 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %357, i32 0)
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %354
  %363 = load i32, i32* %23, align 4
  %364 = icmp eq i32 %363, 4
  %365 = zext i1 %364 to i64
  %366 = select i1 %364, i32 142, i32 137
  %367 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 %366, i32* %367, align 4
  %368 = load i32, i32* %23, align 4
  %369 = icmp eq i32 %368, 4
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i32 150, i32 137
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 %371, i32* %372, align 4
  %373 = load i32, i32* %23, align 4
  %374 = icmp eq i32 %373, 4
  %375 = zext i1 %374 to i64
  %376 = select i1 %374, i32 2, i32 0
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  store i32 %376, i32* %377, align 4
  %378 = load i32, i32* %23, align 4
  %379 = icmp eq i32 %378, 4
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i32 2, i32 0
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  store i32 %381, i32* %382, align 4
  br label %404

383:                                              ; preds = %354
  %384 = load i32, i32* %23, align 4
  %385 = icmp eq i32 %384, 4
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, i32 137, i32 116
  %388 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 %387, i32* %388, align 4
  %389 = load i32, i32* %23, align 4
  %390 = icmp eq i32 %389, 4
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i32 139, i32 112
  %393 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 %392, i32* %393, align 4
  %394 = load i32, i32* %23, align 4
  %395 = icmp eq i32 %394, 4
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 2, i32 0
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  store i32 %397, i32* %398, align 4
  %399 = load i32, i32* %23, align 4
  %400 = icmp eq i32 %399, 4
  %401 = zext i1 %400 to i64
  %402 = select i1 %400, i32 2, i32 0
  %403 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %383, %362
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  store i32 %406, i32* %407, align 4
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 3
  store i32 %409, i32* %410, align 4
  %411 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %412 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %414 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %411, i32 %412, i32 4, i32 8, i32 16, i32* %413)
  %415 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %416 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %417 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  %418 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %415, i32 %416, i32 4, i32 12, i32 16, i32* %417)
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  store i32 %420, i32* %421, align 4
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %423 = load i32, i32* %422, align 4
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 3
  store i32 %423, i32* %424, align 4
  %425 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %426 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %428 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %425, i32 %426, i32 4, i32 24, i32 16, i32* %427)
  %429 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %430 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  %432 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %429, i32 %430, i32 4, i32 28, i32 16, i32* %431)
  br label %433

433:                                              ; preds = %404, %351
  br label %434

434:                                              ; preds = %433, %347
  br label %435

435:                                              ; preds = %434, %295
  br label %436

436:                                              ; preds = %435, %246
  br label %437

437:                                              ; preds = %436, %226
  %438 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %439 = load i32, i32* @RADIO_2056_RX_MIXA_MAST_BIAS, align 4
  %440 = load i32, i32* @RADIO_2056_RX0, align 4
  %441 = or i32 %439, %440
  %442 = call i32 @write_radio_reg(%struct.brcms_phy* %438, i32 %441, i32 0)
  %443 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %444 = load i32, i32* @RADIO_2056_RX_MIXA_MAST_BIAS, align 4
  %445 = load i32, i32* @RADIO_2056_RX1, align 4
  %446 = or i32 %444, %445
  %447 = call i32 @write_radio_reg(%struct.brcms_phy* %443, i32 %446, i32 0)
  %448 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %449 = load i32, i32* @RADIO_2056_RX_MIXA_BIAS_MAIN, align 4
  %450 = load i32, i32* @RADIO_2056_RX0, align 4
  %451 = or i32 %449, %450
  %452 = call i32 @write_radio_reg(%struct.brcms_phy* %448, i32 %451, i32 6)
  %453 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %454 = load i32, i32* @RADIO_2056_RX_MIXA_BIAS_MAIN, align 4
  %455 = load i32, i32* @RADIO_2056_RX1, align 4
  %456 = or i32 %454, %455
  %457 = call i32 @write_radio_reg(%struct.brcms_phy* %453, i32 %456, i32 6)
  %458 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %459 = load i32, i32* @RADIO_2056_RX_MIXA_BIAS_AUX, align 4
  %460 = load i32, i32* @RADIO_2056_RX0, align 4
  %461 = or i32 %459, %460
  %462 = call i32 @write_radio_reg(%struct.brcms_phy* %458, i32 %461, i32 7)
  %463 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %464 = load i32, i32* @RADIO_2056_RX_MIXA_BIAS_AUX, align 4
  %465 = load i32, i32* @RADIO_2056_RX1, align 4
  %466 = or i32 %464, %465
  %467 = call i32 @write_radio_reg(%struct.brcms_phy* %463, i32 %466, i32 7)
  %468 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %469 = load i32, i32* @RADIO_2056_RX_MIXA_LOB_BIAS, align 4
  %470 = load i32, i32* @RADIO_2056_RX0, align 4
  %471 = or i32 %469, %470
  %472 = call i32 @write_radio_reg(%struct.brcms_phy* %468, i32 %471, i32 136)
  %473 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %474 = load i32, i32* @RADIO_2056_RX_MIXA_LOB_BIAS, align 4
  %475 = load i32, i32* @RADIO_2056_RX1, align 4
  %476 = or i32 %474, %475
  %477 = call i32 @write_radio_reg(%struct.brcms_phy* %473, i32 %476, i32 136)
  %478 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %479 = load i32, i32* @RADIO_2056_RX_MIXA_CMFB_IDAC, align 4
  %480 = load i32, i32* @RADIO_2056_RX0, align 4
  %481 = or i32 %479, %480
  %482 = call i32 @write_radio_reg(%struct.brcms_phy* %478, i32 %481, i32 0)
  %483 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %484 = load i32, i32* @RADIO_2056_RX_MIXA_CMFB_IDAC, align 4
  %485 = load i32, i32* @RADIO_2056_RX1, align 4
  %486 = or i32 %484, %485
  %487 = call i32 @write_radio_reg(%struct.brcms_phy* %483, i32 %486, i32 0)
  %488 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %489 = load i32, i32* @RADIO_2056_RX_MIXG_CMFB_IDAC, align 4
  %490 = load i32, i32* @RADIO_2056_RX0, align 4
  %491 = or i32 %489, %490
  %492 = call i32 @write_radio_reg(%struct.brcms_phy* %488, i32 %491, i32 0)
  %493 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %494 = load i32, i32* @RADIO_2056_RX_MIXG_CMFB_IDAC, align 4
  %495 = load i32, i32* @RADIO_2056_RX1, align 4
  %496 = or i32 %494, %495
  %497 = call i32 @write_radio_reg(%struct.brcms_phy* %493, i32 %496, i32 0)
  %498 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %499 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 8
  %501 = call i64 @CHSPEC_IS5G(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %437
  %504 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %505 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  br label %513

508:                                              ; preds = %437
  %509 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %510 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %509, i32 0, i32 4
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  br label %513

513:                                              ; preds = %508, %503
  %514 = phi i32 [ %507, %503 ], [ %512, %508 ]
  store i32 %514, i32* %24, align 4
  %515 = load i32, i32* %24, align 4
  %516 = icmp eq i32 %515, 7
  br i1 %516, label %517, label %524

517:                                              ; preds = %513
  %518 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %519 = load i32, i32* @PHY_CORE_0, align 4
  %520 = call i32 @wlc_phy_war_force_trsw_to_R_cliplo_nphy(%struct.brcms_phy* %518, i32 %519)
  %521 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %522 = load i32, i32* @PHY_CORE_1, align 4
  %523 = call i32 @wlc_phy_war_force_trsw_to_R_cliplo_nphy(%struct.brcms_phy* %521, i32 %522)
  br label %524

524:                                              ; preds = %517, %513
  %525 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %526 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %527 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %526, i32 0, i32 0
  %528 = load %struct.TYPE_8__*, %struct.TYPE_8__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @wlc_phy_war_txchain_upd_nphy(%struct.brcms_phy* %525, i32 %530)
  %532 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %533 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %532, i32 0, i32 0
  %534 = load %struct.TYPE_8__*, %struct.TYPE_8__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @BFL2_APLL_WAR, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %524
  %541 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %542 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 8
  %544 = call i64 @CHSPEC_IS5G(i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %570, label %546

546:                                              ; preds = %540, %524
  %547 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %548 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %547, i32 0, i32 0
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* @BFL2_GPLL_WAR, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %546
  %556 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %557 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %556, i32 0, i32 0
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* @BFL2_GPLL_WAR2, align 4
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %571

564:                                              ; preds = %555, %546
  %565 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %566 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 8
  %568 = call i64 @CHSPEC_IS2G(i32 %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %564, %540
  store i32 559240, i32* %13, align 4
  store i32 559240, i32* %12, align 4
  store i32 559240, i32* %14, align 4
  br label %572

571:                                              ; preds = %564, %555
  store i32 -2004318072, i32* %13, align 4
  store i32 -2004318072, i32* %12, align 4
  store i32 -2004318072, i32* %14, align 4
  br label %572

572:                                              ; preds = %571, %570
  %573 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %574 = load i32, i32* @NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL, align 4
  %575 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %573, i32 %574, i32 1, i32 1, i32 32, i32* %13)
  %576 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %577 = load i32, i32* @NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL, align 4
  %578 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %576, i32 %577, i32 1, i32 2, i32 32, i32* %12)
  %579 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %580 = load i32, i32* @NPHY_TBL_ID_CMPMETRICDATAWEIGHTTBL, align 4
  %581 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %579, i32 %580, i32 1, i32 3, i32 32, i32* %14)
  %582 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %583 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = call i64 @NREV_IS(i32 %585, i32 4)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %606

588:                                              ; preds = %572
  %589 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %590 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %589, i32 0, i32 3
  %591 = load i32, i32* %590, align 8
  %592 = call i64 @CHSPEC_IS5G(i32 %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %605

594:                                              ; preds = %588
  %595 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %596 = load i32, i32* @RADIO_2056_TX_GMBB_IDAC, align 4
  %597 = load i32, i32* @RADIO_2056_TX0, align 4
  %598 = or i32 %596, %597
  %599 = call i32 @write_radio_reg(%struct.brcms_phy* %595, i32 %598, i32 112)
  %600 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %601 = load i32, i32* @RADIO_2056_TX_GMBB_IDAC, align 4
  %602 = load i32, i32* @RADIO_2056_TX1, align 4
  %603 = or i32 %601, %602
  %604 = call i32 @write_radio_reg(%struct.brcms_phy* %600, i32 %603, i32 112)
  br label %605

605:                                              ; preds = %594, %588
  br label %606

606:                                              ; preds = %605, %572
  %607 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %608 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %636, label %611

611:                                              ; preds = %606
  %612 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %613 = call i32 @write_phy_reg(%struct.brcms_phy* %612, i32 548, i32 1003)
  %614 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %615 = call i32 @write_phy_reg(%struct.brcms_phy* %614, i32 549, i32 1003)
  %616 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %617 = call i32 @write_phy_reg(%struct.brcms_phy* %616, i32 550, i32 833)
  %618 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %619 = call i32 @write_phy_reg(%struct.brcms_phy* %618, i32 551, i32 833)
  %620 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %621 = call i32 @write_phy_reg(%struct.brcms_phy* %620, i32 552, i32 1067)
  %622 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %623 = call i32 @write_phy_reg(%struct.brcms_phy* %622, i32 553, i32 1067)
  %624 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %625 = call i32 @write_phy_reg(%struct.brcms_phy* %624, i32 554, i32 897)
  %626 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %627 = call i32 @write_phy_reg(%struct.brcms_phy* %626, i32 555, i32 897)
  %628 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %629 = call i32 @write_phy_reg(%struct.brcms_phy* %628, i32 556, i32 1067)
  %630 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %631 = call i32 @write_phy_reg(%struct.brcms_phy* %630, i32 557, i32 1067)
  %632 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %633 = call i32 @write_phy_reg(%struct.brcms_phy* %632, i32 558, i32 897)
  %634 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %635 = call i32 @write_phy_reg(%struct.brcms_phy* %634, i32 559, i32 897)
  br label %636

636:                                              ; preds = %611, %606
  %637 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %638 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 8
  %641 = call i64 @NREV_GE(i32 %640, i32 6)
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %664

643:                                              ; preds = %636
  %644 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %645 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %644, i32 0, i32 0
  %646 = load %struct.TYPE_8__*, %struct.TYPE_8__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 2
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* @BFL2_SINGLEANT_CCK, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %663

652:                                              ; preds = %643
  %653 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %654 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %653, i32 0, i32 0
  %655 = load %struct.TYPE_8__*, %struct.TYPE_8__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %655, i32 0, i32 3
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* @MHF4, align 4
  %659 = load i32, i32* @MHF4_BPHY_TXCORE0, align 4
  %660 = load i32, i32* @MHF4_BPHY_TXCORE0, align 4
  %661 = load i32, i32* @BRCM_BAND_ALL, align 4
  %662 = call i32 @wlapi_bmac_mhf(i32 %657, i32 %658, i32 %659, i32 %660, i32 %661)
  br label %663

663:                                              ; preds = %652, %643
  br label %664

664:                                              ; preds = %663, %636
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #2

declare dso_local i64 @CHSPEC_IS2G(i32) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i32 @wlc_phy_workarounds_nphy_gainctrl(%struct.brcms_phy*) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i64 @NREV_IS(i32, i32) #2

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_war_force_trsw_to_R_cliplo_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @wlc_phy_war_txchain_upd_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
