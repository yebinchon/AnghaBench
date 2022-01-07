; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5670.c_ov5670_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ov5670 = type { i32, i32, %struct.ov5670_mode*, i32, i32, i32 }
%struct.ov5670_mode = type { i64, i64, i64, i64, i64 }

@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@link_freq_configs = common dso_local global %struct.TYPE_4__* null, align 8
@OV5670_VTS_MAX = common dso_local global i64 0, align 8
@OV5670_FIXED_PPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov5670_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5670_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.ov5670*, align 8
  %8 = alloca %struct.ov5670_mode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov5670* @to_ov5670(%struct.v4l2_subdev* %11)
  store %struct.ov5670* %12, %struct.ov5670** %7, align 8
  %13 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %14 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @supported_modes, align 4
  %21 = load i32, i32* @supported_modes, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load i32, i32* @width, align 4
  %24 = load i32, i32* @height, align 4
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.ov5670_mode* @v4l2_find_nearest_size(i32 %20, i32 %22, i32 %23, i32 %24, i32 %28, i32 %32)
  store %struct.ov5670_mode* %33, %struct.ov5670_mode** %8, align 8
  %34 = load %struct.ov5670_mode*, %struct.ov5670_mode** %8, align 8
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %36 = call i32 @ov5670_update_pad_format(%struct.ov5670_mode* %34, %struct.v4l2_subdev_format* %35)
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %3
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %44 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_3__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %43, %struct.v4l2_subdev_pad_config* %44, i32 %47)
  %49 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_3__* %48 to i8*
  %52 = bitcast %struct.TYPE_3__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %52, i64 12, i1 false)
  br label %128

53:                                               ; preds = %3
  %54 = load %struct.ov5670_mode*, %struct.ov5670_mode** %8, align 8
  %55 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %56 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %55, i32 0, i32 2
  store %struct.ov5670_mode* %54, %struct.ov5670_mode** %56, align 8
  %57 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %58 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ov5670_mode*, %struct.ov5670_mode** %8, align 8
  %61 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__v4l2_ctrl_s_ctrl(i32 %59, i64 %62)
  %64 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %65 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @link_freq_configs, align 8
  %68 = load %struct.ov5670_mode*, %struct.ov5670_mode** %8, align 8
  %69 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %66, i32 %73)
  %75 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %76 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %75, i32 0, i32 2
  %77 = load %struct.ov5670_mode*, %struct.ov5670_mode** %76, align 8
  %78 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %81 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %80, i32 0, i32 2
  %82 = load %struct.ov5670_mode*, %struct.ov5670_mode** %81, align 8
  %83 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %79, %84
  store i64 %85, i64* %9, align 8
  %86 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %87 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %90 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %89, i32 0, i32 2
  %91 = load %struct.ov5670_mode*, %struct.ov5670_mode** %90, align 8
  %92 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %95 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %94, i32 0, i32 2
  %96 = load %struct.ov5670_mode*, %struct.ov5670_mode** %95, align 8
  %97 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %93, %98
  %100 = load i64, i64* @OV5670_VTS_MAX, align 8
  %101 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %102 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %101, i32 0, i32 2
  %103 = load %struct.ov5670_mode*, %struct.ov5670_mode** %102, align 8
  %104 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %100, %105
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @__v4l2_ctrl_modify_range(i32 %88, i64 %99, i64 %106, i32 1, i64 %107)
  %109 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %110 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @__v4l2_ctrl_s_ctrl(i32 %111, i64 %112)
  %114 = load i64, i64* @OV5670_FIXED_PPL, align 8
  %115 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %116 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %115, i32 0, i32 2
  %117 = load %struct.ov5670_mode*, %struct.ov5670_mode** %116, align 8
  %118 = getelementptr inbounds %struct.ov5670_mode, %struct.ov5670_mode* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %114, %119
  store i64 %120, i64* %10, align 8
  %121 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %122 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @__v4l2_ctrl_modify_range(i32 %123, i64 %124, i64 %125, i32 1, i64 %126)
  br label %128

128:                                              ; preds = %53, %42
  %129 = load %struct.ov5670*, %struct.ov5670** %7, align 8
  %130 = getelementptr inbounds %struct.ov5670, %struct.ov5670* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  ret i32 0
}

declare dso_local %struct.ov5670* @to_ov5670(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov5670_mode* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov5670_update_pad_format(%struct.ov5670_mode*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.TYPE_3__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__v4l2_ctrl_s_ctrl(i32, i64) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i64, i64, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
