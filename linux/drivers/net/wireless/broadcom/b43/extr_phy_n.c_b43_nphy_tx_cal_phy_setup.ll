; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i64 }

@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_PA = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_TRSW = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@R2057_OVR_REG0 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@R2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_TUNE_PUS_CORE1 = common dso_local global i32 0, align 4
@R2057_IPA5G_CASCOFFV_PU_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA5G_CASCOFFV_PU_CORE1 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 1
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  store %struct.b43_phy_n* %12, %struct.b43_phy_n** %4, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %15, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %21 = call i32 @b43_phy_read(%struct.b43_wldev* %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %26 = call i32 @b43_phy_read(%struct.b43_wldev* %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %212

34:                                               ; preds = %1
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %37 = call i32 @b43_phy_maskset(%struct.b43_wldev* %35, i32 %36, i32 61695, i32 2560)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %40 = call i32 @b43_phy_maskset(%struct.b43_wldev* %38, i32 %39, i32 61695, i32 2560)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %43 = call i32 @b43_phy_read(%struct.b43_wldev* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 1536
  %51 = call i32 @b43_phy_write(%struct.b43_wldev* %47, i32 %48, i32 %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %54 = call i32 @b43_phy_read(%struct.b43_wldev* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, 1536
  %62 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %65 = call i32 @b43_phy_read(%struct.b43_wldev* %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %70 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %71, 65535
  %73 = call i32 @b43_phy_mask(%struct.b43_wldev* %68, i32 %69, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @B43_NTAB16(i32 8, i32 3)
  %76 = call i32 @b43_ntab_read(%struct.b43_wldev* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @B43_NTAB16(i32 8, i32 3)
  %82 = call i32 @b43_ntab_write(%struct.b43_wldev* %80, i32 %81, i32 0)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @B43_NTAB16(i32 8, i32 19)
  %85 = call i32 @b43_ntab_read(%struct.b43_wldev* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @B43_NTAB16(i32 8, i32 19)
  %91 = call i32 @b43_ntab_write(%struct.b43_wldev* %89, i32 %90, i32 0)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %94 = call i32 @b43_phy_read(%struct.b43_wldev* %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %99 = call i32 @b43_phy_read(%struct.b43_wldev* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32 %99, i32* %101, align 4
  %102 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %103 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %34
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @N_INTC_OVERRIDE_PA, align 4
  %109 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %107, i32 %108, i32 1, i32 3)
  br label %114

110:                                              ; preds = %34
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = load i32, i32* @N_INTC_OVERRIDE_PA, align 4
  %113 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %111, i32 %112, i32 0, i32 3)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %117 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %115, i32 %116, i32 2, i32 1)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %120 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %118, i32 %119, i32 8, i32 2)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %123 = call i32 @b43_phy_read(%struct.b43_wldev* %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 9
  store i32 %123, i32* %125, align 4
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %128 = call i32 @b43_phy_read(%struct.b43_wldev* %126, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  store i32 %128, i32* %130, align 4
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %133 = call i32 @b43_phy_mask(%struct.b43_wldev* %131, i32 %132, i32 -2)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %136 = call i32 @b43_phy_mask(%struct.b43_wldev* %134, i32 %135, i32 -2)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %138 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %137, i32 0)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %140 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %141, 19
  br i1 %142, label %143, label %147

143:                                              ; preds = %114
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev* %144, i32 128, i32 %145, i32 0, i32 0, i32 1)
  br label %157

147:                                              ; preds = %114
  %148 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %149 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 7
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %153, i32 128, i32 %154, i32 0, i32 0, i32 1)
  br label %156

156:                                              ; preds = %152, %147
  br label %157

157:                                              ; preds = %156, %143
  %158 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %159 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %211

162:                                              ; preds = %157
  %163 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %164 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 19
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev* %168, i32 8, i32 0, i32 3, i32 0, i32 0)
  br label %210

170:                                              ; preds = %162
  %171 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %172 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 8
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %176, i32 8, i32 0, i32 3, i32 0, i32 0)
  br label %209

178:                                              ; preds = %170
  %179 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %180 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 7
  br i1 %182, label %183, label %208

183:                                              ; preds = %178
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* @R2057_OVR_REG0, align 4
  %186 = call i32 @b43_radio_maskset(%struct.b43_wldev* %184, i32 %185, i32 16, i32 16)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @b43_current_band(i32 %189)
  %191 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %183
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %195 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE0, align 4
  %196 = call i32 @b43_radio_maskset(%struct.b43_wldev* %194, i32 %195, i32 -2, i32 0)
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %198 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE1, align 4
  %199 = call i32 @b43_radio_maskset(%struct.b43_wldev* %197, i32 %198, i32 -2, i32 0)
  br label %207

200:                                              ; preds = %183
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %202 = load i32, i32* @R2057_IPA5G_CASCOFFV_PU_CORE0, align 4
  %203 = call i32 @b43_radio_maskset(%struct.b43_wldev* %201, i32 %202, i32 -2, i32 0)
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %205 = load i32, i32* @R2057_IPA5G_CASCOFFV_PU_CORE1, align 4
  %206 = call i32 @b43_radio_maskset(%struct.b43_wldev* %204, i32 %205, i32 -2, i32 0)
  br label %207

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207, %178
  br label %209

209:                                              ; preds = %208, %175
  br label %210

210:                                              ; preds = %209, %167
  br label %211

211:                                              ; preds = %210, %157
  br label %281

212:                                              ; preds = %1
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %215 = call i32 @b43_phy_maskset(%struct.b43_wldev* %213, i32 %214, i32 4095, i32 40960)
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %218 = call i32 @b43_phy_maskset(%struct.b43_wldev* %216, i32 %217, i32 4095, i32 40960)
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %221 = call i32 @b43_phy_read(%struct.b43_wldev* %219, i32 %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32 %222, i32* %224, align 4
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %227 = load i32, i32* %6, align 4
  %228 = or i32 %227, 12288
  %229 = call i32 @b43_phy_write(%struct.b43_wldev* %225, i32 %226, i32 %228)
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = call i32 @B43_NTAB16(i32 8, i32 2)
  %232 = call i32 @b43_ntab_read(%struct.b43_wldev* %230, i32 %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %6, align 4
  %237 = or i32 %236, 8192
  store i32 %237, i32* %6, align 4
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = call i32 @B43_NTAB16(i32 8, i32 2)
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @b43_ntab_write(%struct.b43_wldev* %238, i32 %239, i32 %240)
  %242 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %243 = call i32 @B43_NTAB16(i32 8, i32 18)
  %244 = call i32 @b43_ntab_read(%struct.b43_wldev* %242, i32 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, 8192
  store i32 %249, i32* %6, align 4
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %251 = call i32 @B43_NTAB16(i32 8, i32 18)
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @b43_ntab_write(%struct.b43_wldev* %250, i32 %251, i32 %252)
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %256 = call i32 @b43_phy_read(%struct.b43_wldev* %254, i32 %255)
  %257 = load i32*, i32** %5, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 5
  store i32 %256, i32* %258, align 4
  %259 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %260 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %261 = call i32 @b43_phy_read(%struct.b43_wldev* %259, i32 %260)
  %262 = load i32*, i32** %5, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 6
  store i32 %261, i32* %263, align 4
  %264 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %265 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i64 @b43_current_band(i32 %266)
  %268 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %212
  store i32 384, i32* %6, align 4
  br label %272

271:                                              ; preds = %212
  store i32 288, i32* %6, align 4
  br label %272

272:                                              ; preds = %271, %270
  %273 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %274 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @b43_phy_write(%struct.b43_wldev* %273, i32 %274, i32 %275)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @b43_phy_write(%struct.b43_wldev* %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %272, %211
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
