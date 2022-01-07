; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_check_db_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_check_db_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i64, i64 }
%struct.octeon_device = type { %struct.cavium_wq* }
%struct.cavium_wq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @check_db_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_db_timeout(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cavium_wq*, align 8
  %7 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = bitcast %struct.work_struct* %8 to %struct.cavium_wk*
  store %struct.cavium_wk* %9, %struct.cavium_wk** %3, align 8
  %10 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %11 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.octeon_device*
  store %struct.octeon_device* %13, %struct.octeon_device** %4, align 8
  %14 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %15 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = load %struct.cavium_wq*, %struct.cavium_wq** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %19, i64 %20
  store %struct.cavium_wq* %21, %struct.cavium_wq** %6, align 8
  store i32 10, i32* %7, align 4
  %22 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @__check_db_timeout(%struct.octeon_device* %22, i64 %23)
  %25 = load %struct.cavium_wq*, %struct.cavium_wq** %6, align 8
  %26 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cavium_wq*, %struct.cavium_wq** %6, align 8
  %29 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @msecs_to_jiffies(i32 %31)
  %33 = call i32 @queue_delayed_work(i32 %27, i32* %30, i32 %32)
  ret void
}

declare dso_local i32 @__check_db_timeout(%struct.octeon_device*, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
