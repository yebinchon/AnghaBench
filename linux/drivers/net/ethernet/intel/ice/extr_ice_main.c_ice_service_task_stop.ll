; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_service_task_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_service_task_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@__ICE_SERVICE_DIS = common dso_local global i32 0, align 4
@__ICE_SERVICE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_service_task_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_service_task_stop(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %3 = load i32, i32* @__ICE_SERVICE_DIS, align 4
  %4 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %5 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @set_bit(i32 %3, i32 %6)
  %8 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 2
  %16 = call i32 @del_timer_sync(%struct.TYPE_3__* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %19 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %25 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %24, i32 0, i32 1
  %26 = call i32 @cancel_work_sync(%struct.TYPE_4__* %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* @__ICE_SERVICE_SCHED, align 4
  %29 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clear_bit(i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_3__*) #1

declare dso_local i32 @cancel_work_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
