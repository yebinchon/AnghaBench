; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.vimc_deb_device = type { i64 }
%struct.vimc_deb_pix_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_WIDTH = common dso_local global i32 0, align 4
@VIMC_FRAME_MIN_HEIGHT = common dso_local global i32 0, align 4
@VIMC_FRAME_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @vimc_deb_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_deb_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.vimc_deb_device*, align 8
  %9 = alloca %struct.vimc_deb_pix_map*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.vimc_deb_device* %11, %struct.vimc_deb_device** %8, align 8
  %12 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_SINK(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.vimc_deb_pix_map* @vimc_deb_pix_map_by_code(i64 %28)
  store %struct.vimc_deb_pix_map* %29, %struct.vimc_deb_pix_map** %9, align 8
  %30 = load %struct.vimc_deb_pix_map*, %struct.vimc_deb_pix_map** %9, align 8
  %31 = icmp ne %struct.vimc_deb_pix_map* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %61

35:                                               ; preds = %25
  br label %48

36:                                               ; preds = %19
  %37 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %8, align 8
  %41 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* @VIMC_FRAME_MIN_WIDTH, align 4
  %50 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @VIMC_FRAME_MAX_WIDTH, align 4
  %53 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @VIMC_FRAME_MIN_HEIGHT, align 4
  %56 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @VIMC_FRAME_MAX_HEIGHT, align 4
  %59 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %44, %32, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @IS_SINK(i32) #1

declare dso_local %struct.vimc_deb_pix_map* @vimc_deb_pix_map_by_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
