; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_compute_pll_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_compute_pll_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_RTC_9300_PLL_REFDIV = common dso_local global i32 0, align 4
@AR_RTC_9300_PLL_CLKSEL = common dso_local global i32 0, align 4
@AR_RTC_9300_PLL_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_compute_pll_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_compute_pll_control(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load i32, i32* @AR_RTC_9300_PLL_REFDIV, align 4
  %7 = call i32 @SM(i32 5, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %9 = icmp ne %struct.ath9k_channel* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %12 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @AR_RTC_9300_PLL_CLKSEL, align 4
  %16 = call i32 @SM(i32 1, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %10, %2
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %21 = icmp ne %struct.ath9k_channel* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %24 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @AR_RTC_9300_PLL_CLKSEL, align 4
  %28 = call i32 @SM(i32 2, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %22, %19
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* @AR_RTC_9300_PLL_DIV, align 4
  %34 = call i32 @SM(i32 44, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
