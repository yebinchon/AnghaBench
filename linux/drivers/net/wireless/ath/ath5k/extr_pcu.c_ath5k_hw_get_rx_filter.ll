; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_RX_FILTER = common dso_local global i32 0, align 4
@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_PHY_ERR_FIL = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_RADAR = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_RADARERR = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_OFDM = common dso_local global i32 0, align 4
@AR5K_PHY_ERR_FIL_CCK = common dso_local global i32 0, align 4
@AR5K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = load i32, i32* @AR5K_RX_FILTER, align 4
  %7 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AR5K_AR5212, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %15 = load i32, i32* @AR5K_PHY_ERR_FIL, align 4
  %16 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AR5K_PHY_ERR_FIL_RADAR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @AR5K_RX_FILTER_RADARERR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @AR5K_PHY_ERR_FIL_OFDM, align 4
  %28 = load i32, i32* @AR5K_PHY_ERR_FIL_CCK, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
