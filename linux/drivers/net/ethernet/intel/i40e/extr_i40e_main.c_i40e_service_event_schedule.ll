; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_service_event_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_service_event_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32 }

@__I40E_DOWN = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RECOVERY_MODE = common dso_local global i32 0, align 4
@i40e_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_service_event_schedule(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %3 = load i32, i32* @__I40E_DOWN, align 4
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @test_bit(i32 %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16, %9
  %24 = load i32, i32* @i40e_wq, align 4
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 0
  %27 = call i32 @queue_work(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %16
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
