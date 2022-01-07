; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_8__, i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NPHY_RFSEQ_CMD_RX_GAIN = common dso_local global i32 0, align 4
@NPHY_RFSEQ_CMD_CLR_HIQ_DIS = common dso_local global i32 0, align 4
@NPHY_RFSEQ_CMD_SET_HPF_BW = common dso_local global i32 0, align 4
@wlc_phy_workarounds_nphy_gainctrl.rfseq_updategainu_dlys = internal constant [3 x i32] [i32 10, i32 30, i32 1], align 4
@wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db = internal constant [4 x i32] [i32 7, i32 11, i32 16, i32 23], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev4 = internal constant [4 x i32] [i32 8, i32 12, i32 17, i32 25], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev5 = internal constant [4 x i32] [i32 9, i32 13, i32 18, i32 26], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev6 = internal constant [4 x i32] [i32 8, i32 13, i32 18, i32 25], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev6_224B0 = internal constant [4 x i32] [i32 10, i32 14, i32 19, i32 27], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db = internal constant [4 x i32] [i32 7, i32 11, i32 17, i32 23], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev4 = internal constant [4 x i32] [i32 8, i32 12, i32 18, i32 23], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev5 = internal constant [4 x i32] [i32 6, i32 10, i32 16, i32 21], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev6 = internal constant [4 x i32] [i32 6, i32 10, i32 16, i32 21], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db = internal constant [4 x i32] [i32 -5, i32 6, i32 10, i32 14], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev5 = internal constant [4 x i32] [i32 -3, i32 7, i32 11, i32 16], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev6 = internal constant [4 x i32] [i32 -5, i32 6, i32 10, i32 14], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev6_224B0 = internal constant [4 x i32] [i32 -5, i32 6, i32 10, i32 15], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db = internal constant [4 x i32] [i32 -6, i32 2, i32 6, i32 10], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev4 = internal constant [4 x i32] [i32 -5, i32 2, i32 6, i32 10], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev5 = internal constant [4 x i32] [i32 -7, i32 0, i32 4, i32 8], align 16
@wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev6 = internal constant [4 x i32] [i32 -7, i32 0, i32 4, i32 8], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaG_gain_db = internal constant [10 x i32] [i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db = internal constant [10 x i32] [i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19, i32 19], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev4 = internal constant [10 x i32] [i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev5 = internal constant [10 x i32] [i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev6 = internal constant [10 x i32] [i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaG_gainbits = internal constant [10 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits = internal constant [10 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev4 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev5 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev6 = internal constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@wlc_phy_workarounds_nphy_gainctrl.lpf_gain_db = internal constant [6 x i32] [i32 0, i32 6, i32 12, i32 18, i32 18, i32 18], align 16
@wlc_phy_workarounds_nphy_gainctrl.lpf_gainbits = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 3], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain = internal constant [4 x i32] [i32 24895, i32 24895, i32 24895, i32 24895], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev4 = internal constant [4 x i32] [i32 20799, i32 20799, i32 20799, i32 20799], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev5 = internal constant [4 x i32] [i32 16703, i32 16703, i32 16703, i32 16703], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev5_elna = internal constant [4 x i32] [i32 319, i32 319, i32 319, i32 319], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6 = internal constant [2 x i32] [i32 20799, i32 20799], align 4
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6_224B0 = internal constant [2 x i32] [i32 16703, i32 16703], align 4
@wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6_elna = internal constant [2 x i32] [i32 4415, i32 4415], align 4
@wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain = internal constant [4 x i32] [i32 20847, i32 20847, i32 20847, i32 20847], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev4 = internal constant [4 x i32] [i32 24911, i32 24911, i32 24911, i32 24911], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev4_elna = internal constant [4 x i32] [i32 12623, i32 12623, i32 12623, i32 12623], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev5 = internal constant [4 x i32] [i32 29007, i32 29007, i32 29007, i32 29007], align 16
@wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev6 = internal constant [2 x i32] [i32 29007, i32 29007], align 4
@wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5 = internal constant [8 x i32] [i32 98, i32 100, i32 106, i32 4202, i32 4204, i32 4212, i32 4220, i32 8316], align 16
@wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6 = internal constant [8 x i32] [i32 4202, i32 4204, i32 4212, i32 4220, i32 126, i32 4222, i32 8318, i32 12414], align 16
@NPHY_BandControl_currentBand = common dso_local global i32 0, align 4
@BFL_EXTLNA = common dso_local global i32 0, align 4
@BFL_EXTLNA_5GHz = common dso_local global i32 0, align 4
@RADIO_2056_RX_BIASPOLE_LNAG1_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG2_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_RX_RSSI_POLE = common dso_local global i32 0, align 4
@RADIO_2056_RX_RSSI_GAIN = common dso_local global i32 0, align 4
@RADIO_2056_RX_BIASPOLE_LNAA1_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA2_IDAC = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN2 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS2 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_RSSICAL_W1_TARGET = common dso_local global i32 0, align 4
@NPHY_RFSEQ_UPDATEGAINU = common dso_local global i32 0, align 4
@NPHY_TO_BPHY_OFF = common dso_local global i32 0, align 4
@BPHY_OPTIONAL_MODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy_gainctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy_gainctrl(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca [21 x i32], align 16
  %93 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %95 = load i32, i32* @NPHY_RFSEQ_CMD_RX_GAIN, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %94, i64 1
  %97 = load i32, i32* @NPHY_RFSEQ_CMD_CLR_HIQ_DIS, align 4
  store i32 %97, i32* %96, align 4
  %98 = getelementptr inbounds i32, i32* %96, i64 1
  %99 = load i32, i32* @NPHY_RFSEQ_CMD_SET_HPF_BW, align 4
  store i32 %99, i32* %98, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 25214, i32* %13, align 4
  store i32 21118, i32* %14, align 4
  store i32 17022, i32* %15, align 4
  store i32 638, i32* %16, align 4
  store i32 21118, i32* %17, align 4
  store i32 17022, i32* %18, align 4
  store i32 4734, i32* %19, align 4
  store i32 21214, i32* %20, align 4
  store i32 25246, i32* %21, align 4
  store i32 12958, i32* %22, align 4
  store i32 29342, i32* %23, align 4
  store i32 29342, i32* %24, align 4
  store i32 4222, i32* %26, align 4
  store i32 126, i32* %27, align 4
  store i32 4214, i32* %28, align 4
  store i32 126, i32* %29, align 4
  store i32 222, i32* %30, align 4
  store i32 670, i32* %31, align 4
  store i32 670, i32* %32, align 4
  store i32 670, i32* %33, align 4
  store i32 102, i32* %35, align 4
  store i32 202, i32* %36, align 4
  store i32 4228, i32* %37, align 4
  store i32 8324, i32* %38, align 4
  store i32 8324, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 116, i32* %41, align 4
  store i32 4212, i32* %42, align 4
  store i32 204, i32* %43, align 4
  store i32 134, i32* %44, align 4
  store i32 8326, i32* %45, align 4
  store i32 8326, i32* %46, align 4
  store i32 24, i32* %48, align 4
  store i32 24, i32* %49, align 4
  store i32 24, i32* %50, align 4
  store i32 30, i32* %51, align 4
  store i32 36, i32* %52, align 4
  store i32 36, i32* %53, align 4
  store i32 36, i32* %54, align 4
  store i32 24, i32* %56, align 4
  store i32 24, i32* %57, align 4
  store i32 24, i32* %58, align 4
  store i32 30, i32* %59, align 4
  store i32 36, i32* %60, align 4
  store i32 36, i32* %61, align 4
  store i32 36, i32* %62, align 4
  store i32 0, i32* %63, align 4
  store i32 24, i32* %64, align 4
  store i32 24, i32* %65, align 4
  store i32 24, i32* %66, align 4
  store i32 30, i32* %67, align 4
  store i32 36, i32* %68, align 4
  store i32 36, i32* %69, align 4
  store i32 36, i32* %70, align 4
  store i32 45, i32* %71, align 4
  store i32 525, i32* %73, align 4
  store i32 417, i32* %74, align 4
  store i32 464, i32* %75, align 4
  store i32 464, i32* %76, align 4
  store i32 417, i32* %77, align 4
  store i32 263, i32* %78, align 4
  store i32 169, i32* %79, align 4
  store i32 240, i32* %80, align 4
  store i32 0, i32* %81, align 4
  store i32 5, i32* %82, align 4
  store i32 9, i32* %83, align 4
  store i32 5, i32* %84, align 4
  store i32 25, i32* %85, align 4
  store i32 80, i32* %87, align 4
  store i32 80, i32* %88, align 4
  store i32 144, i32* %89, align 4
  store i32 144, i32* %90, align 4
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @CHSPEC_IS5G(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %1
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %115

110:                                              ; preds = %1
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i32 [ %109, %105 ], [ %114, %110 ]
  store i32 %116, i32* %93, align 4
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @NREV_GE(i32 %120, i32 7)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %177

123:                                              ; preds = %115
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %125 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 5
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = call i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev5(%struct.brcms_phy* %130)
  br label %176

132:                                              ; preds = %123
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 7
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %140 = call i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy* %139)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = call i32 @mod_phy_reg(%struct.brcms_phy* %141, i32 643, i32 255, i32 68)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = call i32 @mod_phy_reg(%struct.brcms_phy* %143, i32 640, i32 255, i32 68)
  br label %175

145:                                              ; preds = %132
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 8
  br i1 %156, label %157, label %171

157:                                              ; preds = %151, %145
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %159 = call i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy* %158)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %167 = call i32 @mod_phy_reg(%struct.brcms_phy* %166, i32 643, i32 255, i32 68)
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = call i32 @mod_phy_reg(%struct.brcms_phy* %168, i32 640, i32 255, i32 68)
  br label %170

170:                                              ; preds = %165, %157
  br label %174

171:                                              ; preds = %151
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = call i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy* %172)
  br label %174

174:                                              ; preds = %171, %170
  br label %175

175:                                              ; preds = %174, %138
  br label %176

176:                                              ; preds = %175, %129
  br label %805

177:                                              ; preds = %115
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @NREV_GE(i32 %181, i32 3)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %599

184:                                              ; preds = %177
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = call i32 @mod_phy_reg(%struct.brcms_phy* %185, i32 160, i32 64, i32 64)
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %188 = call i32 @mod_phy_reg(%struct.brcms_phy* %187, i32 28, i32 8192, i32 8192)
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = call i32 @mod_phy_reg(%struct.brcms_phy* %189, i32 50, i32 8192, i32 8192)
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %192 = call i32 @read_phy_reg(%struct.brcms_phy* %191, i32 9)
  %193 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %194 = and i32 %192, %193
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %340

197:                                              ; preds = %184
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @NREV_GE(i32 %201, i32 6)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %261

204:                                              ; preds = %197
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %206 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 11
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev6_224B0, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev6_224B0, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6_224B0, i64 0, i64 0), i32** %12, align 8
  %211 = load i32, i32* %18, align 4
  store i32 %211, i32* %25, align 4
  %212 = load i32, i32* %29, align 4
  store i32 %212, i32* %34, align 4
  %213 = load i32, i32* %42, align 4
  store i32 %213, i32* %47, align 4
  %214 = load i32, i32* %76, align 4
  store i32 %214, i32* %81, align 4
  %215 = load i32, i32* %84, align 4
  store i32 %215, i32* %86, align 4
  %216 = load i32, i32* %50, align 4
  store i32 %216, i32* %55, align 4
  %217 = load i32, i32* %58, align 4
  store i32 %217, i32* %63, align 4
  %218 = load i32, i32* %66, align 4
  store i32 %218, i32* %72, align 4
  %219 = load i32, i32* %88, align 4
  store i32 %219, i32* %91, align 4
  br label %260

220:                                              ; preds = %204
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev6, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev6, i64 0, i64 0), i32** %9, align 8
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @BFL_EXTLNA, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %220
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6_elna, i64 0, i64 0), i32** %12, align 8
  %230 = load i32, i32* %19, align 4
  store i32 %230, i32* %25, align 4
  br label %233

231:                                              ; preds = %220
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev6, i64 0, i64 0), i32** %12, align 8
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %25, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = load i32, i32* %29, align 4
  store i32 %234, i32* %34, align 4
  %235 = load i32, i32* %93, align 4
  switch i32 %235, label %243 [
    i32 0, label %236
    i32 1, label %238
    i32 2, label %240
    i32 3, label %242
    i32 4, label %245
    i32 5, label %247
    i32 6, label %249
    i32 7, label %251
  ]

236:                                              ; preds = %233
  %237 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 0), align 16
  store i32 %237, i32* %47, align 4
  br label %253

238:                                              ; preds = %233
  %239 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 1), align 4
  store i32 %239, i32* %47, align 4
  br label %253

240:                                              ; preds = %233
  %241 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 2), align 8
  store i32 %241, i32* %47, align 4
  br label %253

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %233, %242
  %244 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 3), align 4
  store i32 %244, i32* %47, align 4
  br label %253

245:                                              ; preds = %233
  %246 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 4), align 16
  store i32 %246, i32* %47, align 4
  br label %253

247:                                              ; preds = %233
  %248 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 5), align 4
  store i32 %248, i32* %47, align 4
  br label %253

249:                                              ; preds = %233
  %250 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 6), align 8
  store i32 %250, i32* %47, align 4
  br label %253

251:                                              ; preds = %233
  %252 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev6, i64 0, i64 7), align 4
  store i32 %252, i32* %47, align 4
  br label %253

253:                                              ; preds = %251, %249, %247, %245, %243, %240, %238, %236
  %254 = load i32, i32* %76, align 4
  store i32 %254, i32* %81, align 4
  %255 = load i32, i32* %84, align 4
  store i32 %255, i32* %86, align 4
  %256 = load i32, i32* %50, align 4
  store i32 %256, i32* %55, align 4
  %257 = load i32, i32* %58, align 4
  store i32 %257, i32* %63, align 4
  %258 = load i32, i32* %66, align 4
  store i32 %258, i32* %72, align 4
  %259 = load i32, i32* %87, align 4
  store i32 %259, i32* %91, align 4
  br label %260

260:                                              ; preds = %253, %210
  br label %338

261:                                              ; preds = %197
  %262 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %263 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @NREV_IS(i32 %265, i32 5)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %309

268:                                              ; preds = %261
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev5, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db_rev5, i64 0, i64 0), i32** %9, align 8
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %270 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %269, i32 0, i32 4
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @BFL_EXTLNA, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %268
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev5_elna, i64 0, i64 0), i32** %12, align 8
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %25, align 4
  br label %281

279:                                              ; preds = %268
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev5, i64 0, i64 0), i32** %12, align 8
  %280 = load i32, i32* %15, align 4
  store i32 %280, i32* %25, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = load i32, i32* %28, align 4
  store i32 %282, i32* %34, align 4
  %283 = load i32, i32* %93, align 4
  switch i32 %283, label %300 [
    i32 0, label %284
    i32 1, label %286
    i32 2, label %288
    i32 3, label %290
    i32 4, label %292
    i32 5, label %294
    i32 6, label %296
    i32 7, label %298
  ]

284:                                              ; preds = %281
  %285 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 0), align 16
  store i32 %285, i32* %47, align 4
  br label %302

286:                                              ; preds = %281
  %287 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 1), align 4
  store i32 %287, i32* %47, align 4
  br label %302

288:                                              ; preds = %281
  %289 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 2), align 8
  store i32 %289, i32* %47, align 4
  br label %302

290:                                              ; preds = %281
  %291 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 3), align 4
  store i32 %291, i32* %47, align 4
  br label %302

292:                                              ; preds = %281
  %293 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 4), align 16
  store i32 %293, i32* %47, align 4
  br label %302

294:                                              ; preds = %281
  %295 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 5), align 4
  store i32 %295, i32* %47, align 4
  br label %302

296:                                              ; preds = %281
  %297 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 6), align 8
  store i32 %297, i32* %47, align 4
  br label %302

298:                                              ; preds = %281
  %299 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 7), align 4
  store i32 %299, i32* %47, align 4
  br label %302

300:                                              ; preds = %281
  %301 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @wlc_phy_workarounds_nphy_gainctrl.clip1loG_gaincode_rev5, i64 0, i64 3), align 4
  store i32 %301, i32* %47, align 4
  br label %302

302:                                              ; preds = %300, %298, %296, %294, %292, %290, %288, %286, %284
  %303 = load i32, i32* %75, align 4
  store i32 %303, i32* %81, align 4
  %304 = load i32, i32* %83, align 4
  store i32 %304, i32* %86, align 4
  %305 = load i32, i32* %49, align 4
  store i32 %305, i32* %55, align 4
  %306 = load i32, i32* %57, align 4
  store i32 %306, i32* %63, align 4
  %307 = load i32, i32* %65, align 4
  store i32 %307, i32* %72, align 4
  %308 = load i32, i32* %87, align 4
  store i32 %308, i32* %91, align 4
  br label %337

309:                                              ; preds = %261
  %310 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %311 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call i64 @NREV_IS(i32 %313, i32 4)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db_rev4, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain_rev4, i64 0, i64 0), i32** %12, align 8
  %317 = load i32, i32* %14, align 4
  store i32 %317, i32* %25, align 4
  %318 = load i32, i32* %27, align 4
  store i32 %318, i32* %34, align 4
  %319 = load i32, i32* %41, align 4
  store i32 %319, i32* %47, align 4
  %320 = load i32, i32* %74, align 4
  store i32 %320, i32* %81, align 4
  %321 = load i32, i32* %82, align 4
  store i32 %321, i32* %86, align 4
  %322 = load i32, i32* %48, align 4
  store i32 %322, i32* %55, align 4
  %323 = load i32, i32* %56, align 4
  store i32 %323, i32* %63, align 4
  %324 = load i32, i32* %64, align 4
  store i32 %324, i32* %72, align 4
  %325 = load i32, i32* %87, align 4
  store i32 %325, i32* %91, align 4
  br label %336

326:                                              ; preds = %309
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1G_gain_db, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2G_gain_db, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqG_init_gain, i64 0, i64 0), i32** %12, align 8
  %327 = load i32, i32* %13, align 4
  store i32 %327, i32* %25, align 4
  %328 = load i32, i32* %26, align 4
  store i32 %328, i32* %34, align 4
  %329 = load i32, i32* %41, align 4
  store i32 %329, i32* %47, align 4
  %330 = load i32, i32* %73, align 4
  store i32 %330, i32* %81, align 4
  %331 = load i32, i32* %82, align 4
  store i32 %331, i32* %86, align 4
  %332 = load i32, i32* %48, align 4
  store i32 %332, i32* %55, align 4
  %333 = load i32, i32* %56, align 4
  store i32 %333, i32* %63, align 4
  %334 = load i32, i32* %64, align 4
  store i32 %334, i32* %72, align 4
  %335 = load i32, i32* %87, align 4
  store i32 %335, i32* %91, align 4
  br label %336

336:                                              ; preds = %326, %316
  br label %337

337:                                              ; preds = %336, %302
  br label %338

338:                                              ; preds = %337, %260
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaG_gain_db, i64 0, i64 0), i32** %10, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaG_gainbits, i64 0, i64 0), i32** %11, align 8
  %339 = load i32, i32* %35, align 4
  store i32 %339, i32* %40, align 4
  br label %432

340:                                              ; preds = %184
  %341 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %342 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @NREV_GE(i32 %344, i32 6)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %372

347:                                              ; preds = %340
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev6, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev6, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev6, i64 0, i64 0), i32** %10, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev6, i64 0, i64 0), i32** %11, align 8
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev6, i64 0, i64 0), i32** %12, align 8
  %348 = load i32, i32* %24, align 4
  store i32 %348, i32* %25, align 4
  %349 = load i32, i32* %33, align 4
  store i32 %349, i32* %34, align 4
  %350 = load i32, i32* %39, align 4
  store i32 %350, i32* %40, align 4
  %351 = load i32, i32* %46, align 4
  store i32 %351, i32* %47, align 4
  %352 = load i32, i32* %54, align 4
  store i32 %352, i32* %55, align 4
  %353 = load i32, i32* %62, align 4
  store i32 %353, i32* %63, align 4
  %354 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %355 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %367

359:                                              ; preds = %347
  %360 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %361 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i64 @CHSPEC_IS40(i32 %362)
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %359
  %366 = load i32, i32* %71, align 4
  store i32 %366, i32* %72, align 4
  br label %369

367:                                              ; preds = %359, %347
  %368 = load i32, i32* %70, align 4
  store i32 %368, i32* %72, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = load i32, i32* %80, align 4
  store i32 %370, i32* %81, align 4
  %371 = load i32, i32* %90, align 4
  store i32 %371, i32* %91, align 4
  br label %430

372:                                              ; preds = %340
  %373 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %374 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @NREV_IS(i32 %376, i32 5)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %372
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev5, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev5, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev5, i64 0, i64 0), i32** %10, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev5, i64 0, i64 0), i32** %11, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev5, i64 0, i64 0), i32** %12, align 8
  %380 = load i32, i32* %23, align 4
  store i32 %380, i32* %25, align 4
  %381 = load i32, i32* %32, align 4
  store i32 %381, i32* %34, align 4
  %382 = load i32, i32* %38, align 4
  store i32 %382, i32* %40, align 4
  %383 = load i32, i32* %45, align 4
  store i32 %383, i32* %47, align 4
  %384 = load i32, i32* %53, align 4
  store i32 %384, i32* %55, align 4
  %385 = load i32, i32* %61, align 4
  store i32 %385, i32* %63, align 4
  %386 = load i32, i32* %69, align 4
  store i32 %386, i32* %72, align 4
  %387 = load i32, i32* %79, align 4
  store i32 %387, i32* %81, align 4
  %388 = load i32, i32* %89, align 4
  store i32 %388, i32* %91, align 4
  br label %429

389:                                              ; preds = %372
  %390 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %391 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = call i64 @NREV_IS(i32 %393, i32 4)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %418

396:                                              ; preds = %389
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db_rev4, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db_rev4, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db_rev4, i64 0, i64 0), i32** %10, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits_rev4, i64 0, i64 0), i32** %11, align 8
  %397 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %398 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %397, i32 0, i32 4
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @BFL_EXTLNA_5GHz, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %396
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev4_elna, i64 0, i64 0), i32** %12, align 8
  %406 = load i32, i32* %22, align 4
  store i32 %406, i32* %25, align 4
  br label %409

407:                                              ; preds = %396
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain_rev4, i64 0, i64 0), i32** %12, align 8
  %408 = load i32, i32* %21, align 4
  store i32 %408, i32* %25, align 4
  br label %409

409:                                              ; preds = %407, %405
  %410 = load i32, i32* %31, align 4
  store i32 %410, i32* %34, align 4
  %411 = load i32, i32* %37, align 4
  store i32 %411, i32* %40, align 4
  %412 = load i32, i32* %44, align 4
  store i32 %412, i32* %47, align 4
  %413 = load i32, i32* %52, align 4
  store i32 %413, i32* %55, align 4
  %414 = load i32, i32* %60, align 4
  store i32 %414, i32* %63, align 4
  %415 = load i32, i32* %68, align 4
  store i32 %415, i32* %72, align 4
  %416 = load i32, i32* %78, align 4
  store i32 %416, i32* %81, align 4
  %417 = load i32, i32* %87, align 4
  store i32 %417, i32* %91, align 4
  br label %428

418:                                              ; preds = %389
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna1A_gain_db, i64 0, i64 0), i32** %8, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lna2A_gain_db, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gain_db, i64 0, i64 0), i32** %10, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl.tiaA_gainbits, i64 0, i64 0), i32** %11, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseqA_init_gain, i64 0, i64 0), i32** %12, align 8
  %419 = load i32, i32* %20, align 4
  store i32 %419, i32* %25, align 4
  %420 = load i32, i32* %30, align 4
  store i32 %420, i32* %34, align 4
  %421 = load i32, i32* %36, align 4
  store i32 %421, i32* %40, align 4
  %422 = load i32, i32* %43, align 4
  store i32 %422, i32* %47, align 4
  %423 = load i32, i32* %51, align 4
  store i32 %423, i32* %55, align 4
  %424 = load i32, i32* %59, align 4
  store i32 %424, i32* %63, align 4
  %425 = load i32, i32* %67, align 4
  store i32 %425, i32* %72, align 4
  %426 = load i32, i32* %77, align 4
  store i32 %426, i32* %81, align 4
  %427 = load i32, i32* %87, align 4
  store i32 %427, i32* %91, align 4
  br label %428

428:                                              ; preds = %418, %409
  br label %429

429:                                              ; preds = %428, %379
  br label %430

430:                                              ; preds = %429, %369
  %431 = load i32, i32* %85, align 4
  store i32 %431, i32* %86, align 4
  br label %432

432:                                              ; preds = %430, %338
  %433 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %434 = load i32, i32* @RADIO_2056_RX_BIASPOLE_LNAG1_IDAC, align 4
  %435 = load i32, i32* @RADIO_2056_RX0, align 4
  %436 = or i32 %434, %435
  %437 = call i32 @write_radio_reg(%struct.brcms_phy* %433, i32 %436, i32 23)
  %438 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %439 = load i32, i32* @RADIO_2056_RX_BIASPOLE_LNAG1_IDAC, align 4
  %440 = load i32, i32* @RADIO_2056_RX1, align 4
  %441 = or i32 %439, %440
  %442 = call i32 @write_radio_reg(%struct.brcms_phy* %438, i32 %441, i32 23)
  %443 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %444 = load i32, i32* @RADIO_2056_RX_LNAG2_IDAC, align 4
  %445 = load i32, i32* @RADIO_2056_RX0, align 4
  %446 = or i32 %444, %445
  %447 = call i32 @write_radio_reg(%struct.brcms_phy* %443, i32 %446, i32 240)
  %448 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %449 = load i32, i32* @RADIO_2056_RX_LNAG2_IDAC, align 4
  %450 = load i32, i32* @RADIO_2056_RX1, align 4
  %451 = or i32 %449, %450
  %452 = call i32 @write_radio_reg(%struct.brcms_phy* %448, i32 %451, i32 240)
  %453 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %454 = load i32, i32* @RADIO_2056_RX_RSSI_POLE, align 4
  %455 = load i32, i32* @RADIO_2056_RX0, align 4
  %456 = or i32 %454, %455
  %457 = call i32 @write_radio_reg(%struct.brcms_phy* %453, i32 %456, i32 0)
  %458 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %459 = load i32, i32* @RADIO_2056_RX_RSSI_POLE, align 4
  %460 = load i32, i32* @RADIO_2056_RX1, align 4
  %461 = or i32 %459, %460
  %462 = call i32 @write_radio_reg(%struct.brcms_phy* %458, i32 %461, i32 0)
  %463 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %464 = load i32, i32* @RADIO_2056_RX_RSSI_GAIN, align 4
  %465 = load i32, i32* @RADIO_2056_RX0, align 4
  %466 = or i32 %464, %465
  %467 = load i32, i32* %91, align 4
  %468 = call i32 @write_radio_reg(%struct.brcms_phy* %463, i32 %466, i32 %467)
  %469 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %470 = load i32, i32* @RADIO_2056_RX_RSSI_GAIN, align 4
  %471 = load i32, i32* @RADIO_2056_RX1, align 4
  %472 = or i32 %470, %471
  %473 = load i32, i32* %91, align 4
  %474 = call i32 @write_radio_reg(%struct.brcms_phy* %469, i32 %472, i32 %473)
  %475 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %476 = load i32, i32* @RADIO_2056_RX_BIASPOLE_LNAA1_IDAC, align 4
  %477 = load i32, i32* @RADIO_2056_RX0, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @write_radio_reg(%struct.brcms_phy* %475, i32 %478, i32 23)
  %480 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %481 = load i32, i32* @RADIO_2056_RX_BIASPOLE_LNAA1_IDAC, align 4
  %482 = load i32, i32* @RADIO_2056_RX1, align 4
  %483 = or i32 %481, %482
  %484 = call i32 @write_radio_reg(%struct.brcms_phy* %480, i32 %483, i32 23)
  %485 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %486 = load i32, i32* @RADIO_2056_RX_LNAA2_IDAC, align 4
  %487 = load i32, i32* @RADIO_2056_RX0, align 4
  %488 = or i32 %486, %487
  %489 = call i32 @write_radio_reg(%struct.brcms_phy* %485, i32 %488, i32 255)
  %490 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %491 = load i32, i32* @RADIO_2056_RX_LNAA2_IDAC, align 4
  %492 = load i32, i32* @RADIO_2056_RX1, align 4
  %493 = or i32 %491, %492
  %494 = call i32 @write_radio_reg(%struct.brcms_phy* %490, i32 %493, i32 255)
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %496 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %497 = load i32*, i32** %8, align 8
  %498 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %495, i32 %496, i32 4, i32 8, i32 8, i32* %497)
  %499 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %500 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %501 = load i32*, i32** %8, align 8
  %502 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %499, i32 %500, i32 4, i32 8, i32 8, i32* %501)
  %503 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %504 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %505 = load i32*, i32** %9, align 8
  %506 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %503, i32 %504, i32 4, i32 16, i32 8, i32* %505)
  %507 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %508 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %509 = load i32*, i32** %9, align 8
  %510 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %507, i32 %508, i32 4, i32 16, i32 8, i32* %509)
  %511 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %512 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %513 = load i32*, i32** %10, align 8
  %514 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %511, i32 %512, i32 10, i32 32, i32 8, i32* %513)
  %515 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %516 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %517 = load i32*, i32** %10, align 8
  %518 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %515, i32 %516, i32 10, i32 32, i32 8, i32* %517)
  %519 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %520 = load i32, i32* @NPHY_TBL_ID_GAINBITS1, align 4
  %521 = load i32*, i32** %11, align 8
  %522 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %519, i32 %520, i32 10, i32 32, i32 8, i32* %521)
  %523 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %524 = load i32, i32* @NPHY_TBL_ID_GAINBITS2, align 4
  %525 = load i32*, i32** %11, align 8
  %526 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %523, i32 %524, i32 10, i32 32, i32 8, i32* %525)
  %527 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %528 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %529 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %527, i32 %528, i32 6, i32 64, i32 8, [6 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lpf_gain_db)
  %530 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %531 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %532 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %530, i32 %531, i32 6, i32 64, i32 8, [6 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lpf_gain_db)
  %533 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %534 = load i32, i32* @NPHY_TBL_ID_GAINBITS1, align 4
  %535 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %533, i32 %534, i32 6, i32 64, i32 8, [6 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lpf_gainbits)
  %536 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %537 = load i32, i32* @NPHY_TBL_ID_GAINBITS2, align 4
  %538 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %536, i32 %537, i32 6, i32 64, i32 8, [6 x i32]* @wlc_phy_workarounds_nphy_gainctrl.lpf_gainbits)
  %539 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %540 = load i32, i32* %25, align 4
  %541 = call i32 @write_phy_reg(%struct.brcms_phy* %539, i32 32, i32 %540)
  %542 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %543 = load i32, i32* %25, align 4
  %544 = call i32 @write_phy_reg(%struct.brcms_phy* %542, i32 679, i32 %543)
  %545 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %546 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %547 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %548 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = load i32*, i32** %12, align 8
  %552 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %545, i32 %546, i32 %550, i32 262, i32 16, i32* %551)
  %553 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %554 = load i32, i32* %34, align 4
  %555 = call i32 @write_phy_reg(%struct.brcms_phy* %553, i32 34, i32 %554)
  %556 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %557 = load i32, i32* %34, align 4
  %558 = call i32 @write_phy_reg(%struct.brcms_phy* %556, i32 681, i32 %557)
  %559 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %560 = load i32, i32* %40, align 4
  %561 = call i32 @write_phy_reg(%struct.brcms_phy* %559, i32 36, i32 %560)
  %562 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %563 = load i32, i32* %40, align 4
  %564 = call i32 @write_phy_reg(%struct.brcms_phy* %562, i32 683, i32 %563)
  %565 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %566 = load i32, i32* %47, align 4
  %567 = call i32 @write_phy_reg(%struct.brcms_phy* %565, i32 55, i32 %566)
  %568 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %569 = load i32, i32* %47, align 4
  %570 = call i32 @write_phy_reg(%struct.brcms_phy* %568, i32 685, i32 %569)
  %571 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %572 = load i32, i32* %55, align 4
  %573 = shl i32 %572, 0
  %574 = call i32 @mod_phy_reg(%struct.brcms_phy* %571, i32 637, i32 255, i32 %573)
  %575 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %576 = load i32, i32* %63, align 4
  %577 = shl i32 %576, 0
  %578 = call i32 @mod_phy_reg(%struct.brcms_phy* %575, i32 640, i32 255, i32 %577)
  %579 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %580 = load i32, i32* %72, align 4
  %581 = shl i32 %580, 0
  %582 = call i32 @mod_phy_reg(%struct.brcms_phy* %579, i32 643, i32 255, i32 %581)
  %583 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %584 = load i32, i32* %81, align 4
  %585 = call i32 @write_phy_reg(%struct.brcms_phy* %583, i32 43, i32 %584)
  %586 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %587 = load i32, i32* %81, align 4
  %588 = call i32 @write_phy_reg(%struct.brcms_phy* %586, i32 65, i32 %587)
  %589 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %590 = load i32, i32* %86, align 4
  %591 = shl i32 %590, 0
  %592 = call i32 @mod_phy_reg(%struct.brcms_phy* %589, i32 39, i32 63, i32 %591)
  %593 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %594 = load i32, i32* %86, align 4
  %595 = shl i32 %594, 0
  %596 = call i32 @mod_phy_reg(%struct.brcms_phy* %593, i32 61, i32 63, i32 %595)
  %597 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %598 = call i32 @write_phy_reg(%struct.brcms_phy* %597, i32 336, i32 32924)
  br label %804

599:                                              ; preds = %177
  %600 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %601 = call i32 @mod_phy_reg(%struct.brcms_phy* %600, i32 28, i32 8192, i32 8192)
  %602 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %603 = call i32 @mod_phy_reg(%struct.brcms_phy* %602, i32 50, i32 8192, i32 8192)
  %604 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %605 = call i32 @write_phy_reg(%struct.brcms_phy* %604, i32 43, i32 132)
  %606 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %607 = call i32 @write_phy_reg(%struct.brcms_phy* %606, i32 65, i32 132)
  %608 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %609 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = call i64 @CHSPEC_IS20(i32 %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %622

613:                                              ; preds = %599
  %614 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %615 = call i32 @write_phy_reg(%struct.brcms_phy* %614, i32 107, i32 43)
  %616 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %617 = call i32 @write_phy_reg(%struct.brcms_phy* %616, i32 108, i32 43)
  %618 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %619 = call i32 @write_phy_reg(%struct.brcms_phy* %618, i32 109, i32 9)
  %620 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %621 = call i32 @write_phy_reg(%struct.brcms_phy* %620, i32 110, i32 9)
  br label %622

622:                                              ; preds = %613, %599
  %623 = load i32, i32* @NPHY_RSSICAL_W1_TARGET, align 4
  %624 = sub nsw i32 %623, 4
  store i32 %624, i32* %3, align 4
  %625 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %626 = load i32, i32* %3, align 4
  %627 = shl i32 %626, 0
  %628 = call i32 @mod_phy_reg(%struct.brcms_phy* %625, i32 39, i32 63, i32 %627)
  %629 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %630 = load i32, i32* %3, align 4
  %631 = shl i32 %630, 0
  %632 = call i32 @mod_phy_reg(%struct.brcms_phy* %629, i32 61, i32 63, i32 %631)
  %633 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %634 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = call i64 @CHSPEC_IS20(i32 %635)
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %647

638:                                              ; preds = %622
  %639 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %640 = call i32 @mod_phy_reg(%struct.brcms_phy* %639, i32 28, i32 31, i32 1)
  %641 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %642 = call i32 @mod_phy_reg(%struct.brcms_phy* %641, i32 50, i32 31, i32 1)
  %643 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %644 = call i32 @mod_phy_reg(%struct.brcms_phy* %643, i32 29, i32 31, i32 1)
  %645 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %646 = call i32 @mod_phy_reg(%struct.brcms_phy* %645, i32 51, i32 31, i32 1)
  br label %647

647:                                              ; preds = %638, %622
  %648 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %649 = call i32 @write_phy_reg(%struct.brcms_phy* %648, i32 336, i32 32924)
  %650 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %651 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %650, i32 0, i32 3
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %669

654:                                              ; preds = %647
  %655 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %656 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = call i64 @CHSPEC_IS2G(i32 %657)
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %660, label %667

660:                                              ; preds = %654
  %661 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %662 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 8
  %664 = call i64 @CHSPEC_IS40(i32 %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %667

666:                                              ; preds = %660
  store i32 4, i32* %4, align 4
  br label %668

667:                                              ; preds = %660, %654
  store i32 5, i32* %4, align 4
  br label %668

668:                                              ; preds = %667, %666
  br label %678

669:                                              ; preds = %647
  %670 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %671 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 8
  %673 = call i64 @CHSPEC_IS40(i32 %672)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %669
  store i32 6, i32* %4, align 4
  br label %677

676:                                              ; preds = %669
  store i32 7, i32* %4, align 4
  br label %677

677:                                              ; preds = %676, %675
  br label %678

678:                                              ; preds = %677, %668
  %679 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %680 = load i32, i32* %4, align 4
  %681 = shl i32 %680, 7
  %682 = call i32 @mod_phy_reg(%struct.brcms_phy* %679, i32 32, i32 3968, i32 %681)
  %683 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %684 = load i32, i32* %4, align 4
  %685 = shl i32 %684, 7
  %686 = call i32 @mod_phy_reg(%struct.brcms_phy* %683, i32 54, i32 3968, i32 %685)
  store i32 0, i32* %6, align 4
  br label %687

687:                                              ; preds = %697, %678
  %688 = load i32, i32* %6, align 4
  %689 = icmp slt i32 %688, 4
  br i1 %689, label %690, label %700

690:                                              ; preds = %687
  %691 = load i32, i32* %4, align 4
  %692 = shl i32 %691, 8
  %693 = or i32 %692, 124
  %694 = load i32, i32* %6, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 %695
  store i32 %693, i32* %696, align 4
  br label %697

697:                                              ; preds = %690
  %698 = load i32, i32* %6, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %6, align 4
  br label %687

700:                                              ; preds = %687
  %701 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %702 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %703 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %701, i32 7, i32 4, i32 262, i32 16, i32* %702)
  %704 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %705 = call i32 @wlc_phy_adjust_lnagaintbl_nphy(%struct.brcms_phy* %704)
  %706 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %707 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %706, i32 0, i32 2
  %708 = load i64, i64* %707, align 8
  %709 = icmp ne i64 %708, 0
  br i1 %709, label %710, label %738

710:                                              ; preds = %700
  %711 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  store i32 0, i32* %711, align 16
  %712 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 1
  store i32 1, i32* %712, align 4
  %713 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 2
  store i32 1, i32* %713, align 8
  %714 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 3
  store i32 1, i32* %714, align 4
  %715 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %716 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %717 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %715, i32 2, i32 4, i32 8, i32 16, i32* %716)
  %718 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %719 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %720 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %718, i32 3, i32 4, i32 8, i32 16, i32* %719)
  store i32 0, i32* %6, align 4
  br label %721

721:                                              ; preds = %731, %710
  %722 = load i32, i32* %6, align 4
  %723 = icmp slt i32 %722, 4
  br i1 %723, label %724, label %734

724:                                              ; preds = %721
  %725 = load i32, i32* %4, align 4
  %726 = shl i32 %725, 8
  %727 = or i32 %726, 116
  %728 = load i32, i32* %6, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 %729
  store i32 %727, i32* %730, align 4
  br label %731

731:                                              ; preds = %724
  %732 = load i32, i32* %6, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %6, align 4
  br label %721

734:                                              ; preds = %721
  %735 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %736 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %737 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %735, i32 7, i32 4, i32 262, i32 16, i32* %736)
  br label %738

738:                                              ; preds = %734, %700
  %739 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %740 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %739, i32 0, i32 1
  %741 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %740, i32 0, i32 2
  %742 = load i32, i32* %741, align 4
  %743 = call i64 @NREV_IS(i32 %742, i32 2)
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %783

745:                                              ; preds = %738
  store i32 0, i32* %6, align 4
  br label %746

746:                                              ; preds = %755, %745
  %747 = load i32, i32* %6, align 4
  %748 = icmp slt i32 %747, 21
  br i1 %748, label %749, label %758

749:                                              ; preds = %746
  %750 = load i32, i32* %6, align 4
  %751 = mul nsw i32 3, %750
  %752 = load i32, i32* %6, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 %753
  store i32 %751, i32* %754, align 4
  br label %755

755:                                              ; preds = %749
  %756 = load i32, i32* %6, align 4
  %757 = add nsw i32 %756, 1
  store i32 %757, i32* %6, align 4
  br label %746

758:                                              ; preds = %746
  %759 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %760 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %761 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %759, i32 0, i32 21, i32 32, i32 16, i32* %760)
  %762 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %763 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %764 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %762, i32 1, i32 21, i32 32, i32 16, i32* %763)
  store i32 0, i32* %6, align 4
  br label %765

765:                                              ; preds = %773, %758
  %766 = load i32, i32* %6, align 4
  %767 = icmp slt i32 %766, 21
  br i1 %767, label %768, label %776

768:                                              ; preds = %765
  %769 = load i32, i32* %6, align 4
  %770 = load i32, i32* %6, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 %771
  store i32 %769, i32* %772, align 4
  br label %773

773:                                              ; preds = %768
  %774 = load i32, i32* %6, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %6, align 4
  br label %765

776:                                              ; preds = %765
  %777 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %778 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %779 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %777, i32 2, i32 21, i32 32, i32 16, i32* %778)
  %780 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %781 = getelementptr inbounds [21 x i32], [21 x i32]* %92, i64 0, i64 0
  %782 = call i32 (%struct.brcms_phy*, i32, i32, i32, i32, ...) @wlc_phy_table_write_nphy(%struct.brcms_phy* %780, i32 3, i32 21, i32 32, i32 16, i32* %781)
  br label %783

783:                                              ; preds = %776, %738
  %784 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %785 = load i32, i32* @NPHY_RFSEQ_UPDATEGAINU, align 4
  %786 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %787 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %788 = call i32 @ARRAY_SIZE(i32* %787)
  %789 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %784, i32 %785, i32* %786, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @wlc_phy_workarounds_nphy_gainctrl.rfseq_updategainu_dlys, i64 0, i64 0), i32 %788)
  %790 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %791 = call i32 @mod_phy_reg(%struct.brcms_phy* %790, i32 339, i32 65280, i32 23040)
  %792 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %793 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %792, i32 0, i32 0
  %794 = load i32, i32* %793, align 8
  %795 = call i64 @CHSPEC_IS2G(i32 %794)
  %796 = icmp ne i64 %795, 0
  br i1 %796, label %797, label %803

797:                                              ; preds = %783
  %798 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %799 = load i32, i32* @NPHY_TO_BPHY_OFF, align 4
  %800 = load i32, i32* @BPHY_OPTIONAL_MODES, align 4
  %801 = add nsw i32 %799, %800
  %802 = call i32 @mod_phy_reg(%struct.brcms_phy* %798, i32 %801, i32 127, i32 4)
  br label %803

803:                                              ; preds = %797, %783
  br label %804

804:                                              ; preds = %803, %432
  br label %805

805:                                              ; preds = %804, %176
  ret void
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev5(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS20(i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_adjust_lnagaintbl_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
