; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64 }
%struct.ov5640_dev = type { i32, i32, i32, %struct.v4l2_mbus_framefmt, %struct.ov5640_mode_info*, i32, i64 }
%struct.ov5640_mode_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov5640_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.ov5640_dev*, align 8
  %9 = alloca %struct.ov5640_mode_info*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev* %13)
  store %struct.ov5640_dev* %14, %struct.ov5640_dev** %8, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %10, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %3
  %25 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %26 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %29 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %38 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %39 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ov5640_try_fmt_internal(%struct.v4l2_subdev* %36, %struct.v4l2_mbus_framefmt* %37, i32 %40, %struct.ov5640_mode_info** %9)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %87

45:                                               ; preds = %35
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %53 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %54 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %52, %struct.v4l2_subdev_pad_config* %53, i32 0)
  store %struct.v4l2_mbus_framefmt* %54, %struct.v4l2_mbus_framefmt** %11, align 8
  br label %58

55:                                               ; preds = %45
  %56 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %57 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %56, i32 0, i32 3
  store %struct.v4l2_mbus_framefmt* %57, %struct.v4l2_mbus_framefmt** %11, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %61 = bitcast %struct.v4l2_mbus_framefmt* %59 to i8*
  %62 = bitcast %struct.v4l2_mbus_framefmt* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %9, align 8
  %64 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %65 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %64, i32 0, i32 4
  %66 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %65, align 8
  %67 = icmp ne %struct.ov5640_mode_info* %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %9, align 8
  %70 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %71 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %70, i32 0, i32 4
  store %struct.ov5640_mode_info* %69, %struct.ov5640_mode_info** %71, align 8
  %72 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %73 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %58
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %79 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %85 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %44, %32
  %88 = load %struct.ov5640_dev*, %struct.ov5640_dev** %8, align 8
  %89 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov5640_try_fmt_internal(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, i32, %struct.ov5640_mode_info**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

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
