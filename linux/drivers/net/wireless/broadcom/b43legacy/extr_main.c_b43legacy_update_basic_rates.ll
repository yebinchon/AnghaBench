; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_update_basic_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_update_basic_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43legacy_SHM_SH_CCKDIRECT = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_CCKBASIC = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_OFDMDIRECT = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_OFDMBASIC = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_update_basic_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_update_basic_rates(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %20, align 8
  %22 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, i64 %22
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %23, align 8
  store %struct.ieee80211_supported_band* %24, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %103, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %106

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 1
  %34 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %34, i64 %36
  store %struct.ieee80211_rate* %37, %struct.ieee80211_rate** %6, align 8
  %38 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @b43legacy_is_cck_rate(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32, i32* @B43legacy_SHM_SH_CCKDIRECT, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @B43legacy_SHM_SH_CCKBASIC, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @b43legacy_plcp_get_ratecode_cck(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %10, align 4
  br label %61

52:                                               ; preds = %31
  %53 = load i32, i32* @B43legacy_SHM_SH_OFDMDIRECT, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @B43legacy_SHM_SH_OFDMBASIC, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @b43legacy_plcp_get_ratecode_ofdm(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.ieee80211_rate* @ieee80211_get_response_rate(%struct.ieee80211_supported_band* %62, i32 %63, i32 %66)
  store %struct.ieee80211_rate* %67, %struct.ieee80211_rate** %6, align 8
  %68 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @b43legacy_is_cck_rate(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @b43legacy_plcp_get_ratecode_cck(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %11, align 4
  br label %87

80:                                               ; preds = %61
  %81 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @b43legacy_plcp_get_ratecode_ofdm(i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 15
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %89 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 %90, %92
  %94 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %88, i32 %89, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %96 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 %97, %99
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %95, i32 %96, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %25

106:                                              ; preds = %25
  ret void
}

declare dso_local i64 @b43legacy_is_cck_rate(i32) #1

declare dso_local i32 @b43legacy_plcp_get_ratecode_cck(i32) #1

declare dso_local i32 @b43legacy_plcp_get_ratecode_ofdm(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_response_rate(%struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_read16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
