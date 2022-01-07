; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_deinit(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath_btcoex_hw* %5, %struct.ath_btcoex_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ath9k_hw_gpio_free(%struct.ath_hw* %6, i32 %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ath9k_hw_gpio_free(%struct.ath_hw* %11, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ath9k_hw_gpio_free(%struct.ath_hw* %16, i32 %19)
  ret void
}

declare dso_local i32 @ath9k_hw_gpio_free(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
