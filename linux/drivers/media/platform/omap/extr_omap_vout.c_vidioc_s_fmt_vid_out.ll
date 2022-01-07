; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.omap_overlay = type { %struct.omap_dss_device* (%struct.omap_overlay*)* }
%struct.omap_dss_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.omap_video_timings }
%struct.omap_video_timings = type { i32, i32 }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_vout_device = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.omapvideo_info, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_overlay*, align 8
  %11 = alloca %struct.omapvideo_info*, align 8
  %12 = alloca %struct.omap_video_timings*, align 8
  %13 = alloca %struct.omap_vout_device*, align 8
  %14 = alloca %struct.omap_dss_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %15)
  store %struct.omap_vout_device* %16, %struct.omap_vout_device** %13, align 8
  %17 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %18 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %17, i32 0, i32 7
  %19 = call i64 @vb2_is_busy(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %156

24:                                               ; preds = %3
  %25 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %26 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %25, i32 0, i32 6
  store %struct.omapvideo_info* %26, %struct.omapvideo_info** %11, align 8
  %27 = load %struct.omapvideo_info*, %struct.omapvideo_info** %11, align 8
  %28 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %27, i32 0, i32 0
  %29 = load %struct.omap_overlay**, %struct.omap_overlay*** %28, align 8
  %30 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %29, i64 0
  %31 = load %struct.omap_overlay*, %struct.omap_overlay** %30, align 8
  store %struct.omap_overlay* %31, %struct.omap_overlay** %10, align 8
  %32 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %33 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %32, i32 0, i32 0
  %34 = load %struct.omap_dss_device* (%struct.omap_overlay*)*, %struct.omap_dss_device* (%struct.omap_overlay*)** %33, align 8
  %35 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %36 = call %struct.omap_dss_device* %34(%struct.omap_overlay* %35)
  store %struct.omap_dss_device* %36, %struct.omap_dss_device** %14, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  %38 = icmp ne %struct.omap_dss_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %154

42:                                               ; preds = %24
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.omap_video_timings* %45, %struct.omap_video_timings** %12, align 8
  %46 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %47 = call i64 @is_rotation_enabled(%struct.omap_vout_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_PIX_FMT_RGB24, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %154

60:                                               ; preds = %49, %42
  %61 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %62 = call i64 @is_rotation_90_or_270(%struct.omap_vout_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %66 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %69 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %73 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %76 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  br label %94

79:                                               ; preds = %60
  %80 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %81 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %84 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %88 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %91 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %94

94:                                               ; preds = %79, %64
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @omap_vout_try_format(%struct.TYPE_10__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %103, %108
  %110 = load i32, i32* %9, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %118 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %120 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %119, i32 0, i32 5
  %121 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = bitcast %struct.TYPE_10__* %120 to i8*
  %125 = bitcast %struct.TYPE_10__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %127 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %129 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %130 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %128, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %94
  %135 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %136 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %137 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %135, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %134, %94
  %142 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %143 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %142, i32 0, i32 1
  store i32 2, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %134
  %145 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %146 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %145, i32 0, i32 5
  %147 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %148 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %147, i32 0, i32 4
  %149 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %150 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %149, i32 0, i32 3
  %151 = load %struct.omap_vout_device*, %struct.omap_vout_device** %13, align 8
  %152 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %151, i32 0, i32 2
  %153 = call i32 @omap_vout_new_format(%struct.TYPE_10__* %146, %struct.TYPE_11__* %148, i32* %150, i32* %152)
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %144, %57, %39
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %21
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i64 @is_rotation_enabled(%struct.omap_vout_device*) #1

declare dso_local i64 @is_rotation_90_or_270(%struct.omap_vout_device*) #1

declare dso_local i32 @omap_vout_try_format(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @omap_vout_new_format(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
