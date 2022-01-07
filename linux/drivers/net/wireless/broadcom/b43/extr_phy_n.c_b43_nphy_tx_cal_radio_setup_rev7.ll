; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i64 }

@R2057_TX0_TX_SSI_MASTER = common dso_local global i64 0, align 8
@R2057_TX0_IQCAL_VCM_HG = common dso_local global i64 0, align 8
@R2057_TX0_IQCAL_IDAC = common dso_local global i64 0, align 8
@R2057_TX0_TSSI_VCM = common dso_local global i64 0, align 8
@R2057_TX0_TX_SSI_MUX = common dso_local global i64 0, align 8
@R2057_TX0_TSSIA = common dso_local global i64 0, align 8
@R2057_TX0_TSSIG = common dso_local global i64 0, align 8
@R2057_TX0_TSSI_MISC1 = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_radio_setup_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_radio_setup_rev7(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_phy* %11, %struct.b43_phy** %3, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 1
  %15 = load %struct.b43_phy_n*, %struct.b43_phy_n** %14, align 8
  store %struct.b43_phy_n* %15, %struct.b43_phy_n** %4, align 8
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %253, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %256

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 32, i32 0
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 11
  store i32 %28, i32* %7, align 4
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @b43_radio_read(%struct.b43_wldev* %29, i64 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @b43_radio_read(%struct.b43_wldev* %40, i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @b43_radio_read(%struct.b43_wldev* %51, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @b43_radio_read(%struct.b43_wldev* %62, i64 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @b43_radio_read(%struct.b43_wldev* %78, i64 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 5
  br i1 %92, label %93, label %105

93:                                               ; preds = %22
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @b43_radio_read(%struct.b43_wldev* %94, i64 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %22
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @b43_radio_read(%struct.b43_wldev* %106, i64 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @b43_radio_read(%struct.b43_wldev* %117, i64 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @b43_current_band(i32 %130)
  %132 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %105
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @b43_radio_write(%struct.b43_wldev* %135, i64 %139, i32 10)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @b43_radio_write(%struct.b43_wldev* %141, i64 %145, i32 67)
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @b43_radio_write(%struct.b43_wldev* %147, i64 %151, i32 85)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @b43_radio_write(%struct.b43_wldev* %153, i64 %157, i32 0)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @b43_radio_write(%struct.b43_wldev* %159, i64 %163, i32 0)
  %165 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %166 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %134
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @b43_radio_write(%struct.b43_wldev* %170, i64 %174, i32 4)
  store i32 49, i32* %9, align 4
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %180 = add nsw i64 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @b43_radio_write(%struct.b43_wldev* %176, i64 %180, i32 %181)
  br label %183

183:                                              ; preds = %169, %134
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @b43_radio_write(%struct.b43_wldev* %184, i64 %188, i32 0)
  br label %252

190:                                              ; preds = %105
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @b43_radio_write(%struct.b43_wldev* %191, i64 %195, i32 6)
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @b43_radio_write(%struct.b43_wldev* %197, i64 %201, i32 67)
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @b43_radio_write(%struct.b43_wldev* %203, i64 %207, i32 85)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @b43_radio_write(%struct.b43_wldev* %209, i64 %213, i32 0)
  %215 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %216 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 5
  br i1 %218, label %219, label %226

219:                                              ; preds = %190
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @b43_radio_write(%struct.b43_wldev* %220, i64 %224, i32 0)
  br label %226

226:                                              ; preds = %219, %190
  %227 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %228 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %226
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @b43_radio_write(%struct.b43_wldev* %232, i64 %236, i32 6)
  store i32 49, i32* %9, align 4
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %242 = add nsw i64 %240, %241
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @b43_radio_write(%struct.b43_wldev* %238, i64 %242, i32 %243)
  br label %245

245:                                              ; preds = %231, %226
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @b43_radio_write(%struct.b43_wldev* %246, i64 %250, i32 0)
  br label %252

252:                                              ; preds = %245, %183
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %6, align 4
  br label %19

256:                                              ; preds = %19
  ret void
}

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i64) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
