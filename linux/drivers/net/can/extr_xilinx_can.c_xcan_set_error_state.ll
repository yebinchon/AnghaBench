; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_set_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_set_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_frame = type { i64* }
%struct.xcan_priv = type { i64 (%struct.xcan_priv*, i32)* }

@XCAN_ECR_OFFSET = common dso_local global i32 0, align 4
@XCAN_ECR_TEC_MASK = common dso_local global i64 0, align 8
@XCAN_ECR_REC_MASK = common dso_local global i64 0, align 8
@XCAN_ESR_REC_SHIFT = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.can_frame*)* @xcan_set_error_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcan_set_error_state(%struct.net_device* %0, i32 %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.xcan_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.xcan_priv* %14, %struct.xcan_priv** %7, align 8
  %15 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %16 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %15, i32 0, i32 0
  %17 = load i64 (%struct.xcan_priv*, i32)*, i64 (%struct.xcan_priv*, i32)** %16, align 8
  %18 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %19 = load i32, i32* @XCAN_ECR_OFFSET, align 4
  %20 = call i64 %17(%struct.xcan_priv* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @XCAN_ECR_TEC_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @XCAN_ECR_REC_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @XCAN_ESR_REC_SHIFT, align 8
  %28 = ashr i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %11, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %47 = icmp ugt i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %71

52:                                               ; preds = %43
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @can_change_state(%struct.net_device* %53, %struct.can_frame* %54, i32 %55, i32 %56)
  %58 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %59 = icmp ne %struct.can_frame* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 6
  store i64 %61, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %68 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 7
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %51, %60, %52
  ret void
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
