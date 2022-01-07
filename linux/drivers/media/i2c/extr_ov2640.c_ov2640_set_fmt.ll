; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.i2c_client = type { i32 }
%struct.ov2640_priv = type { i32, i32, %struct.ov2640_win_size*, i64 }
%struct.ov2640_win_size = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov2640_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.ov2640_priv*, align 8
  %11 = alloca %struct.ov2640_win_size*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ov2640_priv*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %15, %struct.v4l2_mbus_framefmt** %8, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %9, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %19 = call %struct.ov2640_priv* @to_ov2640(%struct.i2c_client* %18)
  store %struct.ov2640_priv* %19, %struct.ov2640_priv** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %107

27:                                               ; preds = %3
  %28 = load %struct.ov2640_priv*, %struct.ov2640_priv** %10, align 8
  %29 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ov2640_win_size* @ov2640_select_win(i32 %33, i32 %36)
  store %struct.ov2640_win_size* %37, %struct.ov2640_win_size** %11, align 8
  %38 = load %struct.ov2640_win_size*, %struct.ov2640_win_size** %11, align 8
  %39 = getelementptr inbounds %struct.ov2640_win_size, %struct.ov2640_win_size* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ov2640_win_size*, %struct.ov2640_win_size** %11, align 8
  %44 = getelementptr inbounds %struct.ov2640_win_size, %struct.ov2640_win_size* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %67 [
    i32 133, label %66
    i32 132, label %66
    i32 129, label %66
    i32 131, label %66
    i32 128, label %66
    i32 130, label %66
  ]

66:                                               ; preds = %27, %27, %27, %27, %27, %27
  br label %70

67:                                               ; preds = %27
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 0
  store i32 131, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %78 = call %struct.ov2640_priv* @to_ov2640(%struct.i2c_client* %77)
  store %struct.ov2640_priv* %78, %struct.ov2640_priv** %13, align 8
  %79 = load %struct.ov2640_priv*, %struct.ov2640_priv** %13, align 8
  %80 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %102

86:                                               ; preds = %76
  %87 = load %struct.ov2640_win_size*, %struct.ov2640_win_size** %11, align 8
  %88 = load %struct.ov2640_priv*, %struct.ov2640_priv** %13, align 8
  %89 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %88, i32 0, i32 2
  store %struct.ov2640_win_size* %87, %struct.ov2640_win_size** %89, align 8
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ov2640_priv*, %struct.ov2640_priv** %13, align 8
  %94 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %101

95:                                               ; preds = %70
  %96 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %96, i32 0, i32 0
  %98 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %99 = bitcast %struct.v4l2_mbus_framefmt* %97 to i8*
  %100 = bitcast %struct.v4l2_mbus_framefmt* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 32, i1 false)
  br label %101

101:                                              ; preds = %95, %86
  br label %102

102:                                              ; preds = %101, %83
  %103 = load %struct.ov2640_priv*, %struct.ov2640_priv** %10, align 8
  %104 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov2640_priv* @to_ov2640(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov2640_win_size* @ov2640_select_win(i32, i32) #1

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
