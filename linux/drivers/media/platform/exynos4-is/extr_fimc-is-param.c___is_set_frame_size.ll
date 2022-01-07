; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_set_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_set_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, %struct.fd_param, %struct.drc_param, %struct.isp_param }
%struct.fd_param = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drc_param = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.isp_param = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@PARAM_ISP_OTF_INPUT = common dso_local global i32 0, align 4
@PARAM_ISP_OTF_OUTPUT = common dso_local global i32 0, align 4
@PARAM_DRC_OTF_INPUT = common dso_local global i32 0, align 4
@PARAM_DRC_OTF_OUTPUT = common dso_local global i32 0, align 4
@PARAM_FD_OTF_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__is_set_frame_size(%struct.fimc_is* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_param*, align 8
  %7 = alloca %struct.drc_param*, align 8
  %8 = alloca %struct.fd_param*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %9 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %13 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store %struct.isp_param* %18, %struct.isp_param** %6, align 8
  %19 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store %struct.drc_param* %25, %struct.drc_param** %7, align 8
  %26 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %27 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store %struct.fd_param* %32, %struct.fd_param** %8, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.isp_param*, %struct.isp_param** %6, align 8
  %37 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.isp_param*, %struct.isp_param** %6, align 8
  %43 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.isp_param*, %struct.isp_param** %6, align 8
  %49 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.isp_param*, %struct.isp_param** %6, align 8
  %55 = getelementptr inbounds %struct.isp_param, %struct.isp_param* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drc_param*, %struct.drc_param** %7, align 8
  %61 = getelementptr inbounds %struct.drc_param, %struct.drc_param* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drc_param*, %struct.drc_param** %7, align 8
  %67 = getelementptr inbounds %struct.drc_param, %struct.drc_param* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drc_param*, %struct.drc_param** %7, align 8
  %73 = getelementptr inbounds %struct.drc_param, %struct.drc_param* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.drc_param*, %struct.drc_param** %7, align 8
  %79 = getelementptr inbounds %struct.drc_param, %struct.drc_param* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fd_param*, %struct.fd_param** %8, align 8
  %85 = getelementptr inbounds %struct.fd_param, %struct.fd_param* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fd_param*, %struct.fd_param** %8, align 8
  %91 = getelementptr inbounds %struct.fd_param, %struct.fd_param* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @PARAM_ISP_OTF_INPUT, align 4
  %94 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %95 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = call i64 @test_bit(i32 %93, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %2
  br label %122

106:                                              ; preds = %2
  %107 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %108 = load i32, i32* @PARAM_ISP_OTF_INPUT, align 4
  %109 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %107, i32 %108)
  %110 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %111 = load i32, i32* @PARAM_ISP_OTF_OUTPUT, align 4
  %112 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %110, i32 %111)
  %113 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %114 = load i32, i32* @PARAM_DRC_OTF_INPUT, align 4
  %115 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %113, i32 %114)
  %116 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %117 = load i32, i32* @PARAM_DRC_OTF_OUTPUT, align 4
  %118 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %116, i32 %117)
  %119 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %120 = load i32, i32* @PARAM_FD_OTF_INPUT, align 4
  %121 = call i32 @fimc_is_set_param_bit(%struct.fimc_is* %119, i32 %120)
  br label %122

122:                                              ; preds = %106, %105
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fimc_is_set_param_bit(%struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
