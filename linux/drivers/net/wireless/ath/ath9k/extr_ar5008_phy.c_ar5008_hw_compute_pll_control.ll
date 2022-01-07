; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_compute_pll_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_compute_pll_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_RTC_PLL_REFDIV_5 = common dso_local global i32 0, align 4
@AR_RTC_PLL_DIV2 = common dso_local global i32 0, align 4
@AR_RTC_PLL_CLKSEL = common dso_local global i32 0, align 4
@AR_RTC_PLL_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_compute_pll_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_compute_pll_control(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load i32, i32* @AR_RTC_PLL_REFDIV_5, align 4
  %7 = load i32, i32* @AR_RTC_PLL_DIV2, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %10 = icmp ne %struct.ath9k_channel* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %13 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @AR_RTC_PLL_CLKSEL, align 4
  %17 = call i32 @SM(i32 1, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %11, %2
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %22 = icmp ne %struct.ath9k_channel* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %25 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @AR_RTC_PLL_CLKSEL, align 4
  %29 = call i32 @SM(i32 2, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %23, %20
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %35 = icmp ne %struct.ath9k_channel* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %38 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %42 = call i32 @SM(i32 10, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %36, %33
  %46 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %47 = call i32 @SM(i32 11, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
