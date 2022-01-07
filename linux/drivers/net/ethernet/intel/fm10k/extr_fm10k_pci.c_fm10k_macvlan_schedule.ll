; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_macvlan_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_macvlan_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32 }

@__FM10K_MACVLAN_DISABLE = common dso_local global i32 0, align 4
@__FM10K_MACVLAN_SCHED = common dso_local global i32 0, align 4
@__FM10K_MACVLAN_REQUEST = common dso_local global i32 0, align 4
@fm10k_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_macvlan_schedule(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %3 = load i32, i32* @__FM10K_MACVLAN_DISABLE, align 4
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @test_bit(i32 %3, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @__FM10K_MACVLAN_SCHED, align 4
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @test_and_set_bit(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @__FM10K_MACVLAN_REQUEST, align 4
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clear_bit(i32 %17, i32 %20)
  %22 = load i32, i32* @fm10k_workqueue, align 4
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %24 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %23, i32 0, i32 1
  %25 = call i32 @queue_delayed_work(i32 %22, i32* %24, i32 10)
  br label %32

26:                                               ; preds = %9, %1
  %27 = load i32, i32* @__FM10K_MACVLAN_REQUEST, align 4
  %28 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %29 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_bit(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %16
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
