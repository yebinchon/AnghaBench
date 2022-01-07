; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_info = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ICE_ERR_NOT_READY = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_ctl_q_info*)* @ice_init_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_sq(%struct.ice_hw* %0, %struct.ice_ctl_q_info* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_ctl_q_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_ctl_q_info* %1, %struct.ice_ctl_q_info** %4, align 8
  %6 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %7 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ICE_ERR_NOT_READY, align 4
  store i32 %12, i32* %5, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %15 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %20 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %27 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %30 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %33 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %34 = call i32 @ice_alloc_ctrlq_sq_ring(%struct.ice_hw* %32, %struct.ice_ctl_q_info* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %64

38:                                               ; preds = %25
  %39 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %40 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %41 = call i32 @ice_alloc_sq_bufs(%struct.ice_hw* %39, %struct.ice_ctl_q_info* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %47 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %48 = call i32 @ice_cfg_sq_regs(%struct.ice_hw* %46, %struct.ice_ctl_q_info* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %59

52:                                               ; preds = %45
  %53 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %54 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %57 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %64

59:                                               ; preds = %51, %44
  %60 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %61 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %62 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %61, i32 0, i32 1
  %63 = call i32 @ice_free_cq_ring(%struct.ice_hw* %60, %struct.TYPE_2__* %62)
  br label %64

64:                                               ; preds = %59, %52, %37, %23, %11
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ice_alloc_ctrlq_sq_ring(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_alloc_sq_bufs(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_cfg_sq_regs(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_free_cq_ring(%struct.ice_hw*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
