; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_watchdog_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i64, i32 }

@__FM10K_DOWN = common dso_local global i32 0, align 4
@__FM10K_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_watchdog_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_watchdog_subtask(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %3 = load i32, i32* @__FM10K_DOWN, align 4
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @test_bit(i32 %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @__FM10K_RESETTING, align 4
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  br label %40

17:                                               ; preds = %9
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %24 = call i32 @fm10k_watchdog_host_is_ready(%struct.fm10k_intfc* %23)
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %27 = call i32 @fm10k_watchdog_host_not_ready(%struct.fm10k_intfc* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %30 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @time_is_before_jiffies(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %36 = call i32 @fm10k_update_stats(%struct.fm10k_intfc* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %39 = call i32 @fm10k_watchdog_flush_tx(%struct.fm10k_intfc* %38)
  br label %40

40:                                               ; preds = %37, %16
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @fm10k_watchdog_host_is_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_watchdog_host_not_ready(%struct.fm10k_intfc*) #1

declare dso_local i64 @time_is_before_jiffies(i32) #1

declare dso_local i32 @fm10k_update_stats(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_watchdog_flush_tx(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
