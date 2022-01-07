; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, i32 }
%struct.isp_prev_device = type { i32, i32, i32, i32, i32, %struct.isp_video }
%struct.isp_video = type { i32 }
%struct.isp_device = type { i32 }
%struct.device = type { i32 }

@OMAP3_ISP_SUBCLK_PREVIEW = common dso_local global i32 0, align 4
@PREVIEW_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_PREVIEW_WRITE = common dso_local global i32 0, align 4
@ISP_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@PREVIEW_INPUT_MEMORY = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_PREVIEW_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: stop timeout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @preview_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preview_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_prev_device*, align 8
  %7 = alloca %struct.isp_video*, align 8
  %8 = alloca %struct.isp_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_prev_device* %11, %struct.isp_prev_device** %6, align 8
  %12 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %13 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %12, i32 0, i32 5
  store %struct.isp_video* %13, %struct.isp_video** %7, align 8
  %14 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %15 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %14)
  store %struct.isp_device* %15, %struct.isp_device** %8, align 8
  %16 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %17 = call %struct.device* @to_device(%struct.isp_prev_device* %16)
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %19 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %125

26:                                               ; preds = %22
  %27 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %28 = load i32, i32* @OMAP3_ISP_SUBCLK_PREVIEW, align 4
  %29 = call i32 @omap3isp_subclk_enable(%struct.isp_device* %27, i32 %28)
  %30 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %31 = call i32 @preview_configure(%struct.isp_prev_device* %30)
  %32 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %33 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %32, i32 0, i32 2
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %36 = call i32 @preview_print_status(%struct.isp_prev_device* %35)
  br label %37

37:                                               ; preds = %26, %2
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %121 [
    i32 130, label %39
    i32 129, label %70
    i32 128, label %94
  ]

39:                                               ; preds = %37
  %40 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %41 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %48 = load i32, i32* @OMAP3_ISP_SBL_PREVIEW_WRITE, align 4
  %49 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %52 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ISP_VIDEO_DMAQUEUE_QUEUED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %59 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %66 = call i32 @preview_enable_oneshot(%struct.isp_prev_device* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %69 = call i32 @isp_video_dmaqueue_flags_clr(%struct.isp_video* %68)
  br label %121

70:                                               ; preds = %37
  %71 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %72 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PREVIEW_INPUT_MEMORY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %78 = load i32, i32* @OMAP3_ISP_SBL_PREVIEW_READ, align 4
  %79 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %82 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %89 = load i32, i32* @OMAP3_ISP_SBL_PREVIEW_WRITE, align 4
  %90 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %93 = call i32 @preview_enable_oneshot(%struct.isp_prev_device* %92)
  br label %121

94:                                               ; preds = %37
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %95, i32 0, i32 1
  %97 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %98 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %97, i32 0, i32 3
  %99 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %100 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %99, i32 0, i32 2
  %101 = call i32 @omap3isp_module_sync_idle(i32* %96, i32* %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.device*, %struct.device** %9, align 8
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %111 = load i32, i32* @OMAP3_ISP_SBL_PREVIEW_READ, align 4
  %112 = call i32 @omap3isp_sbl_disable(%struct.isp_device* %110, i32 %111)
  %113 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %114 = load i32, i32* @OMAP3_ISP_SBL_PREVIEW_WRITE, align 4
  %115 = call i32 @omap3isp_sbl_disable(%struct.isp_device* %113, i32 %114)
  %116 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %117 = load i32, i32* @OMAP3_ISP_SUBCLK_PREVIEW, align 4
  %118 = call i32 @omap3isp_subclk_disable(%struct.isp_device* %116, i32 %117)
  %119 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %120 = call i32 @isp_video_dmaqueue_flags_clr(%struct.isp_video* %119)
  br label %121

121:                                              ; preds = %37, %109, %91, %67
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.isp_prev_device*, %struct.isp_prev_device** %6, align 8
  %124 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.isp_prev_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local %struct.device* @to_device(%struct.isp_prev_device*) #1

declare dso_local i32 @omap3isp_subclk_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @preview_configure(%struct.isp_prev_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @preview_print_status(%struct.isp_prev_device*) #1

declare dso_local i32 @omap3isp_sbl_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @preview_enable_oneshot(%struct.isp_prev_device*) #1

declare dso_local i32 @isp_video_dmaqueue_flags_clr(%struct.isp_video*) #1

declare dso_local i32 @omap3isp_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @omap3isp_sbl_disable(%struct.isp_device*, i32) #1

declare dso_local i32 @omap3isp_subclk_disable(%struct.isp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
