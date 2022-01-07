; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_delta_slope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_delta_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_PHY_TIMING3 = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_EXP = common dso_local global i32 0, align 4
@AR_PHY_SGI_DELTA = common dso_local global i32 0, align 4
@AR_PHY_SGI_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_SGI_DSC_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_set_delta_slope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_delta_slope(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.chan_centers, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 1677721600, i32* %8, align 4
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %8, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %18 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 2
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %27 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %25, %struct.ath9k_channel* %26, %struct.chan_centers* %9)
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ath9k_hw_get_delta_slope_vals(%struct.ath_hw* %32, i32 %33, i32* %7, i32* %6)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = load i32, i32* @AR_PHY_TIMING3, align 4
  %37 = load i32, i32* @AR_PHY_TIMING3_DSC_MAN, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_PHY_TIMING3, align 4
  %42 = load i32, i32* @AR_PHY_TIMING3_DSC_EXP, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 9, %45
  %47 = sdiv i32 %46, 10
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ath9k_hw_get_delta_slope_vals(%struct.ath_hw* %48, i32 %49, i32* %7, i32* %6)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_PHY_SGI_DELTA, align 4
  %53 = load i32, i32* @AR_PHY_SGI_DSC_MAN, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_PHY_SGI_DELTA, align 4
  %58 = load i32, i32* @AR_PHY_SGI_DSC_EXP, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %56, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i32 @ath9k_hw_get_delta_slope_vals(%struct.ath_hw*, i32, i32*, i32*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
