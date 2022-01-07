; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_max_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32 }

@CCDC_INPUT_PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_ccdc_max_rate(%struct.isp_ccdc_device* %0, i32* %1) #0 {
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.isp_pipeline*, align 8
  %6 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %8 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %9)
  store %struct.isp_pipeline* %10, %struct.isp_pipeline** %5, align 8
  %11 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %12 = icmp eq %struct.isp_pipeline* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %16 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CCDC_INPUT_PARALLEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %22 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  %25 = mul nsw i32 %24, 9
  %26 = sdiv i32 %25, 10
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %14
  %28 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %29 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @min(i32 %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %13
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
