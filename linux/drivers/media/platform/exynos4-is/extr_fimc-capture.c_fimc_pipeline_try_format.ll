; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_dev* }
%struct.fimc_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.media_entity }
%struct.media_entity = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i32 }
%struct.fimc_fmt = type { i64, i32 }
%struct.fimc_pipeline = type { %struct.v4l2_subdev** }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.media_pad = type { %struct.media_entity* }

@IDX_SENSOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@FMT_FLAGS_CAM = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@FIMC_SD_PAD_SINK_CAM = common dso_local global i32 0, align 4
@FIMC_SD_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*, %struct.v4l2_mbus_framefmt*, %struct.fimc_fmt**, i32)* @fimc_pipeline_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_pipeline_try_format(%struct.fimc_ctx* %0, %struct.v4l2_mbus_framefmt* %1, %struct.fimc_fmt** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_ctx*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.fimc_fmt**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fimc_dev*, align 8
  %11 = alloca %struct.fimc_pipeline*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.v4l2_subdev_format, align 8
  %14 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %15 = alloca %struct.media_entity*, align 8
  %16 = alloca %struct.fimc_fmt*, align 8
  %17 = alloca %struct.media_pad*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %6, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %7, align 8
  store %struct.fimc_fmt** %2, %struct.fimc_fmt*** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %21, i32 0, i32 0
  %23 = load %struct.fimc_dev*, %struct.fimc_dev** %22, align 8
  store %struct.fimc_dev* %23, %struct.fimc_dev** %10, align 8
  %24 = load %struct.fimc_dev*, %struct.fimc_dev** %10, align 8
  %25 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.fimc_pipeline* @to_fimc_pipeline(i32 %28)
  store %struct.fimc_pipeline* %29, %struct.fimc_pipeline** %11, align 8
  %30 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %11, align 8
  %31 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %30, i32 0, i32 0
  %32 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %31, align 8
  %33 = load i64, i64* @IDX_SENSOR, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %32, i64 %33
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %34, align 8
  store %struct.v4l2_subdev* %35, %struct.v4l2_subdev** %12, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %36, %struct.v4l2_mbus_framefmt** %14, align 8
  store i32 1, i32* %19, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %38 = icmp ne %struct.v4l2_subdev* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %41 = icmp ne %struct.v4l2_mbus_framefmt* %40, null
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %4
  %44 = phi i1 [ true, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %250

51:                                               ; preds = %43
  %52 = call i32 @memset(%struct.v4l2_subdev_format* %13, i32 0, i32 40)
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %55 = bitcast %struct.v4l2_mbus_framefmt* %53 to i8*
  %56 = bitcast %struct.v4l2_mbus_framefmt* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 0
  %68 = call %struct.media_entity* @fimc_pipeline_get_head(i32* %67)
  store %struct.media_entity* %68, %struct.media_entity** %15, align 8
  br label %69

69:                                               ; preds = %63, %171, %229
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  br label %78

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i64* [ %76, %74 ], [ null, %77 ]
  %80 = load i32, i32* @FMT_FLAGS_CAM, align 4
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = call %struct.fimc_fmt* @fimc_find_format(i32* null, i64* %79, i32 %80, i32 %81)
  store %struct.fimc_fmt* %83, %struct.fimc_fmt** %16, align 8
  %84 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %85 = icmp eq %struct.fimc_fmt* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %250

89:                                               ; preds = %78
  %90 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %91 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %96 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  br label %97

97:                                               ; preds = %159, %89
  %98 = load %struct.media_entity*, %struct.media_entity** %15, align 8
  %99 = load %struct.fimc_dev*, %struct.fimc_dev** %10, align 8
  %100 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = icmp ne %struct.media_entity* %98, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %97
  %105 = load %struct.media_entity*, %struct.media_entity** %15, align 8
  %106 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %105)
  store %struct.v4l2_subdev* %106, %struct.v4l2_subdev** %12, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %109 = load %struct.media_pad*, %struct.media_pad** %17, align 8
  %110 = load i32, i32* @set_fmt, align 4
  %111 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %108, %struct.media_pad* %109, i32 %110, i32* null, %struct.v4l2_subdev_format* %13)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %5, align 4
  br label %250

116:                                              ; preds = %104
  %117 = load %struct.media_entity*, %struct.media_entity** %15, align 8
  %118 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %116
  %127 = load %struct.media_entity*, %struct.media_entity** %15, align 8
  %128 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %129, 1
  %131 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  %132 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %136 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %138 = load %struct.media_pad*, %struct.media_pad** %17, align 8
  %139 = load i32, i32* @set_fmt, align 4
  %140 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %137, %struct.media_pad* %138, i32 %139, i32* null, %struct.v4l2_subdev_format* %13)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %126
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %5, align 4
  br label %250

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %116
  %147 = load %struct.media_entity*, %struct.media_entity** %15, align 8
  %148 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = call %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_8__* %152)
  store %struct.media_pad* %153, %struct.media_pad** %17, align 8
  %154 = load %struct.media_pad*, %struct.media_pad** %17, align 8
  %155 = icmp ne %struct.media_pad* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %146
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %250

159:                                              ; preds = %146
  %160 = load %struct.media_pad*, %struct.media_pad** %17, align 8
  %161 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %160, i32 0, i32 0
  %162 = load %struct.media_entity*, %struct.media_entity** %161, align 8
  store %struct.media_entity* %162, %struct.media_entity** %15, align 8
  br label %97

163:                                              ; preds = %97
  %164 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %165 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %69

172:                                              ; preds = %163
  %173 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %174 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %20, align 4
  %176 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %177 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %180 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %182 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  %187 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %187, i32 0, i32 2
  %189 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %189, i32 0, i32 1
  %191 = load i32, i32* @FIMC_SD_PAD_SINK_CAM, align 4
  %192 = call %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx* %186, i32* %188, i64* %190, i32* null, i32* %20, i32 %191)
  store %struct.fimc_fmt* %192, %struct.fimc_fmt** %16, align 8
  %193 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  %194 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %195 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %194, i32 0, i32 2
  %196 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %197 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %196, i32 0, i32 1
  %198 = load i32, i32* @FIMC_SD_PAD_SOURCE, align 4
  %199 = call %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx* %193, i32* %195, i64* %197, i32* null, i32* %20, i32 %198)
  store %struct.fimc_fmt* %199, %struct.fimc_fmt** %16, align 8
  %200 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %201 = icmp ne %struct.fimc_fmt* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %172
  %203 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %204 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %209 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %212 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %207, %202, %172
  %214 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %215 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %218 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %216, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %213
  %222 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %223 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %226 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %224, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %221, %213
  br label %69

230:                                              ; preds = %221
  %231 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %232 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %235 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %230
  %237 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %8, align 8
  %238 = icmp ne %struct.fimc_fmt** %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %241 = icmp ne %struct.fimc_fmt* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  %244 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %8, align 8
  store %struct.fimc_fmt* %243, %struct.fimc_fmt** %244, align 8
  br label %245

245:                                              ; preds = %242, %239, %236
  %246 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %247 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %248 = bitcast %struct.v4l2_mbus_framefmt* %246 to i8*
  %249 = bitcast %struct.v4l2_mbus_framefmt* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %248, i8* align 8 %249, i64 24, i1 false)
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %245, %156, %143, %114, %86, %48
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local %struct.fimc_pipeline* @to_fimc_pipeline(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.v4l2_subdev_format*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.media_entity* @fimc_pipeline_get_head(i32*) #1

declare dso_local %struct.fimc_fmt* @fimc_find_format(i32*, i64*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_8__*) #1

declare dso_local %struct.fimc_fmt* @fimc_capture_try_format(%struct.fimc_ctx*, i32*, i64*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
