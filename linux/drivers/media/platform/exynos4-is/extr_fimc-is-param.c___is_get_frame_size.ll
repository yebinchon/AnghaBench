; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_get_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_get_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.isp_param }
%struct.isp_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__is_get_frame_size(%struct.fimc_is* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.isp_param*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %6 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.isp_param* %13, %struct.isp_param** %5, align 8
  %14 = load %struct.isp_param*, %struct.isp_param** %5, align 8
  %15 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.isp_param*, %struct.isp_param** %5, align 8
  %21 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
