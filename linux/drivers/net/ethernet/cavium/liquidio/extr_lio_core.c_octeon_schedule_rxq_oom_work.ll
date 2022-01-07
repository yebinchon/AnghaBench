; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_schedule_rxq_oom_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_schedule_rxq_oom_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.octeon_droq = type { i64 }
%struct.lio = type { %struct.cavium_wq* }
%struct.cavium_wq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@LIO_OOM_POLL_INTERVAL_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_schedule_rxq_oom_work(%struct.octeon_device* %0, %struct.octeon_droq* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_droq*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.cavium_wq*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %4, align 8
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.lio* @GET_LIO(%struct.net_device* %14)
  store %struct.lio* %15, %struct.lio** %6, align 8
  %16 = load %struct.lio*, %struct.lio** %6, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 0
  %18 = load %struct.cavium_wq*, %struct.cavium_wq** %17, align 8
  %19 = load %struct.octeon_droq*, %struct.octeon_droq** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %18, i64 %21
  store %struct.cavium_wq* %22, %struct.cavium_wq** %7, align 8
  %23 = load %struct.cavium_wq*, %struct.cavium_wq** %7, align 8
  %24 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cavium_wq*, %struct.cavium_wq** %7, align 8
  %27 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* @LIO_OOM_POLL_INTERVAL_MS, align 4
  %30 = call i32 @msecs_to_jiffies(i32 %29)
  %31 = call i32 @queue_delayed_work(i32 %25, i32* %28, i32 %30)
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
