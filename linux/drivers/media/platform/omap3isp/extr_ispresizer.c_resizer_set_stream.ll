; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, i32 }
%struct.isp_res_device = type { i32, i32, i32, i32, %struct.isp_video }
%struct.isp_video = type { i32 }
%struct.isp_device = type { i32 }
%struct.device = type { i32 }

@OMAP3_ISP_SUBCLK_RESIZER = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_RESIZER_WRITE = common dso_local global i32 0, align 4
@ISP_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@RESIZER_INPUT_MEMORY = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_RESIZER_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: module stop timeout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @resizer_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_res_device*, align 8
  %7 = alloca %struct.isp_video*, align 8
  %8 = alloca %struct.isp_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_res_device* %11, %struct.isp_res_device** %6, align 8
  %12 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %13 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %12, i32 0, i32 4
  store %struct.isp_video* %13, %struct.isp_video** %7, align 8
  %14 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %15 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %14)
  store %struct.isp_device* %15, %struct.isp_device** %8, align 8
  %16 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %17 = call %struct.device* @to_device(%struct.isp_res_device* %16)
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %19 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %98

26:                                               ; preds = %22
  %27 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %28 = load i32, i32* @OMAP3_ISP_SUBCLK_RESIZER, align 4
  %29 = call i32 @omap3isp_subclk_enable(%struct.isp_device* %27, i32 %28)
  %30 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %31 = call i32 @resizer_configure(%struct.isp_res_device* %30)
  %32 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %33 = call i32 @resizer_print_status(%struct.isp_res_device* %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %94 [
    i32 130, label %36
    i32 129, label %52
    i32 128, label %68
  ]

36:                                               ; preds = %34
  %37 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %38 = load i32, i32* @OMAP3_ISP_SBL_RESIZER_WRITE, align 4
  %39 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %37, i32 %38)
  %40 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %41 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISP_VIDEO_DMAQUEUE_QUEUED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %48 = call i32 @resizer_enable_oneshot(%struct.isp_res_device* %47)
  %49 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %50 = call i32 @isp_video_dmaqueue_flags_clr(%struct.isp_video* %49)
  br label %51

51:                                               ; preds = %46, %36
  br label %94

52:                                               ; preds = %34
  %53 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %54 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RESIZER_INPUT_MEMORY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %60 = load i32, i32* @OMAP3_ISP_SBL_RESIZER_READ, align 4
  %61 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %64 = load i32, i32* @OMAP3_ISP_SBL_RESIZER_WRITE, align 4
  %65 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %63, i32 %64)
  %66 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %67 = call i32 @resizer_enable_oneshot(%struct.isp_res_device* %66)
  br label %94

68:                                               ; preds = %34
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 1
  %71 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %72 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %71, i32 0, i32 2
  %73 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %74 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %73, i32 0, i32 1
  %75 = call i32 @omap3isp_module_sync_idle(i32* %70, i32* %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %85 = load i32, i32* @OMAP3_ISP_SBL_RESIZER_READ, align 4
  %86 = load i32, i32* @OMAP3_ISP_SBL_RESIZER_WRITE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @omap3isp_sbl_disable(%struct.isp_device* %84, i32 %87)
  %89 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  %90 = load i32, i32* @OMAP3_ISP_SUBCLK_RESIZER, align 4
  %91 = call i32 @omap3isp_subclk_disable(%struct.isp_device* %89, i32 %90)
  %92 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %93 = call i32 @isp_video_dmaqueue_flags_clr(%struct.isp_video* %92)
  br label %94

94:                                               ; preds = %34, %83, %62, %51
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %97 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %25
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local %struct.device* @to_device(%struct.isp_res_device*) #1

declare dso_local i32 @omap3isp_subclk_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @resizer_configure(%struct.isp_res_device*) #1

declare dso_local i32 @resizer_print_status(%struct.isp_res_device*) #1

declare dso_local i32 @omap3isp_sbl_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @resizer_enable_oneshot(%struct.isp_res_device*) #1

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
