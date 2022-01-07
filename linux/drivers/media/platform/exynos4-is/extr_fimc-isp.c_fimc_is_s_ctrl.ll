; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_is_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_is_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.fimc_isp = type { i32 }
%struct.fimc_is = type { i32 }

@ISP_ADJUST_COMMAND_MANUAL_CONTRAST = common dso_local global i32 0, align 4
@ISP_ADJUST_COMMAND_MANUAL_SATURATION = common dso_local global i32 0, align 4
@ISP_ADJUST_COMMAND_MANUAL_SHARPNESS = common dso_local global i32 0, align 4
@ISP_ADJUST_COMMAND_MANUAL_EXPOSURE = common dso_local global i32 0, align 4
@ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS = common dso_local global i32 0, align 4
@ISP_ADJUST_COMMAND_MANUAL_HUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set control: %s (%d)\0A\00", align 1
@IS_ST_STREAM_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @fimc_is_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.fimc_is*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.fimc_isp* @ctrl_to_fimc_isp(%struct.v4l2_ctrl* %8)
  store %struct.fimc_isp* %9, %struct.fimc_isp** %4, align 8
  %10 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %11 = call %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp* %10)
  store %struct.fimc_is* %11, %struct.fimc_is** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %91 [
    i32 135, label %15
    i32 129, label %22
    i32 128, label %29
    i32 134, label %36
    i32 137, label %43
    i32 132, label %50
    i32 133, label %57
    i32 138, label %63
    i32 139, label %69
    i32 131, label %73
    i32 130, label %79
    i32 136, label %85
  ]

15:                                               ; preds = %1
  %16 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %17 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_CONTRAST, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %16, i32 %17, i32 %20)
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %24 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_SATURATION, align 4
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %23, i32 %24, i32 %27)
  br label %94

29:                                               ; preds = %1
  %30 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %31 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_SHARPNESS, align 4
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %30, i32 %31, i32 %34)
  br label %94

36:                                               ; preds = %1
  %37 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %38 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_EXPOSURE, align 4
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %37, i32 %38, i32 %41)
  br label %94

43:                                               ; preds = %1
  %44 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %45 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS, align 4
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %44, i32 %45, i32 %48)
  br label %94

50:                                               ; preds = %1
  %51 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %52 = load i32, i32* @ISP_ADJUST_COMMAND_MANUAL_HUE, align 4
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__is_set_isp_adjust(%struct.fimc_is* %51, i32 %52, i32 %55)
  br label %94

57:                                               ; preds = %1
  %58 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__ctrl_set_metering(%struct.fimc_is* %58, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %94

63:                                               ; preds = %1
  %64 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__ctrl_set_white_balance(%struct.fimc_is* %64, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %94

69:                                               ; preds = %1
  %70 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %71 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %72 = call i32 @__ctrl_set_aewb_lock(%struct.fimc_is* %70, %struct.v4l2_ctrl* %71)
  store i32 %72, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %94

73:                                               ; preds = %1
  %74 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__ctrl_set_iso(%struct.fimc_is* %74, i32 %77)
  store i32 %78, i32* %7, align 4
  br label %94

79:                                               ; preds = %1
  %80 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %81 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__ctrl_set_afc(%struct.fimc_is* %80, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %94

85:                                               ; preds = %1
  %86 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__ctrl_set_image_effect(%struct.fimc_is* %86, i32 %89)
  br label %94

91:                                               ; preds = %1
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %85, %79, %73, %69, %63, %57, %50, %43, %36, %29, %22, %15
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %99 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %98, i32 0, i32 0
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @v4l2_err(i32* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %121

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* @IS_ST_STREAM_ON, align 4
  %113 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %114 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %113, i32 0, i32 0
  %115 = call i64 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %119 = call i32 @fimc_is_itf_s_param(%struct.fimc_is* %118, i32 1)
  store i32 %119, i32* %2, align 4
  br label %121

120:                                              ; preds = %111, %108
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %117, %97
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.fimc_isp* @ctrl_to_fimc_isp(%struct.v4l2_ctrl*) #1

declare dso_local %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp*) #1

declare dso_local i32 @__is_set_isp_adjust(%struct.fimc_is*, i32, i32) #1

declare dso_local i32 @__ctrl_set_metering(%struct.fimc_is*, i32) #1

declare dso_local i32 @__ctrl_set_white_balance(%struct.fimc_is*, i32) #1

declare dso_local i32 @__ctrl_set_aewb_lock(%struct.fimc_is*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @__ctrl_set_iso(%struct.fimc_is*, i32) #1

declare dso_local i32 @__ctrl_set_afc(%struct.fimc_is*, i32) #1

declare dso_local i32 @__ctrl_set_image_effect(%struct.fimc_is*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fimc_is_itf_s_param(%struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
