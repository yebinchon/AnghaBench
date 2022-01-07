; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_wdt_reg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_wdt_reg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vpu = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vpu_wdt_handler* }
%struct.vpu_wdt_handler = type { void (i8*)*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"vpu device in not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@VPU_RST_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"wdt register id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"register vpu wdt handler failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_wdt_reg_handler(%struct.platform_device* %0, void (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_vpu*, align 8
  %11 = alloca %struct.vpu_wdt_handler*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = call %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.mtk_vpu* %13, %struct.mtk_vpu** %10, align 8
  %14 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %15 = icmp ne %struct.mtk_vpu* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %24 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.vpu_wdt_handler*, %struct.vpu_wdt_handler** %25, align 8
  store %struct.vpu_wdt_handler* %26, %struct.vpu_wdt_handler** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp uge i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VPU_RST_MAX, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load void (i8*)*, void (i8*)** %7, align 8
  %35 = icmp ne void (i8*)* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %38 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %43 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load void (i8*)*, void (i8*)** %7, align 8
  %46 = load %struct.vpu_wdt_handler*, %struct.vpu_wdt_handler** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vpu_wdt_handler, %struct.vpu_wdt_handler* %46, i64 %48
  %50 = getelementptr inbounds %struct.vpu_wdt_handler, %struct.vpu_wdt_handler* %49, i32 0, i32 0
  store void (i8*)* %45, void (i8*)** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.vpu_wdt_handler*, %struct.vpu_wdt_handler** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vpu_wdt_handler, %struct.vpu_wdt_handler* %52, i64 %54
  %56 = getelementptr inbounds %struct.vpu_wdt_handler, %struct.vpu_wdt_handler* %55, i32 0, i32 1
  store i8* %51, i8** %56, align 8
  %57 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %58 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %5, align 4
  br label %67

60:                                               ; preds = %33, %29, %22
  %61 = load %struct.mtk_vpu*, %struct.mtk_vpu** %10, align 8
  %62 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %36, %16
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
