; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octnet_poll_check_rxq_oom_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octnet_poll_check_rxq_oom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i32, i64 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { %struct.octeon_droq** }
%struct.octeon_droq = type { i32 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @octnet_poll_check_rxq_oom_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_poll_check_rxq_oom_status(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_droq*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = bitcast %struct.work_struct* %8 to %struct.cavium_wk*
  store %struct.cavium_wk* %9, %struct.cavium_wk** %3, align 8
  %10 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %11 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lio*
  store %struct.lio* %13, %struct.lio** %4, align 8
  %14 = load %struct.lio*, %struct.lio** %4, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 0
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %5, align 8
  %17 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %18 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  %22 = load %struct.octeon_droq**, %struct.octeon_droq*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %22, i64 %24
  %26 = load %struct.octeon_droq*, %struct.octeon_droq** %25, align 8
  store %struct.octeon_droq* %26, %struct.octeon_droq** %7, align 8
  %27 = load %struct.lio*, %struct.lio** %4, align 8
  %28 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %29 = call i32 @ifstate_check(%struct.lio* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %33 = icmp ne %struct.octeon_droq* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %1
  br label %43

35:                                               ; preds = %31
  %36 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %37 = call i64 @octeon_retry_droq_refill(%struct.octeon_droq* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %41 = load %struct.octeon_droq*, %struct.octeon_droq** %7, align 8
  %42 = call i32 @octeon_schedule_rxq_oom_work(%struct.octeon_device* %40, %struct.octeon_droq* %41)
  br label %43

43:                                               ; preds = %34, %39, %35
  ret void
}

declare dso_local i32 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i64 @octeon_retry_droq_refill(%struct.octeon_droq*) #1

declare dso_local i32 @octeon_schedule_rxq_oom_work(%struct.octeon_device*, %struct.octeon_droq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
