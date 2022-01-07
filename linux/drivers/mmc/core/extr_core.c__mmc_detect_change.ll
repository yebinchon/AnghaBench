; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c__mmc_detect_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c__mmc_detect_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32 }

@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i64, i32)* @_mmc_detect_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mmc_detect_change(%struct.mmc_host* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %18 = call i32 @mmc_dev(%struct.mmc_host* %17)
  %19 = call i64 @device_can_wakeup(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %23 = call i32 @mmc_dev(%struct.mmc_host* %22)
  %24 = call i32 @pm_wakeup_event(i32 %23, i32 5000)
  br label %25

25:                                               ; preds = %21, %16, %9, %3
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 2
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @mmc_schedule_delayed_work(i32* %29, i64 %30)
  ret void
}

declare dso_local i64 @device_can_wakeup(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @mmc_schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
