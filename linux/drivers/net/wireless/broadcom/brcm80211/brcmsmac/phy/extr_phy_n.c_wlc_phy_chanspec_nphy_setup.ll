; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_nphy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_nphy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i64, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nphy_sfo_cfg = type { i32, i32, i32, i32, i32, i32 }

@NPHY_BandControl_currentBand = common dso_local global i32 0, align 4
@psm_phy_hdr_param = common dso_local global i32 0, align 4
@MAC_PHY_FORCE_CLK = common dso_local global i32 0, align 4
@NPHY_TO_BPHY_OFF = common dso_local global i32 0, align 4
@BPHY_BB_CONFIG = common dso_local global i32 0, align 4
@BBCFG_RESETCCA = common dso_local global i32 0, align 4
@BBCFG_RESETRX = common dso_local global i32 0, align 4
@NPHY_ClassifierCtrl_ofdm_en = common dso_local global i32 0, align 4
@BPHY_TEST = common dso_local global i32 0, align 4
@PHY_TPC_HW_OFF = common dso_local global i64 0, align 8
@SPURAVOID_DISABLE = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM4716 = common dso_local global i64 0, align 8
@BCMA_PKG_ID_BCM4717 = common dso_local global i64 0, align 8
@SPURAVOID_FORCEON = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8
@tsf_clk_frac_l = common dso_local global i32 0, align 4
@tsf_clk_frac_h = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM47162 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, %struct.nphy_sfo_cfg*)* @wlc_phy_chanspec_nphy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_chanspec_nphy_setup(%struct.brcms_phy* %0, i32 %1, %struct.nphy_sfo_cfg* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nphy_sfo_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nphy_sfo_cfg* %2, %struct.nphy_sfo_cfg** %6, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %10 = call i32 @read_phy_reg(%struct.brcms_phy* %9, i32 9)
  %11 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @CHSPEC_IS5G(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 6
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i32, i32* @psm_phy_hdr_param, align 4
  %24 = call i32 @D11REGOFFS(i32 %23)
  %25 = call i32 @bcma_read16(%struct.TYPE_9__* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 6
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* @psm_phy_hdr_param, align 4
  %30 = call i32 @D11REGOFFS(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MAC_PHY_FORCE_CLK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bcma_write16(%struct.TYPE_9__* %28, i32 %30, i32 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %36 = load i32, i32* @NPHY_TO_BPHY_OFF, align 4
  %37 = load i32, i32* @BPHY_BB_CONFIG, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @BBCFG_RESETCCA, align 4
  %40 = load i32, i32* @BBCFG_RESETRX, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @or_phy_reg(%struct.brcms_phy* %35, i32 %38, i32 %41)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* @psm_phy_hdr_param, align 4
  %47 = call i32 @D11REGOFFS(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @bcma_write16(%struct.TYPE_9__* %45, i32 %47, i32 %48)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %51 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %52 = call i32 @or_phy_reg(%struct.brcms_phy* %50, i32 9, i32 %51)
  br label %97

53:                                               ; preds = %16, %3
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @CHSPEC_IS5G(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %96, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %62 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @and_phy_reg(%struct.brcms_phy* %61, i32 9, i32 %63)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 6
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* @psm_phy_hdr_param, align 4
  %69 = call i32 @D11REGOFFS(i32 %68)
  %70 = call i32 @bcma_read16(%struct.TYPE_9__* %67, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 6
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* @psm_phy_hdr_param, align 4
  %75 = call i32 @D11REGOFFS(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MAC_PHY_FORCE_CLK, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @bcma_write16(%struct.TYPE_9__* %73, i32 %75, i32 %78)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %81 = load i32, i32* @NPHY_TO_BPHY_OFF, align 4
  %82 = load i32, i32* @BPHY_BB_CONFIG, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* @BBCFG_RESETCCA, align 4
  %85 = load i32, i32* @BBCFG_RESETRX, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = call i32 @and_phy_reg(%struct.brcms_phy* %80, i32 %83, i32 %87)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 6
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* @psm_phy_hdr_param, align 4
  %93 = call i32 @D11REGOFFS(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @bcma_write16(%struct.TYPE_9__* %91, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %60, %57, %53
  br label %97

97:                                               ; preds = %96, %19
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %99 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %100 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @write_phy_reg(%struct.brcms_phy* %98, i32 462, i32 %101)
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %104 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %105 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_phy_reg(%struct.brcms_phy* %103, i32 463, i32 %106)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %109 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %110 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_phy_reg(%struct.brcms_phy* %108, i32 464, i32 %111)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %114 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %115 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @write_phy_reg(%struct.brcms_phy* %113, i32 465, i32 %116)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %119 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %120 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @write_phy_reg(%struct.brcms_phy* %118, i32 466, i32 %121)
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %124 = load %struct.nphy_sfo_cfg*, %struct.nphy_sfo_cfg** %6, align 8
  %125 = getelementptr inbounds %struct.nphy_sfo_cfg, %struct.nphy_sfo_cfg* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @write_phy_reg(%struct.brcms_phy* %123, i32 467, i32 %126)
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %129 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @CHSPEC_CHANNEL(i32 %130)
  %132 = icmp eq i32 %131, 14
  br i1 %132, label %133, label %142

133:                                              ; preds = %97
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %135 = load i32, i32* @NPHY_ClassifierCtrl_ofdm_en, align 4
  %136 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %134, i32 %135, i32 0)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %138 = load i32, i32* @NPHY_TO_BPHY_OFF, align 4
  %139 = load i32, i32* @BPHY_TEST, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @or_phy_reg(%struct.brcms_phy* %137, i32 %140, i32 2048)
  br label %157

142:                                              ; preds = %97
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %144 = load i32, i32* @NPHY_ClassifierCtrl_ofdm_en, align 4
  %145 = load i32, i32* @NPHY_ClassifierCtrl_ofdm_en, align 4
  %146 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = call i64 @CHSPEC_IS2G(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %152 = load i32, i32* @NPHY_TO_BPHY_OFF, align 4
  %153 = load i32, i32* @BPHY_TEST, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @and_phy_reg(%struct.brcms_phy* %151, i32 %154, i32 -2113)
  br label %156

156:                                              ; preds = %150, %142
  br label %157

157:                                              ; preds = %156, %133
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PHY_TPC_HW_OFF, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %165 = call i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy* %164)
  br label %166

166:                                              ; preds = %163, %157
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %168 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @NREV_LT(i32 %170, i32 3)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %175 = call i32 @wlc_phy_adjust_lnagaintbl_nphy(%struct.brcms_phy* %174)
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %178 = call i32 @wlc_phy_txlpfbw_nphy(%struct.brcms_phy* %177)
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %180 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @NREV_GE(i32 %182, i32 3)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %415

185:                                              ; preds = %176
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @SPURAVOID_DISABLE, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %415

191:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @CHSPEC_CHANNEL(i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %195 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @CHSPEC_IS40(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %232, label %199

199:                                              ; preds = %191
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @NREV_GE(i32 %203, i32 7)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load i32, i32* %7, align 4
  %208 = icmp eq i32 %207, 13
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %7, align 4
  %211 = icmp eq i32 %210, 14
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %7, align 4
  %214 = icmp eq i32 %213, 153
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %209, %206
  store i32 1, i32* %8, align 4
  br label %216

216:                                              ; preds = %215, %212
  br label %231

217:                                              ; preds = %199
  %218 = load i32, i32* %7, align 4
  %219 = icmp sge i32 %218, 5
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* %7, align 4
  %222 = icmp sle i32 %221, 8
  br i1 %222, label %229, label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 13
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 14
  br i1 %228, label %229, label %230

229:                                              ; preds = %226, %223, %220
  store i32 1, i32* %8, align 4
  br label %230

230:                                              ; preds = %229, %226
  br label %231

231:                                              ; preds = %230, %216
  br label %279

232:                                              ; preds = %191
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %234 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @NREV_GE(i32 %236, i32 7)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load i32, i32* %7, align 4
  %241 = icmp eq i32 %240, 54
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 1, i32* %8, align 4
  br label %243

243:                                              ; preds = %242, %239
  br label %278

244:                                              ; preds = %232
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %277

249:                                              ; preds = %244
  %250 = load i32, i32* %7, align 4
  %251 = icmp eq i32 %250, 38
  br i1 %251, label %258, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %253, 102
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %7, align 4
  %257 = icmp eq i32 %256, 118
  br i1 %257, label %258, label %277

258:                                              ; preds = %255, %252, %249
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 5
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %258
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %268 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %267, i32 0, i32 5
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @BCMA_PKG_ID_BCM4717, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %276

275:                                              ; preds = %266, %258
  store i32 1, i32* %8, align 4
  br label %276

276:                                              ; preds = %275, %274
  br label %277

277:                                              ; preds = %276, %255, %244
  br label %278

278:                                              ; preds = %277, %243
  br label %279

279:                                              ; preds = %278, %231
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %281 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @SPURAVOID_FORCEON, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  store i32 1, i32* %8, align 4
  br label %286

286:                                              ; preds = %285, %279
  %287 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %288 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %287, i32 0, i32 5
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %302, label %294

294:                                              ; preds = %286
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %296 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %295, i32 0, i32 5
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %311

302:                                              ; preds = %294, %286
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %304 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %303, i32 0, i32 6
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  %309 = load i32, i32* %8, align 4
  %310 = call i32 @bcma_pmu_spuravoid_pllupdate(i32* %308, i32 %309)
  br label %332

311:                                              ; preds = %294
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %313 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %312, i32 0, i32 5
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @wlapi_bmac_core_phypll_ctl(i32 %316, i32 0)
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 6
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @bcma_pmu_spuravoid_pllupdate(i32* %323, i32 %324)
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %327 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %326, i32 0, i32 5
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @wlapi_bmac_core_phypll_ctl(i32 %330, i32 1)
  br label %332

332:                                              ; preds = %311, %302
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %334 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %333, i32 0, i32 5
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %348, label %340

340:                                              ; preds = %332
  %341 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %342 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %341, i32 0, i32 5
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %378

348:                                              ; preds = %340, %332
  %349 = load i32, i32* %8, align 4
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %364

351:                                              ; preds = %348
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %353 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %352, i32 0, i32 6
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = load i32, i32* @tsf_clk_frac_l, align 4
  %356 = call i32 @D11REGOFFS(i32 %355)
  %357 = call i32 @bcma_write16(%struct.TYPE_9__* %354, i32 %356, i32 21313)
  %358 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %359 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %358, i32 0, i32 6
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %359, align 8
  %361 = load i32, i32* @tsf_clk_frac_h, align 4
  %362 = call i32 @D11REGOFFS(i32 %361)
  %363 = call i32 @bcma_write16(%struct.TYPE_9__* %360, i32 %362, i32 8)
  br label %377

364:                                              ; preds = %348
  %365 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %366 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %365, i32 0, i32 6
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %366, align 8
  %368 = load i32, i32* @tsf_clk_frac_l, align 4
  %369 = call i32 @D11REGOFFS(i32 %368)
  %370 = call i32 @bcma_write16(%struct.TYPE_9__* %367, i32 %369, i32 34953)
  %371 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %372 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %371, i32 0, i32 6
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %372, align 8
  %374 = load i32, i32* @tsf_clk_frac_h, align 4
  %375 = call i32 @D11REGOFFS(i32 %374)
  %376 = call i32 @bcma_write16(%struct.TYPE_9__* %373, i32 %375, i32 8)
  br label %377

377:                                              ; preds = %364, %351
  br label %378

378:                                              ; preds = %377, %340
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %380 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %379, i32 0, i32 5
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %401, label %386

386:                                              ; preds = %378
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %388 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %387, i32 0, i32 5
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %401, label %394

394:                                              ; preds = %386
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %396 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %395, i32 0, i32 5
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @wlapi_bmac_core_phypll_reset(i32 %399)
  br label %401

401:                                              ; preds = %394, %386, %378
  %402 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %403 = load i32, i32* %8, align 4
  %404 = icmp sgt i32 %403, 0
  %405 = zext i1 %404 to i64
  %406 = select i1 %404, i32 32768, i32 0
  %407 = call i32 @mod_phy_reg(%struct.brcms_phy* %402, i32 1, i32 32768, i32 %406)
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %409 = call i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy* %408)
  %410 = load i32, i32* %8, align 4
  %411 = icmp sgt i32 %410, 0
  %412 = zext i1 %411 to i32
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %414 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %413, i32 0, i32 3
  store i32 %412, i32* %414, align 8
  br label %415

415:                                              ; preds = %401, %185, %176
  %416 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %417 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %416, i32 0, i32 4
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call i64 @NREV_LT(i32 %419, i32 7)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %415
  %423 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %424 = call i32 @write_phy_reg(%struct.brcms_phy* %423, i32 382, i32 14384)
  br label %425

425:                                              ; preds = %422, %415
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %427 = call i32 @wlc_phy_spurwar_nphy(%struct.brcms_phy* %426)
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @bcma_read16(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write16(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlc_phy_adjust_lnagaintbl_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txlpfbw_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @CHSPEC_IS40(i32) #1

declare dso_local i32 @bcma_pmu_spuravoid_pllupdate(i32*, i32) #1

declare dso_local i32 @wlapi_bmac_core_phypll_ctl(i32, i32) #1

declare dso_local i32 @wlapi_bmac_core_phypll_reset(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_spurwar_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
