; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_fetch_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_fetch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { %struct.lio_vf_rep_desc* }
%struct.lio_vf_rep_desc = type { %struct.TYPE_2__, i32, i32, %struct.octeon_device* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.lio_vf_rep_stats = type { i32 }
%struct.lio_vf_rep_req = type { i32, i32 }

@LIO_VF_REP_REQ_STATS = common dso_local global i32 0, align 4
@LIO_VF_REP_STATS_POLL_TIME_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @lio_vf_rep_fetch_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_vf_rep_fetch_stats(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.lio_vf_rep_desc*, align 8
  %5 = alloca %struct.lio_vf_rep_stats, align 4
  %6 = alloca %struct.lio_vf_rep_req, align 4
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %10 = bitcast %struct.work_struct* %9 to %struct.cavium_wk*
  store %struct.cavium_wk* %10, %struct.cavium_wk** %3, align 8
  %11 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %12 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %11, i32 0, i32 0
  %13 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %12, align 8
  store %struct.lio_vf_rep_desc* %13, %struct.lio_vf_rep_desc** %4, align 8
  %14 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %15 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %14, i32 0, i32 3
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %7, align 8
  %17 = call i32 @memset(%struct.lio_vf_rep_req* %6, i32 0, i32 8)
  %18 = load i32, i32* @LIO_VF_REP_REQ_STATS, align 4
  %19 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %21 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.lio_vf_rep_req, %struct.lio_vf_rep_req* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %25 = call i32 @lio_vf_rep_send_soft_command(%struct.octeon_device* %24, %struct.lio_vf_rep_req* %6, i32 8, %struct.lio_vf_rep_stats* %5, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = bitcast %struct.lio_vf_rep_stats* %5 to i32*
  %30 = call i32 @octeon_swap_8B_data(i32* %29, i32 0)
  %31 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %32 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %31, i32 0, i32 1
  %33 = call i32 @memcpy(i32* %32, %struct.lio_vf_rep_stats* %5, i32 4)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %36 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @LIO_VF_REP_STATS_POLL_TIME_MS, align 4
  %39 = call i32 @msecs_to_jiffies(i32 %38)
  %40 = call i32 @schedule_delayed_work(i32* %37, i32 %39)
  ret void
}

declare dso_local i32 @memset(%struct.lio_vf_rep_req*, i32, i32) #1

declare dso_local i32 @lio_vf_rep_send_soft_command(%struct.octeon_device*, %struct.lio_vf_rep_req*, i32, %struct.lio_vf_rep_stats*, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.lio_vf_rep_stats*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
