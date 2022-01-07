; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.imx355 = type { i32, i32, i32, %struct.imx355_mode*, i32, i32 }
%struct.imx355_mode = type { i64, i64, i64, i64, i64 }

@supported_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@IMX355_FLL_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx355_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.imx355*, align 8
  %8 = alloca %struct.imx355_mode*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.imx355* @to_imx355(%struct.v4l2_subdev* %15)
  store %struct.imx355* %16, %struct.imx355** %7, align 8
  %17 = load %struct.imx355*, %struct.imx355** %7, align 8
  %18 = getelementptr inbounds %struct.imx355, %struct.imx355* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.imx355*, %struct.imx355** %7, align 8
  %21 = call i32 @imx355_get_format_code(%struct.imx355* %20)
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @supported_modes, align 4
  %26 = load i32, i32* @supported_modes, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load i32, i32* @width, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.imx355_mode* @v4l2_find_nearest_size(i32 %25, i32 %27, i32 %28, i64 %29, i32 %33, i32 %37)
  store %struct.imx355_mode* %38, %struct.imx355_mode** %8, align 8
  %39 = load %struct.imx355*, %struct.imx355** %7, align 8
  %40 = load %struct.imx355_mode*, %struct.imx355_mode** %8, align 8
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %42 = call i32 @imx355_update_pad_format(%struct.imx355* %39, %struct.imx355_mode* %40, %struct.v4l2_subdev_format* %41)
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %3
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %49, %struct.v4l2_subdev_pad_config* %50, i32 %53)
  store %struct.v4l2_mbus_framefmt* %54, %struct.v4l2_mbus_framefmt** %9, align 8
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %56 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %56, i32 0, i32 1
  %58 = bitcast %struct.v4l2_mbus_framefmt* %55 to i8*
  %59 = bitcast %struct.v4l2_mbus_framefmt* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 8 %59, i64 12, i1 false)
  br label %126

60:                                               ; preds = %3
  %61 = load %struct.imx355_mode*, %struct.imx355_mode** %8, align 8
  %62 = load %struct.imx355*, %struct.imx355** %7, align 8
  %63 = getelementptr inbounds %struct.imx355, %struct.imx355* %62, i32 0, i32 3
  store %struct.imx355_mode* %61, %struct.imx355_mode** %63, align 8
  %64 = load %struct.imx355*, %struct.imx355** %7, align 8
  %65 = getelementptr inbounds %struct.imx355, %struct.imx355* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 2
  %68 = mul nsw i32 %67, 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @do_div(i32 %69, i32 10)
  %71 = load %struct.imx355*, %struct.imx355** %7, align 8
  %72 = getelementptr inbounds %struct.imx355, %struct.imx355* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %73, i32 %74)
  %76 = load %struct.imx355*, %struct.imx355** %7, align 8
  %77 = getelementptr inbounds %struct.imx355, %struct.imx355* %76, i32 0, i32 3
  %78 = load %struct.imx355_mode*, %struct.imx355_mode** %77, align 8
  %79 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %14, align 8
  %81 = load %struct.imx355*, %struct.imx355** %7, align 8
  %82 = getelementptr inbounds %struct.imx355, %struct.imx355* %81, i32 0, i32 3
  %83 = load %struct.imx355_mode*, %struct.imx355_mode** %82, align 8
  %84 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %10, align 8
  %88 = load %struct.imx355*, %struct.imx355** %7, align 8
  %89 = getelementptr inbounds %struct.imx355, %struct.imx355* %88, i32 0, i32 3
  %90 = load %struct.imx355_mode*, %struct.imx355_mode** %89, align 8
  %91 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* @IMX355_FLL_MAX, align 8
  %96 = load i64, i64* %14, align 8
  %97 = sub nsw i64 %95, %96
  store i64 %97, i64* %14, align 8
  %98 = load %struct.imx355*, %struct.imx355** %7, align 8
  %99 = getelementptr inbounds %struct.imx355, %struct.imx355* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @__v4l2_ctrl_modify_range(i32 %100, i64 %101, i64 %102, i32 1, i64 %103)
  %105 = load %struct.imx355*, %struct.imx355** %7, align 8
  %106 = getelementptr inbounds %struct.imx355, %struct.imx355* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @__v4l2_ctrl_s_ctrl(i32 %107, i64 %108)
  %110 = load %struct.imx355_mode*, %struct.imx355_mode** %8, align 8
  %111 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.imx355*, %struct.imx355** %7, align 8
  %114 = getelementptr inbounds %struct.imx355, %struct.imx355* %113, i32 0, i32 3
  %115 = load %struct.imx355_mode*, %struct.imx355_mode** %114, align 8
  %116 = getelementptr inbounds %struct.imx355_mode, %struct.imx355_mode* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %112, %117
  store i64 %118, i64* %12, align 8
  %119 = load %struct.imx355*, %struct.imx355** %7, align 8
  %120 = getelementptr inbounds %struct.imx355, %struct.imx355* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @__v4l2_ctrl_modify_range(i32 %121, i64 %122, i64 %123, i32 1, i64 %124)
  br label %126

126:                                              ; preds = %60, %48
  %127 = load %struct.imx355*, %struct.imx355** %7, align 8
  %128 = getelementptr inbounds %struct.imx355, %struct.imx355* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  ret i32 0
}

declare dso_local %struct.imx355* @to_imx355(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx355_get_format_code(%struct.imx355*) #1

declare dso_local %struct.imx355_mode* @v4l2_find_nearest_size(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @imx355_update_pad_format(%struct.imx355*, %struct.imx355_mode*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i64, i64, i32, i64) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
