; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_pmu.c_si_pmu_fast_pwrup_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_pmu.c_si_pmu_fast_pwrup_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_pub = type { i32 }

@PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_pmu_fast_pwrup_delay(%struct.si_pub* %0) #0 {
  %2 = alloca %struct.si_pub*, align 8
  %3 = alloca i32, align 4
  store %struct.si_pub* %0, %struct.si_pub** %2, align 8
  %4 = load i32, i32* @PMU_MAX_TRANSITION_DLY, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.si_pub*, %struct.si_pub** %2, align 8
  %6 = call i32 @ai_get_chip_id(%struct.si_pub* %5)
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
    i32 130, label %7
  ]

7:                                                ; preds = %1, %1, %1
  store i32 3700, i32* %3, align 4
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @ai_get_chip_id(%struct.si_pub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
