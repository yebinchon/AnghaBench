; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { i32 }
%struct.tw9910_scale_ctrl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Field type %d invalid\0A\00", align 1
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @tw9910_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.tw9910_priv*, align 8
  %11 = alloca %struct.tw9910_scale_ctrl*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %16)
  store %struct.tw9910_priv* %17, %struct.tw9910_priv** %10, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %99

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tw9910_priv*, %struct.tw9910_priv** %10, align 8
  %59 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.tw9910_scale_ctrl* @tw9910_select_norm(i32 %60, i32 %63, i32 %66)
  store %struct.tw9910_scale_ctrl* %67, %struct.tw9910_scale_ctrl** %11, align 8
  %68 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %11, align 8
  %69 = icmp ne %struct.tw9910_scale_ctrl* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %51
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %99

73:                                               ; preds = %51
  %74 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %11, align 8
  %75 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %11, align 8
  %80 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %91 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %92 = call i32 @tw9910_s_fmt(%struct.v4l2_subdev* %90, %struct.v4l2_mbus_framefmt* %91)
  store i32 %92, i32* %4, align 4
  br label %99

93:                                               ; preds = %73
  %94 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %94, i32 0, i32 0
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %97 = bitcast %struct.v4l2_mbus_framefmt* %95 to i8*
  %98 = bitcast %struct.v4l2_mbus_framefmt* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %89, %70, %41, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local %struct.tw9910_scale_ctrl* @tw9910_select_norm(i32, i32, i32) #1

declare dso_local i32 @tw9910_s_fmt(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
