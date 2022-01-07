; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_8__, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"firmware is not loaded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IS_ST_A5_PWR_ON = common dso_local global i32 0, align 4
@FIMC_IS_FW_LOAD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"FIMC-IS CPU power on failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_is_start_firmware(%struct.fimc_is* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  %6 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %22 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %24, i32 %30, i32 %36)
  %38 = call i32 (...) @wmb()
  %39 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %40 = call i32 @fimc_is_cpu_set_power(%struct.fimc_is* %39, i32 1)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %20
  %46 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %47 = load i32, i32* @IS_ST_A5_PWR_ON, align 4
  %48 = load i32, i32* @FIMC_IS_FW_LOAD_TIMEOUT, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i32 @fimc_is_wait_event(%struct.fimc_is* %46, i32 %47, i32 1, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %43, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fimc_is_cpu_set_power(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_is_wait_event(%struct.fimc_is*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
