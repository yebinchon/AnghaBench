; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_frame_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32 }
%struct.ieee80211_rate = type { i32 }

@AR5K_INIT_OFDM_PREAMPLE_TIME = common dso_local global i32 0, align 4
@AR5K_INIT_OFDM_PLCP_BITS = common dso_local global i32 0, align 4
@AR5K_INIT_OFDM_SYMBOL_TIME = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_TURBO = common dso_local global i32 0, align 4
@AR5K_INIT_OFDM_PREAMBLE_TIME_MIN = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_HALF_RATE = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_QUARTER_RATE = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_DEFAULT_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw* %0, i32 %1, i32 %2, %struct.ieee80211_rate* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_rate* %3, %struct.ieee80211_rate** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %5
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %33 = call i32 @ieee80211_generic_frame_duration(i32 %29, i32* null, i32 %30, i32 %31, %struct.ieee80211_rate* %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %20, align 4
  %40 = sub nsw i32 %39, 96
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %20, align 4
  store i32 %42, i32* %6, align 4
  br label %94

43:                                               ; preds = %5
  %44 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @AR5K_INIT_OFDM_PREAMPLE_TIME, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @AR5K_INIT_OFDM_PLCP_BITS, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @AR5K_INIT_OFDM_SYMBOL_TIME, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %72 [
    i32 129, label %53
    i32 130, label %56
    i32 128, label %64
  ]

53:                                               ; preds = %43
  %54 = load i32, i32* @AR5K_INIT_SIFS_TURBO, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @AR5K_INIT_OFDM_PREAMBLE_TIME_MIN, align 4
  store i32 %55, i32* %13, align 4
  br label %74

56:                                               ; preds = %43
  %57 = load i32, i32* @AR5K_INIT_SIFS_HALF_RATE, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %62, i32 2)
  store i32 %63, i32* %16, align 4
  br label %74

64:                                               ; preds = %43
  %65 = load i32, i32* @AR5K_INIT_SIFS_QUARTER_RATE, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %15, align 4
  %69 = mul nsw i32 %68, 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 %70, i32 4)
  store i32 %71, i32* %16, align 4
  br label %74

72:                                               ; preds = %43
  %73 = load i32, i32* @AR5K_INIT_SIFS_DEFAULT_BG, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %64, %56, %53
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 3
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 %82, 10
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @DIV_ROUND_UP(i32 %83, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %18, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %74, %41
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @ieee80211_generic_frame_duration(i32, i32*, i32, i32, %struct.ieee80211_rate*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
