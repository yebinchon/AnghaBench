; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.noon010_info = type { i32, i32, %struct.noon010_frmsize*, %struct.noon010_format*, i32 }
%struct.noon010_frmsize = type { i32 }
%struct.noon010_format = type { i32 }

@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @noon010_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.noon010_info*, align 8
  %9 = alloca %struct.noon010_frmsize*, align 8
  %10 = alloca %struct.noon010_format*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.noon010_info* @to_noon010(%struct.v4l2_subdev* %13)
  store %struct.noon010_info* %14, %struct.noon010_info** %8, align 8
  store %struct.noon010_frmsize* null, %struct.noon010_frmsize** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %18 = call %struct.noon010_format* @noon010_try_fmt(%struct.v4l2_subdev* %15, %struct.v4l2_mbus_framefmt* %17)
  store %struct.noon010_format* %18, %struct.noon010_format** %10, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 1
  %21 = call i32 @noon010_try_frame_size(%struct.v4l2_mbus_framefmt* %20, %struct.noon010_frmsize** %9)
  %22 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %27 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %3
  %36 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %37 = icmp ne %struct.v4l2_subdev_pad_config* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %40 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %41 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %39, %struct.v4l2_subdev_pad_config* %40, i32 0)
  store %struct.v4l2_mbus_framefmt* %41, %struct.v4l2_mbus_framefmt** %11, align 8
  %42 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 1
  %45 = bitcast %struct.v4l2_mbus_framefmt* %42 to i8*
  %46 = bitcast %struct.v4l2_mbus_framefmt* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 8 %46, i64 8, i1 false)
  br label %47

47:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %73

48:                                               ; preds = %3
  %49 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %50 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %53 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  %57 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %58 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.noon010_format*, %struct.noon010_format** %10, align 8
  %60 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %61 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %60, i32 0, i32 3
  store %struct.noon010_format* %59, %struct.noon010_format** %61, align 8
  %62 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %9, align 8
  %63 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %64 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %63, i32 0, i32 2
  store %struct.noon010_frmsize* %62, %struct.noon010_frmsize** %64, align 8
  br label %68

65:                                               ; preds = %48
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.noon010_info*, %struct.noon010_info** %8, align 8
  %70 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %47
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.noon010_info* @to_noon010(%struct.v4l2_subdev*) #1

declare dso_local %struct.noon010_format* @noon010_try_fmt(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @noon010_try_frame_size(%struct.v4l2_mbus_framefmt*, %struct.noon010_frmsize**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
