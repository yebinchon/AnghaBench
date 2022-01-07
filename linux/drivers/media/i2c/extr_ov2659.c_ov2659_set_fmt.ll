; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov2659_framesize = type { i32 }
%struct.ov2659 = type { i32, i32, %struct.TYPE_4__*, %struct.v4l2_mbus_framefmt, i32, %struct.ov2659_framesize*, i64 }
%struct.TYPE_4__ = type { i32 }

@ov2659_formats = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"ov2659_set_fmt\0A\00", align 1
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to set link_frequency rate (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov2659_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2659_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.ov2659_framesize*, align 8
  %12 = alloca %struct.ov2659*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ov2659_formats, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %20, %struct.v4l2_mbus_framefmt** %10, align 8
  store %struct.ov2659_framesize* null, %struct.ov2659_framesize** %11, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = call %struct.ov2659* @to_ov2659(%struct.v4l2_subdev* %21)
  store %struct.ov2659* %22, %struct.ov2659** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %27 = call i32 @__ov2659_try_frame_size(%struct.v4l2_mbus_framefmt* %26, %struct.ov2659_framesize** %11)
  br label %28

28:                                               ; preds = %44, %3
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ov2659_formats, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %32
  br label %28

45:                                               ; preds = %43, %28
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ov2659_formats, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %65 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %135

73:                                               ; preds = %57
  %74 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %75 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %80 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %140

84:                                               ; preds = %73
  %85 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %11, align 8
  %86 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %87 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %86, i32 0, i32 5
  store %struct.ov2659_framesize* %85, %struct.ov2659_framesize** %87, align 8
  %88 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %89 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %88, i32 0, i32 3
  %90 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %90, i32 0, i32 1
  %92 = bitcast %struct.v4l2_mbus_framefmt* %89 to i8*
  %93 = bitcast %struct.v4l2_mbus_framefmt* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ov2659_formats, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %101 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %103 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MEDIA_BUS_FMT_SBGGR8_1X8, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %84
  %109 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %110 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %14, align 4
  br label %121

115:                                              ; preds = %84
  %116 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %117 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %115, %108
  %122 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %123 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @v4l2_ctrl_s_ctrl_int64(i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @dev_warn(i32* %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134, %72
  %136 = load %struct.ov2659*, %struct.ov2659** %12, align 8
  %137 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %135, %78
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.ov2659* @to_ov2659(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @__ov2659_try_frame_size(%struct.v4l2_mbus_framefmt*, %struct.ov2659_framesize**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
