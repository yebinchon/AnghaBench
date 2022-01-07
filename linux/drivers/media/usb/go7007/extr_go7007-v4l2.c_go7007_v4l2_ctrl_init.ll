; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_v4l2_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_v4l2_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_CLOSURE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_B_FRAMES = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ASPECT = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_ACTIVE_MARKER = common dso_local global i32 0, align 4
@V4L2_JPEG_ACTIVE_MARKER_DQT = common dso_local global i32 0, align 4
@V4L2_JPEG_ACTIVE_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@go7007_pixel_threshold0_ctrl = common dso_local global i32 0, align 4
@go7007_motion_threshold0_ctrl = common dso_local global i32 0, align 4
@go7007_mb_threshold0_ctrl = common dso_local global i32 0, align 4
@go7007_pixel_threshold1_ctrl = common dso_local global i32 0, align 4
@go7007_motion_threshold1_ctrl = common dso_local global i32 0, align 4
@go7007_mb_threshold1_ctrl = common dso_local global i32 0, align 4
@go7007_pixel_threshold2_ctrl = common dso_local global i32 0, align 4
@go7007_motion_threshold2_ctrl = common dso_local global i32 0, align 4
@go7007_mb_threshold2_ctrl = common dso_local global i32 0, align 4
@go7007_pixel_threshold3_ctrl = common dso_local global i32 0, align 4
@go7007_motion_threshold3_ctrl = common dso_local global i32 0, align 4
@go7007_mb_threshold3_ctrl = common dso_local global i32 0, align 4
@go7007_mb_regions_ctrl = common dso_local global i32 0, align 4
@V4L2_CID_DETECT_MD_MODE = common dso_local global i32 0, align 4
@V4L2_DETECT_MD_MODE_REGION_GRID = common dso_local global i32 0, align 4
@V4L2_DETECT_MD_MODE_THRESHOLD_GRID = common dso_local global i32 0, align 4
@V4L2_DETECT_MD_MODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not register controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_v4l2_ctrl_init(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %7 = load %struct.go7007*, %struct.go7007** %3, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 8
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %9, i32 22)
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %12 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %13 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %11, i32* null, i32 %12, i32 0, i32 34, i32 1, i32 15)
  %14 = load %struct.go7007*, %struct.go7007** %3, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %17 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_CLOSURE, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* null, i32 %17, i32 0, i32 1, i32 1, i32 1)
  %19 = load %struct.go7007*, %struct.go7007** %3, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* null, i32 %22, i32 64000, i32 10000000, i32 1, i32 9800000)
  %24 = load %struct.go7007*, %struct.go7007** %3, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %27 = load i32, i32* @V4L2_CID_MPEG_VIDEO_B_FRAMES, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* null, i32 %27, i32 0, i32 2, i32 2, i32 0)
  %29 = load %struct.go7007*, %struct.go7007** %3, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %32 = load i32, i32* @V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, i32* null, i32 %32, i32 0, i32 1, i32 1, i32 1)
  %34 = load %struct.go7007*, %struct.go7007** %3, align 8
  %35 = getelementptr inbounds %struct.go7007, %struct.go7007* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %37 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ASPECT, align 4
  %38 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %39 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %40 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %36, i32* null, i32 %37, i32 %38, i32 0, i32 %39)
  %41 = load %struct.go7007*, %struct.go7007** %3, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %44 = load i32, i32* @V4L2_CID_JPEG_ACTIVE_MARKER, align 4
  %45 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DQT, align 4
  %46 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DHT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DQT, align 4
  %49 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DHT, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %43, i32* null, i32 %44, i32 0, i32 %47, i32 0, i32 %50)
  %52 = bitcast i8* %51 to %struct.v4l2_ctrl*
  store %struct.v4l2_ctrl* %52, %struct.v4l2_ctrl** %5, align 8
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %54 = icmp ne %struct.v4l2_ctrl* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %1
  %56 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %1
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %63 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %62, i32* @go7007_pixel_threshold0_ctrl, i32* null)
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %65 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %64, i32* @go7007_motion_threshold0_ctrl, i32* null)
  %66 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %67 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %66, i32* @go7007_mb_threshold0_ctrl, i32* null)
  %68 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %69 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %68, i32* @go7007_pixel_threshold1_ctrl, i32* null)
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %71 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %70, i32* @go7007_motion_threshold1_ctrl, i32* null)
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %73 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %72, i32* @go7007_mb_threshold1_ctrl, i32* null)
  %74 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %75 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %74, i32* @go7007_pixel_threshold2_ctrl, i32* null)
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %77 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %76, i32* @go7007_motion_threshold2_ctrl, i32* null)
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %79 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %78, i32* @go7007_mb_threshold2_ctrl, i32* null)
  %80 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %81 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %80, i32* @go7007_pixel_threshold3_ctrl, i32* null)
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %83 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %82, i32* @go7007_motion_threshold3_ctrl, i32* null)
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %85 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %84, i32* @go7007_mb_threshold3_ctrl, i32* null)
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %87 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %86, i32* @go7007_mb_regions_ctrl, i32* null)
  %88 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %89 = load i32, i32* @V4L2_CID_DETECT_MD_MODE, align 4
  %90 = load i32, i32* @V4L2_DETECT_MD_MODE_REGION_GRID, align 4
  %91 = load i32, i32* @V4L2_DETECT_MD_MODE_THRESHOLD_GRID, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* @V4L2_DETECT_MD_MODE_DISABLED, align 4
  %94 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %88, i32* null, i32 %89, i32 %90, i32 %92, i32 %93)
  %95 = load %struct.go7007*, %struct.go7007** %3, align 8
  %96 = getelementptr inbounds %struct.go7007, %struct.go7007* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %61
  %102 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.go7007*, %struct.go7007** %3, align 8
  %106 = getelementptr inbounds %struct.go7007, %struct.go7007* %105, i32 0, i32 0
  %107 = call i32 @v4l2_err(%struct.TYPE_2__* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %114

109:                                              ; preds = %61
  %110 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %111 = load %struct.go7007*, %struct.go7007** %3, align 8
  %112 = getelementptr inbounds %struct.go7007, %struct.go7007* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %110, %struct.v4l2_ctrl_handler** %113, align 8
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %101
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
