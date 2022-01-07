; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }
%struct.ov965x = type { i32, i32, i32, %struct.v4l2_mbus_framefmt, %struct.ov965x_framesize*, i64 }
%struct.ov965x_framesize = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32 }

@ov965x_formats = common dso_local global %struct.TYPE_3__* null, align 8
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov965x_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.ov965x*, align 8
  %10 = alloca %struct.ov965x_framesize*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_subdev_frame_interval, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov965x_formats, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %8, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = call %struct.ov965x* @to_ov965x(%struct.v4l2_subdev* %17)
  store %struct.ov965x* %18, %struct.ov965x** %9, align 8
  store %struct.ov965x_framesize* null, %struct.ov965x_framesize** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = call i32 @__ov965x_try_frame_size(%struct.v4l2_mbus_framefmt* %19, %struct.ov965x_framesize** %10)
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov965x_formats, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %38

37:                                               ; preds = %25
  br label %21

38:                                               ; preds = %36, %21
  %39 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov965x_formats, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %54 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %38
  %62 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %63 = icmp ne %struct.v4l2_subdev_pad_config* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %66 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %67 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %65, %struct.v4l2_subdev_pad_config* %66, i32 %69)
  store %struct.v4l2_mbus_framefmt* %70, %struct.v4l2_mbus_framefmt** %8, align 8
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %72 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %72, i32 0, i32 1
  %74 = bitcast %struct.v4l2_mbus_framefmt* %71 to i8*
  %75 = bitcast %struct.v4l2_mbus_framefmt* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %64, %61
  br label %106

77:                                               ; preds = %38
  %78 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %79 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %105

85:                                               ; preds = %77
  %86 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %10, align 8
  %87 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %88 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %87, i32 0, i32 4
  store %struct.ov965x_framesize* %86, %struct.ov965x_framesize** %88, align 8
  %89 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %90 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %89, i32 0, i32 3
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 1
  %93 = bitcast %struct.v4l2_mbus_framefmt* %90 to i8*
  %94 = bitcast %struct.v4l2_mbus_framefmt* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov965x_formats, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %102 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %104 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %85, %82
  br label %106

106:                                              ; preds = %105, %76
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %106
  %110 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = bitcast %struct.v4l2_subdev_frame_interval* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 4, i1 false)
  %117 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %118 = call i32 @__ov965x_set_frame_interval(%struct.ov965x* %117, %struct.v4l2_subdev_frame_interval* %12)
  br label %119

119:                                              ; preds = %115, %109, %106
  %120 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %121 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = load %struct.ov965x*, %struct.ov965x** %9, align 8
  %127 = call i32 @ov965x_update_exposure_ctrl(%struct.ov965x* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.ov965x* @to_ov965x(%struct.v4l2_subdev*) #1

declare dso_local i32 @__ov965x_try_frame_size(%struct.v4l2_mbus_framefmt*, %struct.ov965x_framesize**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @__ov965x_set_frame_interval(%struct.ov965x*, %struct.v4l2_subdev_frame_interval*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ov965x_update_exposure_ctrl(%struct.ov965x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
