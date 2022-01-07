; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.imx258 = type { i32, i32, %struct.imx258_mode*, i32, i32, i32 }
%struct.imx258_mode = type { i64, i64, i64, i64, i64 }

@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@link_freq_menu_items = common dso_local global i64* null, align 8
@IMX258_VTS_MAX = common dso_local global i64 0, align 8
@link_freq_configs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx258_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx258_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.imx258*, align 8
  %8 = alloca %struct.imx258_mode*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.imx258* @to_imx258(%struct.v4l2_subdev* %15)
  store %struct.imx258* %16, %struct.imx258** %7, align 8
  %17 = load %struct.imx258*, %struct.imx258** %7, align 8
  %18 = getelementptr inbounds %struct.imx258, %struct.imx258* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @supported_modes, align 4
  %25 = load i32, i32* @supported_modes, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i32, i32* @width, align 4
  %28 = load i32, i32* @height, align 4
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.imx258_mode* @v4l2_find_nearest_size(i32 %24, i32 %26, i32 %27, i32 %28, i32 %32, i32 %36)
  store %struct.imx258_mode* %37, %struct.imx258_mode** %8, align 8
  %38 = load %struct.imx258_mode*, %struct.imx258_mode** %8, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %40 = call i32 @imx258_update_pad_format(%struct.imx258_mode* %38, %struct.v4l2_subdev_format* %39)
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %3
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %49 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %47, %struct.v4l2_subdev_pad_config* %48, i32 %51)
  store %struct.v4l2_mbus_framefmt* %52, %struct.v4l2_mbus_framefmt** %9, align 8
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 1
  %56 = bitcast %struct.v4l2_mbus_framefmt* %53 to i8*
  %57 = bitcast %struct.v4l2_mbus_framefmt* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 8 %57, i64 12, i1 false)
  br label %142

58:                                               ; preds = %3
  %59 = load %struct.imx258_mode*, %struct.imx258_mode** %8, align 8
  %60 = load %struct.imx258*, %struct.imx258** %7, align 8
  %61 = getelementptr inbounds %struct.imx258, %struct.imx258* %60, i32 0, i32 2
  store %struct.imx258_mode* %59, %struct.imx258_mode** %61, align 8
  %62 = load %struct.imx258*, %struct.imx258** %7, align 8
  %63 = getelementptr inbounds %struct.imx258, %struct.imx258* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.imx258_mode*, %struct.imx258_mode** %8, align 8
  %66 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @__v4l2_ctrl_s_ctrl(i32 %64, i64 %67)
  %69 = load i64*, i64** @link_freq_menu_items, align 8
  %70 = load %struct.imx258_mode*, %struct.imx258_mode** %8, align 8
  %71 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @link_freq_to_pixel_rate(i64 %75)
  store i64 %76, i64* %13, align 8
  %77 = load %struct.imx258*, %struct.imx258** %7, align 8
  %78 = getelementptr inbounds %struct.imx258, %struct.imx258* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %79, i64 %80)
  %82 = load %struct.imx258*, %struct.imx258** %7, align 8
  %83 = getelementptr inbounds %struct.imx258, %struct.imx258* %82, i32 0, i32 2
  %84 = load %struct.imx258_mode*, %struct.imx258_mode** %83, align 8
  %85 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.imx258*, %struct.imx258** %7, align 8
  %88 = getelementptr inbounds %struct.imx258, %struct.imx258* %87, i32 0, i32 2
  %89 = load %struct.imx258_mode*, %struct.imx258_mode** %88, align 8
  %90 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %86, %91
  store i64 %92, i64* %10, align 8
  %93 = load %struct.imx258*, %struct.imx258** %7, align 8
  %94 = getelementptr inbounds %struct.imx258, %struct.imx258* %93, i32 0, i32 2
  %95 = load %struct.imx258_mode*, %struct.imx258_mode** %94, align 8
  %96 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.imx258*, %struct.imx258** %7, align 8
  %99 = getelementptr inbounds %struct.imx258, %struct.imx258* %98, i32 0, i32 2
  %100 = load %struct.imx258_mode*, %struct.imx258_mode** %99, align 8
  %101 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %97, %102
  store i64 %103, i64* %11, align 8
  %104 = load %struct.imx258*, %struct.imx258** %7, align 8
  %105 = getelementptr inbounds %struct.imx258, %struct.imx258* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @IMX258_VTS_MAX, align 8
  %109 = load %struct.imx258*, %struct.imx258** %7, align 8
  %110 = getelementptr inbounds %struct.imx258, %struct.imx258* %109, i32 0, i32 2
  %111 = load %struct.imx258_mode*, %struct.imx258_mode** %110, align 8
  %112 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %108, %113
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @__v4l2_ctrl_modify_range(i32 %106, i64 %107, i64 %114, i32 1, i64 %115)
  %117 = load %struct.imx258*, %struct.imx258** %7, align 8
  %118 = getelementptr inbounds %struct.imx258, %struct.imx258* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @__v4l2_ctrl_s_ctrl(i32 %119, i64 %120)
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @link_freq_configs, align 8
  %123 = load %struct.imx258_mode*, %struct.imx258_mode** %8, align 8
  %124 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.imx258*, %struct.imx258** %7, align 8
  %130 = getelementptr inbounds %struct.imx258, %struct.imx258* %129, i32 0, i32 2
  %131 = load %struct.imx258_mode*, %struct.imx258_mode** %130, align 8
  %132 = getelementptr inbounds %struct.imx258_mode, %struct.imx258_mode* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %128, %133
  store i64 %134, i64* %12, align 8
  %135 = load %struct.imx258*, %struct.imx258** %7, align 8
  %136 = getelementptr inbounds %struct.imx258, %struct.imx258* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @__v4l2_ctrl_modify_range(i32 %137, i64 %138, i64 %139, i32 1, i64 %140)
  br label %142

142:                                              ; preds = %58, %46
  %143 = load %struct.imx258*, %struct.imx258** %7, align 8
  %144 = getelementptr inbounds %struct.imx258, %struct.imx258* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  ret i32 0
}

declare dso_local %struct.imx258* @to_imx258(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.imx258_mode* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @imx258_update_pad_format(%struct.imx258_mode*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__v4l2_ctrl_s_ctrl(i32, i64) #1

declare dso_local i64 @link_freq_to_pixel_rate(i64) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i64) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i64, i64, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
