; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i64, i32, i32 }
%struct.isp_res_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@RESZ_PAD_SINK = common dso_local global i64 0, align 8
@resizer_formats = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @resizer_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.isp_res_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_res_device* %11, %struct.isp_res_device** %8, align 8
  %12 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RESZ_PAD_SINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** @resizer_formats, align 8
  %22 = call i64 @ARRAY_SIZE(i32* %21)
  %23 = icmp uge i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %17
  %28 = load i32*, i32** @resizer_formats, align 8
  %29 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %57

36:                                               ; preds = %3
  %37 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.isp_res_device*, %struct.isp_res_device** %8, align 8
  %46 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %47 = load i64, i64* @RESZ_PAD_SINK, align 8
  %48 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %45, %struct.v4l2_subdev_pad_config* %46, i64 %47, i32 %50)
  store %struct.v4l2_mbus_framefmt* %51, %struct.v4l2_mbus_framefmt** %9, align 8
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %44, %27
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %41, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
