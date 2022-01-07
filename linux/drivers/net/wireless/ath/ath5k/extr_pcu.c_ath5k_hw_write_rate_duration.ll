; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_write_rate_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_write_rate_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ack_rates_high = common dso_local global i64* null, align 8
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@AR5K_SET_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*)* @ath5k_hw_write_rate_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_write_rate_duration(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ieee80211_rate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %8 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  store i64 %8, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %93, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %10, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %9
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %30, align 8
  %32 = load i64*, i64** @ack_rates_high, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %31, i64 %36
  store %struct.ieee80211_rate* %37, %struct.ieee80211_rate** %3, align 8
  br label %60

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %47, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %48, i64 0
  store %struct.ieee80211_rate* %49, %struct.ieee80211_rate** %3, align 8
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %56, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %57, i64 4
  store %struct.ieee80211_rate* %58, %struct.ieee80211_rate** %3, align 8
  br label %59

59:                                               ; preds = %50, %41
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @AR5K_RATE_DUR(i32 %63)
  store i64 %64, i64* %6, align 8
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %3, align 8
  %68 = call i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw* %65, i64 %66, i32 10, %struct.ieee80211_rate* %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %69, i32 %70, i64 %71)
  %73 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %60
  br label %93

80:                                               ; preds = %60
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %3, align 8
  %84 = call i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw* %81, i64 %82, i32 10, %struct.ieee80211_rate* %83, i32 1)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @AR5K_SET_SHORT_PREAMBLE, align 4
  %89 = shl i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %85, i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %80, %79
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %9

96:                                               ; preds = %9
  ret void
}

declare dso_local i64 @AR5K_RATE_DUR(i32) #1

declare dso_local i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw*, i64, i32, %struct.ieee80211_rate*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
