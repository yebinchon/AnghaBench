; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_overlay = type { %struct.TYPE_10__*, %struct.omap_dss_device* (%struct.omap_overlay*)* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i64, i64 }
%struct.omap_dss_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.omap_video_timings }
%struct.omap_video_timings = type { i32, i32 }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_vout_device = type { %struct.TYPE_9__, %struct.omapvideo_info }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGBA32 = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_SRC_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_ALPHA = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_KEY_VID_SRC = common dso_local global i64 0, align 8
@OMAP_DSS_COLOR_KEY_GFX_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_g_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.omap_overlay*, align 8
  %9 = alloca %struct.omapvideo_info*, align 8
  %10 = alloca %struct.omap_vout_device*, align 8
  %11 = alloca %struct.omap_overlay_manager_info, align 8
  %12 = alloca %struct.omap_video_timings*, align 8
  %13 = alloca %struct.omap_dss_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %14)
  store %struct.omap_vout_device* %15, %struct.omap_vout_device** %10, align 8
  %16 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %17 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %16, i32 0, i32 1
  store %struct.omapvideo_info* %17, %struct.omapvideo_info** %9, align 8
  %18 = load %struct.omapvideo_info*, %struct.omapvideo_info** %9, align 8
  %19 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %18, i32 0, i32 0
  %20 = load %struct.omap_overlay**, %struct.omap_overlay*** %19, align 8
  %21 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %20, i64 0
  %22 = load %struct.omap_overlay*, %struct.omap_overlay** %21, align 8
  store %struct.omap_overlay* %22, %struct.omap_overlay** %8, align 8
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %24 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %23, i32 0, i32 1
  %25 = load %struct.omap_dss_device* (%struct.omap_overlay*)*, %struct.omap_dss_device* (%struct.omap_overlay*)** %24, align 8
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %27 = call %struct.omap_dss_device* %25(%struct.omap_overlay* %26)
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %13, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %29 = icmp ne %struct.omap_dss_device* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %182

33:                                               ; preds = %3
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.omap_video_timings* %36, %struct.omap_video_timings** %12, align 8
  %37 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %38 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %41 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %45 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %48 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %52 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %56 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @V4L2_PIX_FMT_RGBA32, align 4
  %60 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 4
  %63 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %64 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %72 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %80 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 4
  %85 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %91, %95
  %97 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %101 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %107 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.omap_vout_device*, %struct.omap_vout_device** %10, align 8
  %113 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %119 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %129 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %181

132:                                              ; preds = %33
  %133 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %134 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)** %136, align 8
  %138 = icmp ne i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)* %137, null
  br i1 %138, label %139, label %181

139:                                              ; preds = %132
  %140 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %141 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)*, i32 (%struct.TYPE_10__*, %struct.omap_overlay_manager_info*)** %143, align 8
  %145 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %146 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 %144(%struct.TYPE_10__* %147, %struct.omap_overlay_manager_info* %11)
  %149 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %11, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @OMAP_DSS_COLOR_KEY_VID_SRC, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load i32, i32* @V4L2_FBUF_FLAG_SRC_CHROMAKEY, align 4
  %155 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %156 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %139
  %160 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %11, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @OMAP_DSS_COLOR_KEY_GFX_DST, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %166 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %159
  %171 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %11, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %176 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %177 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %170
  br label %181

181:                                              ; preds = %180, %132, %33
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %30
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
