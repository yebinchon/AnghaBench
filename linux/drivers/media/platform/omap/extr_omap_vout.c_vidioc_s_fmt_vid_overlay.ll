; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i64 }
%struct.omap_overlay = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32, i32, i32 }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_vout_device = type { %struct.TYPE_8__, %struct.TYPE_9__, i32, %struct.omapvideo_info }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }

@OMAP_DSS_COLOR_KEY_GFX_DST = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_SRC_CHROMAKEY = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_KEY_VID_SRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca %struct.omapvideo_info*, align 8
  %11 = alloca %struct.omap_vout_device*, align 8
  %12 = alloca %struct.v4l2_window*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.omap_overlay_manager_info, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %16)
  store %struct.omap_vout_device* %17, %struct.omap_vout_device** %11, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.v4l2_window* %20, %struct.v4l2_window** %12, align 8
  %21 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %22 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %21, i32 0, i32 3
  store %struct.omapvideo_info* %22, %struct.omapvideo_info** %10, align 8
  %23 = load %struct.omapvideo_info*, %struct.omapvideo_info** %10, align 8
  %24 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %23, i32 0, i32 0
  %25 = load %struct.omap_overlay**, %struct.omap_overlay*** %24, align 8
  %26 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %25, i64 0
  %27 = load %struct.omap_overlay*, %struct.omap_overlay** %26, align 8
  store %struct.omap_overlay* %27, %struct.omap_overlay** %9, align 8
  %28 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %29 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %28, i32 0, i32 2
  %30 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %31 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %30, i32 0, i32 0
  %32 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %33 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %32, i32 0, i32 1
  %34 = load %struct.v4l2_window*, %struct.v4l2_window** %12, align 8
  %35 = call i32 @omap_vout_new_window(i32* %29, %struct.TYPE_8__* %31, %struct.TYPE_9__* %33, %struct.v4l2_window* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %131, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @OMAP_DSS_COLOR_KEY_GFX_DST, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %41 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OMAP_DSS_OVL_CAP_GLOBAL_ALPHA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.v4l2_window*, %struct.v4l2_window** %12, align 8
  %48 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %51 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  br label %56

53:                                               ; preds = %38
  %54 = load %struct.v4l2_window*, %struct.v4l2_window** %12, align 8
  %55 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %58 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %62 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %70 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @OMAP_DSS_COLOR_KEY_VID_SRC, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %80 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %130

83:                                               ; preds = %78
  %84 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %85 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)* %88, null
  br i1 %89, label %90, label %130

90:                                               ; preds = %83
  %91 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %92 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)** %94, align 8
  %96 = icmp ne i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)* %95, null
  br i1 %96, label %97, label %130

97:                                               ; preds = %90
  %98 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %99 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)** %101, align 8
  %103 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %104 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = call i32 %102(%struct.TYPE_7__* %105, %struct.omap_overlay_manager_info* %15)
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %15, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %15, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.omap_vout_device*, %struct.omap_vout_device** %11, align 8
  %112 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %15, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  %116 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %117 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)*, i64 (%struct.TYPE_7__*, %struct.omap_overlay_manager_info*)** %119, align 8
  %121 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %122 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = call i64 %120(%struct.TYPE_7__* %123, %struct.omap_overlay_manager_info* %15)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %97
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %133

129:                                              ; preds = %97
  br label %130

130:                                              ; preds = %129, %90, %83, %78
  br label %131

131:                                              ; preds = %130, %3
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %126
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @omap_vout_new_window(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.v4l2_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
