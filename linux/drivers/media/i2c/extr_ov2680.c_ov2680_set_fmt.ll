; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.ov2680_dev = type { i32, i32, %struct.v4l2_mbus_framefmt, %struct.ov2680_mode_info*, i64 }
%struct.ov2680_mode_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ov2680_mode_data = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov2680_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.ov2680_dev*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.ov2680_mode_info*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev* %12)
  store %struct.ov2680_dev* %13, %struct.ov2680_dev** %8, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %15, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %25 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %28 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %93

34:                                               ; preds = %23
  %35 = load i32, i32* @ov2680_mode_data, align 4
  %36 = load i32, i32* @ov2680_mode_data, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load i32, i32* @width, align 4
  %39 = load i32, i32* @height, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ov2680_mode_info* @v4l2_find_nearest_size(i32 %35, i32 %37, i32 %38, i32 %39, i32 %42, i32 %45)
  store %struct.ov2680_mode_info* %46, %struct.ov2680_mode_info** %10, align 8
  %47 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %10, align 8
  %48 = icmp ne %struct.ov2680_mode_info* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %93

52:                                               ; preds = %34
  %53 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %93

59:                                               ; preds = %52
  %60 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %10, align 8
  %61 = getelementptr inbounds %struct.ov2680_mode_info, %struct.ov2680_mode_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %10, align 8
  %66 = getelementptr inbounds %struct.ov2680_mode_info, %struct.ov2680_mode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %71 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %77 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %10, align 8
  %83 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %84 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %83, i32 0, i32 3
  store %struct.ov2680_mode_info* %82, %struct.ov2680_mode_info** %84, align 8
  %85 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %86 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %85, i32 0, i32 2
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 2
  %89 = bitcast %struct.v4l2_mbus_framefmt* %86 to i8*
  %90 = bitcast %struct.v4l2_mbus_framefmt* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  %91 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %92 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %59, %58, %49, %31
  %94 = load %struct.ov2680_dev*, %struct.ov2680_dev** %8, align 8
  %95 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov2680_mode_info* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
