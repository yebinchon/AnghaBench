; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_cleanup_rx_oom_poll_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_cleanup_rx_oom_poll_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { %struct.cavium_wq*, %struct.octeon_device* }
%struct.cavium_wq = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_rx_oom_poll_fn(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.cavium_wq*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.lio* @GET_LIO(%struct.net_device* %7)
  store %struct.lio* %8, %struct.lio** %3, align 8
  %9 = load %struct.lio*, %struct.lio** %3, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  store %struct.octeon_device* %11, %struct.octeon_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.lio*, %struct.lio** %3, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 0
  %21 = load %struct.cavium_wq*, %struct.cavium_wq** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %21, i64 %23
  store %struct.cavium_wq* %24, %struct.cavium_wq** %5, align 8
  %25 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %26 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %18
  %30 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %31 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  %34 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %35 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @flush_workqueue(i32* %36)
  %38 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %39 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @destroy_workqueue(i32* %40)
  %42 = load %struct.cavium_wq*, %struct.cavium_wq** %5, align 8
  %43 = getelementptr inbounds %struct.cavium_wq, %struct.cavium_wq* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %29, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %12
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
