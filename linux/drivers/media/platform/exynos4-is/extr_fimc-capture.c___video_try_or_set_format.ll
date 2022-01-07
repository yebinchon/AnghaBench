; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c___video_try_or_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c___video_try_or_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { %struct.v4l2_mbus_framefmt, i32, %struct.fimc_ctx*, %struct.exynos_video_entity }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.fimc_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.exynos_video_entity = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32 }
%struct.fimc_fmt = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@FIMC_SD_PAD_SINK_CAM = common dso_local global i32 0, align 4
@FIMC_SD_PAD_SOURCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMT_FLAGS_COMPRESSED = common dso_local global i32 0, align 4
@IDX_SENSOR = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*, %struct.v4l2_format*, i32, %struct.fimc_fmt**, %struct.fimc_fmt**)* @__video_try_or_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__video_try_or_set_format(%struct.fimc_dev* %0, %struct.v4l2_format* %1, i32 %2, %struct.fimc_fmt** %3, %struct.fimc_fmt** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fimc_dev*, align 8
  %8 = alloca %struct.v4l2_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fimc_fmt**, align 8
  %11 = alloca %struct.fimc_fmt**, align 8
  %12 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %13 = alloca %struct.fimc_vid_cap*, align 8
  %14 = alloca %struct.exynos_video_entity*, align 8
  %15 = alloca %struct.fimc_ctx*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.v4l2_mbus_framefmt, align 4
  %20 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %21 = alloca %struct.v4l2_subdev*, align 8
  store %struct.fimc_dev* %0, %struct.fimc_dev** %7, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.fimc_fmt** %3, %struct.fimc_fmt*** %10, align 8
  store %struct.fimc_fmt** %4, %struct.fimc_fmt*** %11, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %24, %struct.v4l2_pix_format_mplane** %12, align 8
  %25 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %26 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %25, i32 0, i32 0
  store %struct.fimc_vid_cap* %26, %struct.fimc_vid_cap** %13, align 8
  %27 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %13, align 8
  %28 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %27, i32 0, i32 3
  store %struct.exynos_video_entity* %28, %struct.exynos_video_entity** %14, align 8
  %29 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %13, align 8
  %30 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %29, i32 0, i32 2
  %31 = load %struct.fimc_ctx*, %struct.fimc_ctx** %30, align 8
  store %struct.fimc_ctx* %31, %struct.fimc_ctx** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @fimc_jpeg_fourcc(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %5
  %38 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 0
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 1
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 3
  %45 = load i32, i32* @FIMC_SD_PAD_SINK_CAM, align 4
  %46 = call %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx* %38, i32* %40, i32* %42, i32* null, i32* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  br label %69

56:                                               ; preds = %37
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  %61 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  %67 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %49
  br label %70

70:                                               ; preds = %69, %5
  %71 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 0
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %74, i32 0, i32 1
  %76 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %76, i32 0, i32 3
  %78 = load i32, i32* @FIMC_SD_PAD_SOURCE, align 4
  %79 = call %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx* %71, i32* %73, i32* %75, i32* null, i32* %77, i32 %78)
  %80 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  store %struct.fimc_fmt* %79, %struct.fimc_fmt** %80, align 8
  %81 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  %82 = load %struct.fimc_fmt*, %struct.fimc_fmt** %81, align 8
  %83 = icmp eq %struct.fimc_fmt* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %205

87:                                               ; preds = %70
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @fimc_jpeg_fourcc(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %90, %87
  %104 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %13, align 8
  %105 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %158, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %116

112:                                              ; preds = %108
  %113 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %114 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %114, i32 0, i32 0
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi %struct.v4l2_mbus_framefmt* [ %19, %111 ], [ %115, %112 ]
  store %struct.v4l2_mbus_framefmt* %117, %struct.v4l2_mbus_framefmt** %20, align 8
  %118 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  %119 = load %struct.fimc_fmt*, %struct.fimc_fmt** %118, align 8
  %120 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %128 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %133 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %14, align 8
  %135 = call i32 @fimc_md_graph_lock(%struct.exynos_video_entity* %134)
  %136 = load %struct.fimc_ctx*, %struct.fimc_ctx** %15, align 8
  %137 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %138 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %10, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @fimc_pipeline_try_format(%struct.fimc_ctx* %136, %struct.v4l2_mbus_framefmt* %137, %struct.fimc_fmt** %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %14, align 8
  %142 = call i32 @fimc_md_graph_unlock(%struct.exynos_video_entity* %141)
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %116
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %6, align 4
  br label %205

147:                                              ; preds = %116
  %148 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %149 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %152 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %154 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %157 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %147, %103
  %159 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  %160 = load %struct.fimc_fmt*, %struct.fimc_fmt** %159, align 8
  %161 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %162 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %165 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %168 = call i32 @fimc_adjust_mplane_format(%struct.fimc_fmt* %160, i32 %163, i32 %166, %struct.v4l2_pix_format_mplane* %167)
  %169 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  %170 = load %struct.fimc_fmt*, %struct.fimc_fmt** %169, align 8
  %171 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @FMT_FLAGS_COMPRESSED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %158
  %177 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %14, align 8
  %178 = call i32 @fimc_md_graph_lock(%struct.exynos_video_entity* %177)
  %179 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %14, align 8
  %180 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IDX_SENSOR, align 4
  %183 = call %struct.v4l2_subdev* @__fimc_md_get_subdev(i32 %181, i32 %182)
  store %struct.v4l2_subdev* %183, %struct.v4l2_subdev** %21, align 8
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %21, align 8
  %185 = icmp ne %struct.v4l2_subdev* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %176
  %187 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %21, align 8
  %188 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %12, align 8
  %189 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %11, align 8
  %192 = load %struct.fimc_fmt*, %struct.fimc_fmt** %191, align 8
  %193 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @fimc_get_sensor_frame_desc(%struct.v4l2_subdev* %187, i32 %190, i32 %194, i32 %195)
  br label %200

197:                                              ; preds = %176
  %198 = load i32, i32* @EPIPE, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %18, align 4
  br label %200

200:                                              ; preds = %197, %186
  %201 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %14, align 8
  %202 = call i32 @fimc_md_graph_unlock(%struct.exynos_video_entity* %201)
  br label %203

203:                                              ; preds = %200, %158
  %204 = load i32, i32* %18, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %203, %145, %84
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i64 @fimc_jpeg_fourcc(i32) #1

declare dso_local %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fimc_md_graph_lock(%struct.exynos_video_entity*) #1

declare dso_local i32 @fimc_pipeline_try_format(%struct.fimc_ctx*, %struct.v4l2_mbus_framefmt*, %struct.fimc_fmt**, i32) #1

declare dso_local i32 @fimc_md_graph_unlock(%struct.exynos_video_entity*) #1

declare dso_local i32 @fimc_adjust_mplane_format(%struct.fimc_fmt*, i32, i32, %struct.v4l2_pix_format_mplane*) #1

declare dso_local %struct.v4l2_subdev* @__fimc_md_get_subdev(i32, i32) #1

declare dso_local i32 @fimc_get_sensor_frame_desc(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
