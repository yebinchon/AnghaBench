; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_set_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_set_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.isp_param, %struct.sensor_param }
%struct.isp_param = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.sensor_param = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PARAM_SENSOR_FRAME_RATE = common dso_local global i32 0, align 4
@PARAM_ISP_OTF_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__is_set_sensor(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sensor_param*, align 8
  %7 = alloca %struct.isp_param*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.sensor_param* %17, %struct.sensor_param** %6, align 8
  %18 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %19 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.isp_param* %24, %struct.isp_param** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %29 = call i32 @fimc_is_hw_get_sensor_max_framerate(%struct.fimc_is* %28)
  %30 = load %struct.sensor_param*, %struct.sensor_param** %6, align 8
  %31 = getelementptr inbounds %struct.sensor_param, %struct.sensor_param* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.isp_param*, %struct.isp_param** %7, align 8
  %34 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.isp_param*, %struct.isp_param** %7, align 8
  %37 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 66666, i32* %38, align 8
  br label %52

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.sensor_param*, %struct.sensor_param** %6, align 8
  %42 = getelementptr inbounds %struct.sensor_param, %struct.sensor_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.isp_param*, %struct.isp_param** %7, align 8
  %45 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sdiv i32 1000000, %47
  %49 = load %struct.isp_param*, %struct.isp_param** %7, align 8
  %50 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %39, %27
  %53 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %54 = load i32, i32* @PARAM_SENSOR_FRAME_RATE, align 4
  %55 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %53, i32 %54)
  %56 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %57 = load i32, i32* @PARAM_ISP_OTF_INPUT, align 4
  %58 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %56, i32 %57)
  ret void
}

declare dso_local i32 @fimc_is_hw_get_sensor_max_framerate(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_set_param_bit(%struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
