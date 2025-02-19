; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_get_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_get_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_NUM_GPIO = common dso_local global i32 0, align 4
@AR5K_GPIODI = common dso_local global i32 0, align 4
@AR5K_GPIODI_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_gpio(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AR5K_NUM_GPIO, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = load i32, i32* @AR5K_GPIODI, align 4
  %13 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %11, i32 %12)
  %14 = load i32, i32* @AR5K_GPIODI_M, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
