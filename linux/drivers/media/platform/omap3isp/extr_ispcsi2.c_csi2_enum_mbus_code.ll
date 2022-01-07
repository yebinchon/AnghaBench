; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i64, i32, i32 }
%struct.isp_csi2_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.isp_format_info = type { i32 }

@CSI2_PAD_SINK = common dso_local global i64 0, align 8
@csi2_input_fmts = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @csi2_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.isp_csi2_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.isp_format_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.isp_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.isp_csi2_device* %12, %struct.isp_csi2_device** %8, align 8
  %13 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CSI2_PAD_SINK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32*, i32** @csi2_input_fmts, align 8
  %23 = call i64 @ARRAY_SIZE(i32* %22)
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %80

28:                                               ; preds = %18
  %29 = load i32*, i32** @csi2_input_fmts, align 8
  %30 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %79

37:                                               ; preds = %3
  %38 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %8, align 8
  %39 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %40 = load i64, i64* @CSI2_PAD_SINK, align 8
  %41 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.v4l2_mbus_framefmt* @__csi2_get_format(%struct.isp_csi2_device* %38, %struct.v4l2_subdev_pad_config* %39, i64 %40, i32 %43)
  store %struct.v4l2_mbus_framefmt* %44, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  switch i64 %47, label %75 [
    i64 0, label %48
    i64 1, label %54
  ]

48:                                               ; preds = %37
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %78

54:                                               ; preds = %37
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %57)
  store %struct.isp_format_info* %58, %struct.isp_format_info** %10, align 8
  %59 = load %struct.isp_format_info*, %struct.isp_format_info** %10, align 8
  %60 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %54
  %70 = load %struct.isp_format_info*, %struct.isp_format_info** %10, align 8
  %71 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %78

75:                                               ; preds = %37
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %69, %48
  br label %79

79:                                               ; preds = %78, %28
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %75, %66, %25
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.isp_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi2_get_format(%struct.isp_csi2_device*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
