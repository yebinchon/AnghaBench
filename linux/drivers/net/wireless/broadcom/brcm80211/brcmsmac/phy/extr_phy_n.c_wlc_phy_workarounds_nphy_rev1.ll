; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_rev1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_rev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@wlc_phy_workarounds_nphy_rev1.rfseq_rx2tx_events = internal constant [7 x i32] [i32 132, i32 131, i32 129, i32 134, i32 130, i32 128, i32 133], align 16
@__const.wlc_phy_workarounds_nphy_rev1.rfseq_rx2tx_dlys = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 2, i32 4, i32 60, i32 1], align 16
@wlc_phy_workarounds_nphy_rev1.rfseq_tx2rx_events = internal constant [7 x i32] [i32 132, i32 133, i32 128, i32 130, i32 129, i32 131, i32 134], align 16
@wlc_phy_workarounds_nphy_rev1.rfseq_tx2rx_dlys = internal constant [7 x i32] [i32 8, i32 6, i32 2, i32 4, i32 4, i32 6, i32 1], align 16
@BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@__const.wlc_phy_workarounds_nphy_rev1.war_dlys = private unnamed_addr constant [7 x i32] [i32 1, i32 6, i32 6, i32 2, i32 4, i32 20, i32 1], align 16
@RADIO_2055_CORE1_TX_RF_SPARE = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_RF_SPARE = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@NPHY_RFSEQ_TX2RX = common dso_local global i32 0, align 4
@NPHY_MLenable = common dso_local global i32 0, align 4
@MHF3 = common dso_local global i32 0, align 4
@MHF3_NPHY_MLADV_WAR = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@NPHY_FORCESIG_DECODEGATEDCLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy_rev1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy_rev1(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [7 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %13 = bitcast [7 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([7 x i32]* @__const.wlc_phy_workarounds_nphy_rev1.rfseq_rx2tx_dlys to i8*), i64 28, i1 false)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFL2_SKWRKFEM_BRD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 139
  br i1 %28, label %29, label %46

29:                                               ; preds = %22, %1
  %30 = bitcast [7 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([7 x i32]* @__const.wlc_phy_workarounds_nphy_rev1.war_dlys to i8*), i64 28, i1 false)
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %42, %29
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %34 = call i64 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %40
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @CHSPEC_IS5G(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = load i32, i32* @RADIO_2055_CORE1_TX_RF_SPARE, align 4
  %60 = call i32 @and_radio_reg(%struct.brcms_phy* %58, i32 %59, i32 247)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = load i32, i32* @RADIO_2055_CORE2_TX_RF_SPARE, align 4
  %63 = call i32 @and_radio_reg(%struct.brcms_phy* %61, i32 %62, i32 247)
  br label %71

64:                                               ; preds = %52, %46
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = load i32, i32* @RADIO_2055_CORE1_TX_RF_SPARE, align 4
  %67 = call i32 @or_radio_reg(%struct.brcms_phy* %65, i32 %66, i32 8)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load i32, i32* @RADIO_2055_CORE2_TX_RF_SPARE, align 4
  %70 = call i32 @or_radio_reg(%struct.brcms_phy* %68, i32 %69, i32 8)
  br label %71

71:                                               ; preds = %64, %57
  store i32 10, i32* %10, align 4
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %72, i32 8, i32 1, i32 0, i32 16, i32* %10)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %74, i32 8, i32 1, i32 16, i32 16, i32* %10)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @NREV_LT(i32 %79, i32 3)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  store i32 52650, i32* %10, align 4
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %83, i32 8, i32 1, i32 2, i32 16, i32* %10)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %85, i32 8, i32 1, i32 18, i32 16, i32* %10)
  br label %87

87:                                               ; preds = %82, %71
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %89 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @NREV_LT(i32 %91, i32 2)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %95, i32 8, i32 1, i32 8, i32 16, i32* %10)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %97, i32 8, i32 1, i32 24, i32 16, i32* %10)
  store i32 31403, i32* %10, align 4
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %99, i32 8, i32 1, i32 7, i32 16, i32* %10)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %101, i32 8, i32 1, i32 23, i32 16, i32* %10)
  store i32 2048, i32* %10, align 4
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %104 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %103, i32 8, i32 1, i32 6, i32 16, i32* %10)
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %105, i32 8, i32 1, i32 22, i32 16, i32* %10)
  br label %107

107:                                              ; preds = %94, %87
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = call i32 @write_phy_reg(%struct.brcms_phy* %108, i32 248, i32 728)
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = call i32 @write_phy_reg(%struct.brcms_phy* %110, i32 249, i32 769)
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %113 = call i32 @write_phy_reg(%struct.brcms_phy* %112, i32 250, i32 728)
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = call i32 @write_phy_reg(%struct.brcms_phy* %114, i32 251, i32 769)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %117 = load i32, i32* @NPHY_RFSEQ_RX2TX, align 4
  %118 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %119 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @wlc_phy_workarounds_nphy_rev1.rfseq_rx2tx_events, i64 0, i64 0))
  %120 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %116, i32 %117, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @wlc_phy_workarounds_nphy_rev1.rfseq_rx2tx_events, i64 0, i64 0), i32* %118, i64 %119)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %122 = load i32, i32* @NPHY_RFSEQ_TX2RX, align 4
  %123 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @wlc_phy_workarounds_nphy_rev1.rfseq_tx2rx_events, i64 0, i64 0))
  %124 = call i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %121, i32 %122, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @wlc_phy_workarounds_nphy_rev1.rfseq_tx2rx_events, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @wlc_phy_workarounds_nphy_rev1.rfseq_tx2rx_dlys, i64 0, i64 0), i64 %123)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = call i32 @wlc_phy_workarounds_nphy_gainctrl(%struct.brcms_phy* %125)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @NREV_LT(i32 %130, i32 2)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %107
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = call i32 @read_phy_reg(%struct.brcms_phy* %134, i32 160)
  %136 = load i32, i32* @NPHY_MLenable, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MHF3, align 4
  %146 = load i32, i32* @MHF3_NPHY_MLADV_WAR, align 4
  %147 = load i32, i32* @MHF3_NPHY_MLADV_WAR, align 4
  %148 = load i32, i32* @BRCM_BAND_ALL, align 4
  %149 = call i32 @wlapi_bmac_mhf(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %139, %133
  br label %164

151:                                              ; preds = %107
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @NREV_IS(i32 %155, i32 2)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = call i32 @write_phy_reg(%struct.brcms_phy* %159, i32 483, i32 0)
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %162 = call i32 @write_phy_reg(%struct.brcms_phy* %161, i32 484, i32 0)
  br label %163

163:                                              ; preds = %158, %151
  br label %164

164:                                              ; preds = %163, %150
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @NREV_LT(i32 %168, i32 2)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = call i32 @mod_phy_reg(%struct.brcms_phy* %172, i32 144, i32 128, i32 0)
  br label %174

174:                                              ; preds = %171, %164
  store i32 293, i32* %4, align 4
  store i32 435, i32* %5, align 4
  store i32 261, i32* %6, align 4
  store i32 366, i32* %7, align 4
  store i32 205, i32* %8, align 4
  store i32 32, i32* %9, align 4
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @write_phy_reg(%struct.brcms_phy* %175, i32 325, i32 %176)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @write_phy_reg(%struct.brcms_phy* %178, i32 326, i32 %179)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @write_phy_reg(%struct.brcms_phy* %181, i32 327, i32 %182)
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @write_phy_reg(%struct.brcms_phy* %184, i32 328, i32 %185)
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @write_phy_reg(%struct.brcms_phy* %187, i32 329, i32 %188)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @write_phy_reg(%struct.brcms_phy* %190, i32 330, i32 %191)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @NREV_LT(i32 %196, i32 3)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %174
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = call i32 @mod_phy_reg(%struct.brcms_phy* %200, i32 322, i32 61440, i32 0)
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %203 = call i32 @write_phy_reg(%struct.brcms_phy* %202, i32 402, i32 181)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %205 = call i32 @write_phy_reg(%struct.brcms_phy* %204, i32 403, i32 164)
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %207 = call i32 @write_phy_reg(%struct.brcms_phy* %206, i32 404, i32 0)
  br label %208

208:                                              ; preds = %199, %174
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %210 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @NREV_IS(i32 %212, i32 2)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %217 = load i32, i32* @NPHY_FORCESIG_DECODEGATEDCLKS, align 4
  %218 = load i32, i32* @NPHY_FORCESIG_DECODEGATEDCLKS, align 4
  %219 = call i32 @mod_phy_reg(%struct.brcms_phy* %216, i32 545, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %215, %208
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @and_radio_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @NREV_LT(i32, i32) #2

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_set_rfseq_nphy(%struct.brcms_phy*, i32, i32*, i32*, i64) #2

declare dso_local i32 @wlc_phy_workarounds_nphy_gainctrl(%struct.brcms_phy*) #2

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #2

declare dso_local i64 @NREV_IS(i32, i32) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
