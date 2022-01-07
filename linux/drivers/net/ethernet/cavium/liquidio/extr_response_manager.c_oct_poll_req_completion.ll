; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_response_manager.c_oct_poll_req_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_response_manager.c_oct_poll_req_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i64 }
%struct.octeon_device = type { %struct.TYPE_4__*, %struct.cavium_wq }
%struct.TYPE_4__ = type { i32 }
%struct.cavium_wq = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@OCTEON_ORDERED_SC_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @oct_poll_req_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct_poll_req_completion(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.cavium_wq*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = bitcast %struct.work_struct* %6 to %struct.cavium_wk*
  store %struct.cavium_wk* %7, %struct.cavium_wk** %3, align 8
  %8 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %9 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.octeon_device*
  store %struct.octeon_device* %11, %struct.octeon_device** %4, align 8
  %12 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 1
  store %struct.cavium_wq* %13, %struct.cavium_wq** %5, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = call i32 @lio_process_ordered_list(%struct.octeon_device* %14, i32 0)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* @OCTEON_ORDERED_SC_LIST, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %26 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %29 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @msecs_to_jiffies(i32 1)
  %32 = call i32 @queue_delayed_work(i32 %27, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @lio_process_ordered_list(%struct.octeon_device*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
