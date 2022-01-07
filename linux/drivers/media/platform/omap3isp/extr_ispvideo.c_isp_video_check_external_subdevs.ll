; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_check_external_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_check_external_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { i32, %struct.isp_device* }
%struct.isp_device = type { %struct.TYPE_14__, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.media_entity }
%struct.media_entity = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.media_entity }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.media_entity }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.media_entity }
%struct.isp_pipeline = type { i32, i32, %struct.TYPE_23__*, i32, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev_format = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, %struct.v4l2_ext_controls*, i32 }
%struct.v4l2_ext_control = type { i32, i32, %struct.v4l2_ext_control*, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"can't find source, failing now\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"get_fmt returned null!\0A\00", align 1
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"no pixel rate control in subdev %s\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_pipeline*)* @isp_video_check_external_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_check_external_subdevs(%struct.isp_video* %0, %struct.isp_pipeline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.isp_pipeline*, align 8
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca [4 x %struct.media_entity*], align 16
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca %struct.media_entity*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca %struct.v4l2_subdev_format, align 4
  %12 = alloca %struct.v4l2_ext_controls, align 8
  %13 = alloca %struct.v4l2_ext_control, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.isp_video* %0, %struct.isp_video** %4, align 8
  store %struct.isp_pipeline* %1, %struct.isp_pipeline** %5, align 8
  %17 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %18 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %17, i32 0, i32 1
  %19 = load %struct.isp_device*, %struct.isp_device** %18, align 8
  store %struct.isp_device* %19, %struct.isp_device** %6, align 8
  %20 = getelementptr inbounds [4 x %struct.media_entity*], [4 x %struct.media_entity*]* %7, i64 0, i64 0
  %21 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %22 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store %struct.media_entity* %24, %struct.media_entity** %20, align 8
  %25 = getelementptr inbounds %struct.media_entity*, %struct.media_entity** %20, i64 1
  %26 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %27 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.media_entity* %29, %struct.media_entity** %25, align 8
  %30 = getelementptr inbounds %struct.media_entity*, %struct.media_entity** %25, i64 1
  %31 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %32 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store %struct.media_entity* %34, %struct.media_entity** %30, align 8
  %35 = getelementptr inbounds %struct.media_entity*, %struct.media_entity** %30, i64 1
  %36 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %37 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store %struct.media_entity* %39, %struct.media_entity** %35, align 8
  store %struct.media_entity* null, %struct.media_entity** %9, align 8
  %40 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %41 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %192

45:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %81, %45
  %47 = load i32, i32* %14, align 4
  %48 = getelementptr inbounds [4 x %struct.media_entity*], [4 x %struct.media_entity*]* %7, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.media_entity** %48)
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %46
  %52 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %53 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %52, i32 0, i32 1
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [4 x %struct.media_entity*], [4 x %struct.media_entity*]* %7, i64 0, i64 %55
  %57 = load %struct.media_entity*, %struct.media_entity** %56, align 8
  %58 = call i64 @media_entity_enum_test(i32* %53, %struct.media_entity* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %81

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [4 x %struct.media_entity*], [4 x %struct.media_entity*]* %7, i64 0, i64 %63
  %65 = load %struct.media_entity*, %struct.media_entity** %64, align 8
  %66 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call %struct.media_pad* @media_entity_remote_pad(i32* %68)
  store %struct.media_pad* %69, %struct.media_pad** %8, align 8
  %70 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %71 = icmp eq %struct.media_pad* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %81

73:                                               ; preds = %61
  %74 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %75 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %74, i32 0, i32 1
  %76 = load %struct.media_entity*, %struct.media_entity** %75, align 8
  store %struct.media_entity* %76, %struct.media_entity** %9, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [4 x %struct.media_entity*], [4 x %struct.media_entity*]* %7, i64 0, i64 %78
  %80 = load %struct.media_entity*, %struct.media_entity** %79, align 8
  store %struct.media_entity* %80, %struct.media_entity** %10, align 8
  br label %84

81:                                               ; preds = %72, %60
  %82 = load i32, i32* %14, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %46

84:                                               ; preds = %73, %46
  %85 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %86 = icmp ne %struct.media_entity* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %89 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @dev_warn(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %192

94:                                               ; preds = %84
  %95 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %96 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %192

99:                                               ; preds = %94
  %100 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %101 = call %struct.TYPE_23__* @media_entity_to_v4l2_subdev(%struct.media_entity* %100)
  %102 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %103 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %102, i32 0, i32 2
  store %struct.TYPE_23__* %101, %struct.TYPE_23__** %103, align 8
  %104 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %105 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %109 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %111 = call %struct.TYPE_23__* @media_entity_to_v4l2_subdev(%struct.media_entity* %110)
  %112 = load i32, i32* @pad, align 4
  %113 = load i32, i32* @get_fmt, align 4
  %114 = call i32 @v4l2_subdev_call(%struct.TYPE_23__* %111, i32 %112, i32 %113, i32* null, %struct.v4l2_subdev_format* %11)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %99
  %121 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %122 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_warn(i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %3, align 4
  br label %192

126:                                              ; preds = %99
  %127 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.TYPE_13__* @omap3isp_video_format_info(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %134 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = call i32 @memset(%struct.v4l2_ext_controls* %12, i32 0, i32 24)
  %136 = bitcast %struct.v4l2_ext_control* %13 to %struct.v4l2_ext_controls*
  %137 = call i32 @memset(%struct.v4l2_ext_controls* %136, i32 0, i32 24)
  %138 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %139 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 3
  store i32 %138, i32* %139, align 8
  %140 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = bitcast %struct.v4l2_ext_control* %13 to %struct.v4l2_ext_controls*
  %142 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 2
  store %struct.v4l2_ext_controls* %141, %struct.v4l2_ext_controls** %142, align 8
  %143 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %144 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %143, i32 0, i32 2
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %149 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %148, i32 0, i32 0
  %150 = call i32 @v4l2_g_ext_ctrls(i32 %147, i32* %149, i32* null, %struct.v4l2_ext_controls* %12)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %126
  %154 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %155 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %158 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %157, i32 0, i32 2
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @dev_warn(i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %3, align 4
  br label %192

164:                                              ; preds = %126
  %165 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %168 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %170 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %169, i32 0, i32 1
  %171 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %172 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = call i64 @media_entity_enum_test(i32* %170, %struct.media_entity* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %164
  %178 = load i32, i32* @UINT_MAX, align 4
  store i32 %178, i32* %16, align 4
  %179 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %180 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %179, i32 0, i32 0
  %181 = call i32 @omap3isp_ccdc_max_rate(%struct.TYPE_14__* %180, i32* %16)
  %182 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %183 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = icmp ugt i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* @ENOSPC, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %192

190:                                              ; preds = %177
  br label %191

191:                                              ; preds = %190, %164
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %187, %153, %120, %98, %87, %44
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @ARRAY_SIZE(%struct.media_entity**) #1

declare dso_local i64 @media_entity_enum_test(i32*, %struct.media_entity*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.TYPE_23__* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.TYPE_23__*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_13__* @omap3isp_video_format_info(i32) #1

declare dso_local i32 @memset(%struct.v4l2_ext_controls*, i32, i32) #1

declare dso_local i32 @v4l2_g_ext_ctrls(i32, i32*, i32*, %struct.v4l2_ext_controls*) #1

declare dso_local i32 @omap3isp_ccdc_max_rate(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
