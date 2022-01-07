; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_compute_pll_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_compute_pll_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_RTC_9160_PLL_REFDIV = common dso_local global i32 0, align 4
@AR_RTC_9160_PLL_DIV = common dso_local global i32 0, align 4
@AR_RTC_9160_PLL_CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_compute_pll_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_compute_pll_control(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 5, i32* %5, align 4
  store i32 44, i32* %6, align 4
  %8 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %9 = icmp ne %struct.ath9k_channel* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %12 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = call i32 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %15, %struct.ath9k_channel* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 10, i32* %5, align 4
  store i32 80, i32* %6, align 4
  br label %25

24:                                               ; preds = %19
  store i32 40, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %14, %10, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AR_RTC_9160_PLL_REFDIV, align 4
  %29 = call i32 @SM(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AR_RTC_9160_PLL_DIV, align 4
  %32 = call i32 @SM(i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %36 = icmp ne %struct.ath9k_channel* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %39 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @AR_RTC_9160_PLL_CLKSEL, align 4
  %43 = call i32 @SM(i32 1, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %59

46:                                               ; preds = %37, %26
  %47 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %48 = icmp ne %struct.ath9k_channel* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %51 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @AR_RTC_9160_PLL_CLKSEL, align 4
  %55 = call i32 @SM(i32 2, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %49, %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
