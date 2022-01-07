; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.ov772x_priv = type { i64, i32, %struct.ov772x_color_format*, %struct.ov772x_win_size*, i64 }
%struct.ov772x_color_format = type { i32, i32 }
%struct.ov772x_win_size = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov772x_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.ov772x_priv*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.ov772x_color_format*, align 8
  %11 = alloca %struct.ov772x_win_size*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev* %13)
  store %struct.ov772x_priv* %14, %struct.ov772x_priv** %8, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %109

24:                                               ; preds = %3
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %26 = call i32 @ov772x_select_params(%struct.v4l2_mbus_framefmt* %25, %struct.ov772x_color_format** %10, %struct.ov772x_win_size** %11)
  %27 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %10, align 8
  %28 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %11, align 8
  %33 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %11, align 8
  %39 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %10, align 8
  %48 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %24
  %67 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %67, i32 0, i32 0
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %70 = bitcast %struct.v4l2_mbus_framefmt* %68 to i8*
  %71 = bitcast %struct.v4l2_mbus_framefmt* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %109

72:                                               ; preds = %24
  %73 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %74 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %77 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %104

83:                                               ; preds = %72
  %84 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %85 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %90 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %10, align 8
  %91 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %11, align 8
  %92 = call i32 @ov772x_set_params(%struct.ov772x_priv* %89, %struct.ov772x_color_format* %90, %struct.ov772x_win_size* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %104

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %11, align 8
  %99 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %100 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %99, i32 0, i32 3
  store %struct.ov772x_win_size* %98, %struct.ov772x_win_size** %100, align 8
  %101 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %10, align 8
  %102 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %103 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %102, i32 0, i32 2
  store %struct.ov772x_color_format* %101, %struct.ov772x_color_format** %103, align 8
  br label %104

104:                                              ; preds = %97, %95, %80
  %105 = load %struct.ov772x_priv*, %struct.ov772x_priv** %8, align 8
  %106 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %66, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov772x_select_params(%struct.v4l2_mbus_framefmt*, %struct.ov772x_color_format**, %struct.ov772x_win_size**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov772x_set_params(%struct.ov772x_priv*, %struct.ov772x_color_format*, %struct.ov772x_win_size*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
