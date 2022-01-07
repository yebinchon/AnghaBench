; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@TPC0_QM_GLBL_CFG1_CP_STOP_SHIFT = common dso_local global i32 0, align 4
@TPC0_QM_CP_STS_FENCE_IN_PROGRESS_MASK = common dso_local global i32 0, align 4
@QMAN_FENCE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@TPC0_QM_GLBL_STS0_CP_IS_STOP_MASK = common dso_local global i32 0, align 4
@QMAN_STOP_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while waiting for QMAN to stop\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32, i32, i32)* @goya_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_stop_queue(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @TPC0_QM_GLBL_CFG1_CP_STOP_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @WREG32(i32 %12, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @TPC0_QM_CP_STS_FENCE_IN_PROGRESS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %4
  %23 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TPC0_QM_CP_STS_FENCE_IN_PROGRESS_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @QMAN_FENCE_TIMEOUT_USEC, align 4
  %33 = call i32 @hl_poll_timeout(%struct.hl_device* %23, i32 %24, i32 %25, i32 %31, i32 1000, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %57

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @TPC0_QM_GLBL_STS0_CP_IS_STOP_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @QMAN_STOP_TIMEOUT_USEC, align 4
  %46 = call i32 @hl_poll_timeout(%struct.hl_device* %39, i32 %40, i32 %41, i32 %44, i32 1000, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %49, %36
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
