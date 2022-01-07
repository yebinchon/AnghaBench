; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.imx214 = type { i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.imx214_mode = type { i32, i32 }

@imx214_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@IMX214_MBUS_CODE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx214_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.imx214*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.imx214_mode*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.imx214* @to_imx214(%struct.v4l2_subdev* %11)
  store %struct.imx214* %12, %struct.imx214** %7, align 8
  %13 = load %struct.imx214*, %struct.imx214** %7, align 8
  %14 = getelementptr inbounds %struct.imx214, %struct.imx214* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.imx214*, %struct.imx214** %7, align 8
  %17 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.v4l2_rect* @__imx214_get_pad_crop(%struct.imx214* %16, %struct.v4l2_subdev_pad_config* %17, i32 %20, i32 %23)
  store %struct.v4l2_rect* %24, %struct.v4l2_rect** %9, align 8
  %25 = load i32, i32* @imx214_modes, align 4
  %26 = load i32, i32* @imx214_modes, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load i32, i32* @width, align 4
  %29 = load i32, i32* @height, align 4
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.imx214_mode* @v4l2_find_nearest_size(i32 %25, i32 %27, i32 %28, i32 %29, i32 %33, i32 %37)
  store %struct.imx214_mode* %38, %struct.imx214_mode** %10, align 8
  %39 = load %struct.imx214_mode*, %struct.imx214_mode** %10, align 8
  %40 = getelementptr inbounds %struct.imx214_mode, %struct.imx214_mode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.imx214_mode*, %struct.imx214_mode** %10, align 8
  %45 = getelementptr inbounds %struct.imx214_mode, %struct.imx214_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.imx214*, %struct.imx214** %7, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.v4l2_mbus_framefmt* @__imx214_get_pad_format(%struct.imx214* %49, %struct.v4l2_subdev_pad_config* %50, i32 %53, i32 %56)
  store %struct.v4l2_mbus_framefmt* %57, %struct.v4l2_mbus_framefmt** %8, align 8
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @IMX214_MBUS_CODE, align 4
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %79)
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 1, i32 %85, i32 %88)
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %94)
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %98, i32 0, i32 0
  %100 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %101 = bitcast %struct.v4l2_mbus_framefmt* %99 to i8*
  %102 = bitcast %struct.v4l2_mbus_framefmt* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 32, i1 false)
  %103 = load %struct.imx214*, %struct.imx214** %7, align 8
  %104 = getelementptr inbounds %struct.imx214, %struct.imx214* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  ret i32 0
}

declare dso_local %struct.imx214* @to_imx214(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_rect* @__imx214_get_pad_crop(%struct.imx214*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.imx214_mode* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__imx214_get_pad_format(%struct.imx214*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

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
