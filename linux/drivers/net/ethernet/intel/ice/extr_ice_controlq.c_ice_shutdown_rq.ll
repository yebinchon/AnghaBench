; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_shutdown_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_shutdown_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@ICE_ERR_NOT_READY = common dso_local global i32 0, align 4
@rq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_ctl_q_info*)* @ice_shutdown_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_shutdown_rq(%struct.ice_hw* %0, %struct.ice_ctl_q_info* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_ctl_q_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_ctl_q_info* %1, %struct.ice_ctl_q_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %7 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %10 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ICE_ERR_NOT_READY, align 4
  store i32 %15, i32* %5, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %18 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %19 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wr32(%struct.ice_hw* %17, i32 %21, i32 0)
  %23 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %24 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %25 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wr32(%struct.ice_hw* %23, i32 %27, i32 0)
  %29 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %30 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %31 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wr32(%struct.ice_hw* %29, i32 %33, i32 0)
  %35 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %36 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %37 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wr32(%struct.ice_hw* %35, i32 %39, i32 0)
  %41 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %42 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %43 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @wr32(%struct.ice_hw* %41, i32 %45, i32 0)
  %47 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %48 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %51 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %52 = load i32, i32* @rq, align 4
  %53 = call i32 @ICE_FREE_CQ_BUFS(%struct.ice_hw* %50, %struct.ice_ctl_q_info* %51, i32 %52)
  %54 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %55 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %56 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %55, i32 0, i32 1
  %57 = call i32 @ice_free_cq_ring(%struct.ice_hw* %54, %struct.TYPE_2__* %56)
  br label %58

58:                                               ; preds = %16, %14
  %59 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %60 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ICE_FREE_CQ_BUFS(%struct.ice_hw*, %struct.ice_ctl_q_info*, i32) #1

declare dso_local i32 @ice_free_cq_ring(%struct.ice_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
