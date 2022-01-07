; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_cts_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_cts_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_TIME_OUT_CTS = common dso_local global i32 0, align 4
@AR_TIME_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_cts_timeout(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ath9k_hw_mac_to_clks(%struct.ath_hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AR_TIME_OUT_CTS, align 4
  %11 = call i64 @MS(i32 -1, i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @min(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load i32, i32* @AR_TIME_OUT, align 4
  %16 = load i32, i32* @AR_TIME_OUT_CTS, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %14, i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @ath9k_hw_mac_to_clks(%struct.ath_hw*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
