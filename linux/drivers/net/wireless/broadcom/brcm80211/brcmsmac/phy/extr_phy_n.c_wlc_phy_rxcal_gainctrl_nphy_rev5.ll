; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_gainctrl_nphy_rev5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_gainctrl_nphy_rev5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_ipa_txrxgain = type { i32, i32, i32, i32, i32, i64 }
%struct.brcms_phy = type { i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_iq_comp = type { i32, i32, i32, i32 }
%struct.phy_iq_est = type { i32, i32 }

@PHY_CORE_MAX = common dso_local global i32 0, align 4
@nphy_ipa_rxcal_gaintbl_5GHz_rev7 = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_5GHz = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_2GHz_rev7 = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_2GHz = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@NPHY_REV7_RfctrlOverride_cmd_rxgain = common dso_local global i32 0, align 4
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEFREQ_40MHz = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEFREQ_20MHz = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEAMP = common dso_local global i32 0, align 4
@NPHY_IPA_RXCAL_MAXGAININDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32*, i32)* @wlc_phy_rxcal_gainctrl_nphy_rev5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_gainctrl_nphy_rev5(%struct.brcms_phy* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nphy_iq_comp, align 4
  %14 = alloca %struct.nphy_iq_comp, align 4
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
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.nphy_ipa_txrxgain*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %39 = load i32, i32* @PHY_CORE_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %10, align 8
  %42 = alloca %struct.phy_iq_est, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 10000, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 3, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 3, i64* %28, align 8
  store i32 129, i32* %29, align 4
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @NREV_GE(i32 %46, i32 7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %12, align 4
  br label %54

51:                                               ; preds = %4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 1, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %49
  store i32 1024, i32* %9, align 4
  store i32 13, i32* %21, align 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %56 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %55, i32 0, %struct.nphy_iq_comp* %13)
  %57 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %62 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %61, i32 1, %struct.nphy_iq_comp* %14)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @CHSPEC_IS5G(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %54
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @NREV_GE(i32 %72, i32 7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 3, i32* %25, align 4
  br label %86

76:                                               ; preds = %68
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @NREV_GE(i32 %80, i32 4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 4, i32* %25, align 4
  br label %85

84:                                               ; preds = %76
  store i32 6, i32* %25, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @NREV_GE(i32 %90, i32 7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_5GHz_rev7, align 8
  store %struct.nphy_ipa_txrxgain* %94, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_5GHz, align 8
  store %struct.nphy_ipa_txrxgain* %96, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %97

97:                                               ; preds = %95, %93
  br label %110

98:                                               ; preds = %54
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @NREV_GE(i32 %102, i32 7)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_2GHz_rev7, align 8
  store %struct.nphy_ipa_txrxgain* %106, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %109

107:                                              ; preds = %98
  %108 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_2GHz, align 8
  store %struct.nphy_ipa_txrxgain* %108, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %97
  br label %111

111:                                              ; preds = %315, %110
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %113 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @NREV_GE(i32 %115, i32 7)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %125

119:                                              ; preds = %111
  %120 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %121 = load i64, i64* %28, align 8
  %122 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %120, i64 %121
  %123 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  br label %125

125:                                              ; preds = %119, %118
  %126 = phi i32 [ 0, %118 ], [ %124, %119 ]
  store i32 %126, i32* %31, align 4
  %127 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %128 = load i64, i64* %28, align 8
  %129 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %127, i64 %128
  %130 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %32, align 4
  %132 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %133 = load i64, i64* %28, align 8
  %134 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %132, i64 %133
  %135 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %33, align 4
  %137 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %138 = load i64, i64* %28, align 8
  %139 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %137, i64 %138
  %140 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %34, align 4
  %142 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %143 = load i64, i64* %28, align 8
  %144 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %142, i64 %143
  %145 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %35, align 4
  %147 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %148 = load i64, i64* %28, align 8
  %149 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %147, i64 %148
  %150 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %37, align 8
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @NREV_GE(i32 %155, i32 7)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %125
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %160 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rxgain, align 4
  %161 = load i32, i32* %32, align 4
  %162 = shl i32 %161, 12
  %163 = load i32, i32* %33, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %162, %164
  %166 = load i32, i32* %25, align 4
  %167 = shl i32 %166, 4
  %168 = or i32 %165, %167
  %169 = load i32, i32* %34, align 4
  %170 = shl i32 %169, 2
  %171 = or i32 %168, %170
  %172 = load i32, i32* %35, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %159, i32 %160, i32 %173, i32 3, i32 0)
  br label %194

175:                                              ; preds = %125
  %176 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %177 = load i32, i32* %31, align 4
  %178 = shl i32 %177, 12
  %179 = load i32, i32* %32, align 4
  %180 = shl i32 %179, 10
  %181 = or i32 %178, %180
  %182 = load i32, i32* %33, align 4
  %183 = shl i32 %182, 8
  %184 = or i32 %181, %183
  %185 = load i32, i32* %25, align 4
  %186 = shl i32 %185, 4
  %187 = or i32 %184, %186
  %188 = load i32, i32* %34, align 4
  %189 = shl i32 %188, 2
  %190 = or i32 %187, %189
  %191 = load i32, i32* %35, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %176, i32 4096, i32 %192, i32 3, i32 0)
  br label %194

194:                                              ; preds = %175, %158
  %195 = load i64, i64* %37, align 8
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %197 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 %195, i64* %201, align 8
  %202 = load i64, i64* %37, align 8
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %204, label %219

204:                                              ; preds = %194
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %206 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = or i32 36848, %207
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  store i32 %208, i32* %209, align 4
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %211 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = or i32 36848, %212
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 1
  store i32 %213, i32* %214, align 4
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %216 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %218 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %215, i32 %216, i32 2, i32 272, i32 16, i32* %217)
  br label %225

219:                                              ; preds = %194
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i64, i64* %37, align 8
  %224 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %220, i32 %222, i64 %223, i32 0)
  br label %225

225:                                              ; preds = %219, %204
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %228 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @CHSPEC_IS40(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i32, i32* @NPHY_RXCAL_TONEFREQ_40MHz, align 4
  br label %236

234:                                              ; preds = %225
  %235 = load i32, i32* @NPHY_RXCAL_TONEFREQ_20MHz, align 4
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = load i32, i32* @NPHY_RXCAL_TONEAMP, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %226, i32 %237, i32 %238, i32 0, i32 %239, i32 0)
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @wlc_phy_rx_iq_est_nphy(%struct.brcms_phy* %241, %struct.phy_iq_est* %42, i32 %242, i32 32, i32 0)
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %42, i64 %245
  %247 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @DIV_ROUND_CLOSEST(i32 %248, i32 %249)
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %42, i64 %252
  %254 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @DIV_ROUND_CLOSEST(i32 %255, i32 %256)
  store i32 %257, i32* %16, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %17, align 4
  %261 = load i32, i32* %29, align 4
  switch i32 %261, label %299 [
    i32 129, label %262
    i32 128, label %275
    i32 130, label %287
  ]

262:                                              ; preds = %236
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %20, align 4
  %265 = icmp sgt i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  store i32 130, i32* %29, align 4
  %267 = load i64, i64* %28, align 8
  store i64 %267, i64* %27, align 8
  %268 = load i64, i64* %28, align 8
  %269 = add i64 %268, -1
  store i64 %269, i64* %28, align 8
  br label %274

270:                                              ; preds = %262
  store i32 128, i32* %29, align 4
  %271 = load i64, i64* %28, align 8
  store i64 %271, i64* %27, align 8
  %272 = load i64, i64* %28, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %28, align 8
  br label %274

274:                                              ; preds = %270, %266
  br label %300

275:                                              ; preds = %236
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %20, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  store i32 1, i32* %24, align 4
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %18, align 4
  %281 = load i64, i64* %27, align 8
  store i64 %281, i64* %26, align 8
  br label %286

282:                                              ; preds = %275
  %283 = load i64, i64* %28, align 8
  store i64 %283, i64* %27, align 8
  %284 = load i64, i64* %28, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %28, align 8
  br label %286

286:                                              ; preds = %282, %279
  br label %300

287:                                              ; preds = %236
  %288 = load i32, i32* %17, align 4
  %289 = load i32, i32* %20, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i64, i64* %28, align 8
  store i64 %292, i64* %27, align 8
  %293 = load i64, i64* %28, align 8
  %294 = add i64 %293, -1
  store i64 %294, i64* %28, align 8
  br label %298

295:                                              ; preds = %287
  store i32 1, i32* %24, align 4
  %296 = load i32, i32* %17, align 4
  store i32 %296, i32* %18, align 4
  %297 = load i64, i64* %28, align 8
  store i64 %297, i64* %26, align 8
  br label %298

298:                                              ; preds = %295, %291
  br label %300

299:                                              ; preds = %236
  br label %300

300:                                              ; preds = %299, %298, %286, %274
  %301 = load i64, i64* %28, align 8
  %302 = icmp ult i64 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  %304 = load i64, i64* %28, align 8
  %305 = load i64, i64* @NPHY_IPA_RXCAL_MAXGAININDEX, align 8
  %306 = icmp ugt i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303, %300
  store i32 1, i32* %24, align 4
  %308 = load i32, i32* %17, align 4
  store i32 %308, i32* %18, align 4
  %309 = load i64, i64* %27, align 8
  store i64 %309, i64* %26, align 8
  br label %312

310:                                              ; preds = %303
  %311 = load i32, i32* %17, align 4
  store i32 %311, i32* %19, align 4
  br label %312

312:                                              ; preds = %310, %307
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %314 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %313)
  br label %315

315:                                              ; preds = %312
  %316 = load i32, i32* %24, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  br i1 %318, label %111, label %319

319:                                              ; preds = %315
  %320 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %321 = load i64, i64* %26, align 8
  %322 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %320, i64 %321
  %323 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  store i32 %324, i32* %31, align 4
  %325 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %326 = load i64, i64* %26, align 8
  %327 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %325, i64 %326
  %328 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %32, align 4
  %330 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %331 = load i64, i64* %26, align 8
  %332 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %330, i64 %331
  %333 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  store i32 %334, i32* %33, align 4
  %335 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %336 = load i64, i64* %26, align 8
  %337 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %335, i64 %336
  %338 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %34, align 4
  %340 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %341 = load i64, i64* %26, align 8
  %342 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %340, i64 %341
  %343 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %35, align 4
  %345 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %346 = load i64, i64* %26, align 8
  %347 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %345, i64 %346
  %348 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %37, align 8
  %350 = load i32, i32* %18, align 4
  %351 = call i32 @wlc_phy_nbits(i32 %350)
  store i32 %351, i32* %22, align 4
  %352 = load i32, i32* %21, align 4
  %353 = load i32, i32* %22, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %23, align 4
  %355 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %356 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i64 @NREV_GE(i32 %358, i32 7)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %393

361:                                              ; preds = %319
  %362 = load i32, i32* %32, align 4
  %363 = load i32, i32* %23, align 4
  %364 = add nsw i32 %362, %363
  store i32 %364, i32* %36, align 4
  %365 = load i32, i32* %36, align 4
  %366 = load i32, i32* %33, align 4
  %367 = add nsw i32 %365, %366
  %368 = icmp sgt i32 %367, 10
  br i1 %368, label %369, label %372

369:                                              ; preds = %361
  %370 = load i32, i32* %33, align 4
  %371 = sub nsw i32 10, %370
  store i32 %371, i32* %32, align 4
  br label %376

372:                                              ; preds = %361
  %373 = load i32, i32* %36, align 4
  %374 = call i64 @max(i32 %373, i32 0)
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %32, align 4
  br label %376

376:                                              ; preds = %372, %369
  %377 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %378 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rxgain, align 4
  %379 = load i32, i32* %32, align 4
  %380 = shl i32 %379, 12
  %381 = load i32, i32* %33, align 4
  %382 = shl i32 %381, 8
  %383 = or i32 %380, %382
  %384 = load i32, i32* %25, align 4
  %385 = shl i32 %384, 4
  %386 = or i32 %383, %385
  %387 = load i32, i32* %34, align 4
  %388 = shl i32 %387, 2
  %389 = or i32 %386, %388
  %390 = load i32, i32* %35, align 4
  %391 = or i32 %389, %390
  %392 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %377, i32 %378, i32 %391, i32 3, i32 0)
  br label %418

393:                                              ; preds = %319
  %394 = load i32, i32* %31, align 4
  %395 = load i32, i32* %23, align 4
  %396 = add nsw i32 %394, %395
  %397 = call i32 @min(i32 %396, i32 10)
  %398 = call i64 @max(i32 %397, i32 0)
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %31, align 4
  %400 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %401 = load i32, i32* %31, align 4
  %402 = shl i32 %401, 12
  %403 = load i32, i32* %32, align 4
  %404 = shl i32 %403, 10
  %405 = or i32 %402, %404
  %406 = load i32, i32* %33, align 4
  %407 = shl i32 %406, 8
  %408 = or i32 %405, %407
  %409 = load i32, i32* %25, align 4
  %410 = shl i32 %409, 4
  %411 = or i32 %408, %410
  %412 = load i32, i32* %34, align 4
  %413 = shl i32 %412, 2
  %414 = or i32 %411, %413
  %415 = load i32, i32* %35, align 4
  %416 = or i32 %414, %415
  %417 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %400, i32 4096, i32 %416, i32 3, i32 0)
  br label %418

418:                                              ; preds = %393, %376
  %419 = load i32*, i32** %7, align 8
  %420 = icmp ne i32* %419, null
  br i1 %420, label %421, label %439

421:                                              ; preds = %418
  %422 = load i32, i32* %35, align 4
  %423 = load i32*, i32** %7, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %7, align 8
  store i32 %422, i32* %423, align 4
  %425 = load i32, i32* %34, align 4
  %426 = load i32*, i32** %7, align 8
  %427 = getelementptr inbounds i32, i32* %426, i32 1
  store i32* %427, i32** %7, align 8
  store i32 %425, i32* %426, align 4
  %428 = load i32, i32* %25, align 4
  %429 = load i32*, i32** %7, align 8
  %430 = getelementptr inbounds i32, i32* %429, i32 1
  store i32* %430, i32** %7, align 8
  store i32 %428, i32* %429, align 4
  %431 = load i32, i32* %33, align 4
  %432 = load i32*, i32** %7, align 8
  %433 = getelementptr inbounds i32, i32* %432, i32 1
  store i32* %433, i32** %7, align 8
  store i32 %431, i32* %432, align 4
  %434 = load i32, i32* %32, align 4
  %435 = load i32*, i32** %7, align 8
  %436 = getelementptr inbounds i32, i32* %435, i32 1
  store i32* %436, i32** %7, align 8
  store i32 %434, i32* %435, align 4
  %437 = load i32, i32* %31, align 4
  %438 = load i32*, i32** %7, align 8
  store i32 %437, i32* %438, align 4
  br label %439

439:                                              ; preds = %421, %418
  %440 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %441 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %440, i32 1, %struct.nphy_iq_comp* %13)
  %442 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %442)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy*, i32, %struct.nphy_iq_comp*) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i64, i32) #2

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i32 @wlc_phy_rx_iq_est_nphy(%struct.brcms_phy*, %struct.phy_iq_est*, i32, i32, i32) #2

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #2

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_nbits(i32) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
