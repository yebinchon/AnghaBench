; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_hw.c_ath_hw_get_listen_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_hw.c_ath_hw_get_listen_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, %struct.ath_cycle_counters }
%struct.ath_cycle_counters = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hw_get_listen_time(%struct.ath_common* %0) #0 {
  %2 = alloca %struct.ath_common*, align 8
  %3 = alloca %struct.ath_cycle_counters*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %2, align 8
  %5 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %6 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %5, i32 0, i32 1
  store %struct.ath_cycle_counters* %6, %struct.ath_cycle_counters** %3, align 8
  %7 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %3, align 8
  %8 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %3, align 8
  %11 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %3, align 8
  %15 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = sdiv i32 %17, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %3, align 8
  %24 = call i32 @memset(%struct.ath_cycle_counters* %23, i32 0, i32 12)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.ath_cycle_counters*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
