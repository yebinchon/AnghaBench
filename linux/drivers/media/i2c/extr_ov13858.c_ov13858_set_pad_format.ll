; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }
%struct.ov13858 = type { i32, i32, %struct.ov13858_mode*, i32, i32, i32 }
%struct.ov13858_mode = type { i64, i64, i64, i64, i64 }

@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i64 0, align 8
@supported_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@link_freq_menu_items = common dso_local global i64* null, align 8
@OV13858_VTS_MAX = common dso_local global i64 0, align 8
@link_freq_configs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov13858_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov13858_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.ov13858*, align 8
  %8 = alloca %struct.ov13858_mode*, align 8
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
  %16 = call %struct.ov13858* @to_ov13858(%struct.v4l2_subdev* %15)
  store %struct.ov13858* %16, %struct.ov13858** %7, align 8
  %17 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %18 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MEDIA_BUS_FMT_SGRBG10_1X10, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i64, i64* @MEDIA_BUS_FMT_SGRBG10_1X10, align 8
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @supported_modes, align 4
  %33 = load i32, i32* @supported_modes, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* @width, align 4
  %36 = load i32, i32* @height, align 4
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.ov13858_mode* @v4l2_find_nearest_size(i32 %32, i32 %34, i32 %35, i32 %36, i32 %40, i32 %44)
  store %struct.ov13858_mode* %45, %struct.ov13858_mode** %8, align 8
  %46 = load %struct.ov13858_mode*, %struct.ov13858_mode** %8, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %48 = call i32 @ov13858_update_pad_format(%struct.ov13858_mode* %46, %struct.v4l2_subdev_format* %47)
  %49 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %31
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %55, %struct.v4l2_subdev_pad_config* %56, i32 %59)
  store %struct.v4l2_mbus_framefmt* %60, %struct.v4l2_mbus_framefmt** %9, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %62, i32 0, i32 1
  %64 = bitcast %struct.v4l2_mbus_framefmt* %61 to i8*
  %65 = bitcast %struct.v4l2_mbus_framefmt* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  br label %150

66:                                               ; preds = %31
  %67 = load %struct.ov13858_mode*, %struct.ov13858_mode** %8, align 8
  %68 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %69 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %68, i32 0, i32 2
  store %struct.ov13858_mode* %67, %struct.ov13858_mode** %69, align 8
  %70 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %71 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ov13858_mode*, %struct.ov13858_mode** %8, align 8
  %74 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @__v4l2_ctrl_s_ctrl(i32 %72, i64 %75)
  %77 = load i64*, i64** @link_freq_menu_items, align 8
  %78 = load %struct.ov13858_mode*, %struct.ov13858_mode** %8, align 8
  %79 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @link_freq_to_pixel_rate(i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %86 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %13, align 8
  %89 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %87, i64 %88)
  %90 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %91 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %90, i32 0, i32 2
  %92 = load %struct.ov13858_mode*, %struct.ov13858_mode** %91, align 8
  %93 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %96 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %95, i32 0, i32 2
  %97 = load %struct.ov13858_mode*, %struct.ov13858_mode** %96, align 8
  %98 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %94, %99
  store i64 %100, i64* %10, align 8
  %101 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %102 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %101, i32 0, i32 2
  %103 = load %struct.ov13858_mode*, %struct.ov13858_mode** %102, align 8
  %104 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %107 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %106, i32 0, i32 2
  %108 = load %struct.ov13858_mode*, %struct.ov13858_mode** %107, align 8
  %109 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %105, %110
  store i64 %111, i64* %11, align 8
  %112 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %113 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @OV13858_VTS_MAX, align 8
  %117 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %118 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %117, i32 0, i32 2
  %119 = load %struct.ov13858_mode*, %struct.ov13858_mode** %118, align 8
  %120 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %116, %121
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @__v4l2_ctrl_modify_range(i32 %114, i64 %115, i64 %122, i32 1, i64 %123)
  %125 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %126 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @__v4l2_ctrl_s_ctrl(i32 %127, i64 %128)
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @link_freq_configs, align 8
  %131 = load %struct.ov13858_mode*, %struct.ov13858_mode** %8, align 8
  %132 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %138 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %137, i32 0, i32 2
  %139 = load %struct.ov13858_mode*, %struct.ov13858_mode** %138, align 8
  %140 = getelementptr inbounds %struct.ov13858_mode, %struct.ov13858_mode* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %136, %141
  store i64 %142, i64* %12, align 8
  %143 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %144 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @__v4l2_ctrl_modify_range(i32 %145, i64 %146, i64 %147, i32 1, i64 %148)
  br label %150

150:                                              ; preds = %66, %54
  %151 = load %struct.ov13858*, %struct.ov13858** %7, align 8
  %152 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  ret i32 0
}

declare dso_local %struct.ov13858* @to_ov13858(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov13858_mode* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov13858_update_pad_format(%struct.ov13858_mode*, %struct.v4l2_subdev_format*) #1

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
