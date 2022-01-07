; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_save_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_save_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.TYPE_6__*, %struct.b43_phy_n* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43_phy_n = type { i64, %struct.TYPE_4__, %struct.b43_chanspec, %struct.b43_chanspec }
%struct.TYPE_4__ = type { i32*, i32*, %struct.b43_phy_n_iq_comp, i32*, i32*, %struct.b43_phy_n_iq_comp }
%struct.b43_phy_n_iq_comp = type { i32 }
%struct.b43_chanspec = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@R2057_TX0_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_save_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_save_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca %struct.b43_phy_n_iq_comp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.b43_chanspec*, align 8
  %8 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_phy* %10, %struct.b43_phy** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 2
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  store %struct.b43_phy_n* %14, %struct.b43_phy_n** %4, align 8
  store %struct.b43_phy_n_iq_comp* null, %struct.b43_phy_n_iq_comp** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %16 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %20, i32 1)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @b43_current_band(i32 %25)
  %27 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %31 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  store %struct.b43_phy_n_iq_comp* %32, %struct.b43_phy_n_iq_comp** %5, align 8
  %33 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %34 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %6, align 8
  %37 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %38 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %37, i32 0, i32 3
  store %struct.b43_chanspec* %38, %struct.b43_chanspec** %7, align 8
  %39 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %40 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  br label %57

43:                                               ; preds = %22
  %44 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %45 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store %struct.b43_phy_n_iq_comp* %46, %struct.b43_phy_n_iq_comp** %5, align 8
  %47 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %48 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %6, align 8
  %51 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %52 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %51, i32 0, i32 2
  store %struct.b43_chanspec* %52, %struct.b43_chanspec** %7, align 8
  %53 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %54 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %43, %29
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load %struct.b43_phy_n_iq_comp*, %struct.b43_phy_n_iq_comp** %5, align 8
  %60 = call i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev* %58, i32 0, %struct.b43_phy_n_iq_comp* %59)
  %61 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 19
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %169

66:                                               ; preds = %57
  %67 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 7
  br i1 %70, label %71, label %112

71:                                               ; preds = %66
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @R2057_TX0_LOFT_FINE_I, align 4
  %74 = call i32 @b43_radio_read(%struct.b43_wldev* %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @R2057_TX0_LOFT_FINE_Q, align 4
  %79 = call i32 @b43_radio_read(%struct.b43_wldev* %77, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @R2057_TX0_LOFT_COARSE_I, align 4
  %84 = call i32 @b43_radio_read(%struct.b43_wldev* %82, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @R2057_TX0_LOFT_COARSE_Q, align 4
  %89 = call i32 @b43_radio_read(%struct.b43_wldev* %87, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i32, i32* @R2057_TX1_LOFT_FINE_I, align 4
  %94 = call i32 @b43_radio_read(%struct.b43_wldev* %92, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @R2057_TX1_LOFT_FINE_Q, align 4
  %99 = call i32 @b43_radio_read(%struct.b43_wldev* %97, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @R2057_TX1_LOFT_COARSE_I, align 4
  %104 = call i32 @b43_radio_read(%struct.b43_wldev* %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  store i32 %104, i32* %106, align 4
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @R2057_TX1_LOFT_COARSE_Q, align 4
  %109 = call i32 @b43_radio_read(%struct.b43_wldev* %107, i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  store i32 %109, i32* %111, align 4
  br label %168

112:                                              ; preds = %66
  %113 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %114 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 3
  br i1 %116, label %117, label %150

117:                                              ; preds = %112
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = call i32 @b43_radio_read(%struct.b43_wldev* %118, i32 8225)
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = call i32 @b43_radio_read(%struct.b43_wldev* %122, i32 8226)
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @b43_radio_read(%struct.b43_wldev* %126, i32 12321)
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = call i32 @b43_radio_read(%struct.b43_wldev* %130, i32 12322)
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = call i32 @b43_radio_read(%struct.b43_wldev* %134, i32 8227)
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = call i32 @b43_radio_read(%struct.b43_wldev* %138, i32 8228)
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %143 = call i32 @b43_radio_read(%struct.b43_wldev* %142, i32 12323)
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  store i32 %143, i32* %145, align 4
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = call i32 @b43_radio_read(%struct.b43_wldev* %146, i32 12324)
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 7
  store i32 %147, i32* %149, align 4
  br label %167

150:                                              ; preds = %112
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = call i32 @b43_radio_read(%struct.b43_wldev* %151, i32 139)
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = call i32 @b43_radio_read(%struct.b43_wldev* %155, i32 186)
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = call i32 @b43_radio_read(%struct.b43_wldev* %159, i32 141)
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = call i32 @b43_radio_read(%struct.b43_wldev* %163, i32 188)
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %150, %117
  br label %168

168:                                              ; preds = %167, %71
  br label %169

169:                                              ; preds = %168, %65
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %171, i32 0, i32 1
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.b43_chanspec*, %struct.b43_chanspec** %7, align 8
  %179 = getelementptr inbounds %struct.b43_chanspec, %struct.b43_chanspec* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_6__* %183)
  %185 = load %struct.b43_chanspec*, %struct.b43_chanspec** %7, align 8
  %186 = getelementptr inbounds %struct.b43_chanspec, %struct.b43_chanspec* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = call i32 @B43_NTAB16(i32 15, i32 80)
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %187, i32 %188, i32 8, i32* %189)
  %191 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %192 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %169
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %196, i32 0)
  br label %198

198:                                              ; preds = %195, %169
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev*, i32, %struct.b43_phy_n_iq_comp*) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_6__*) #1

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
