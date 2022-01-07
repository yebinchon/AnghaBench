; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_sensor_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_set_sensor_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.TYPE_2__, %struct.dcmi_format** }
%struct.TYPE_2__ = type { i32 }
%struct.dcmi_format = type { i32, i32 }
%struct.v4l2_pix_format = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*, %struct.v4l2_pix_format*)* @dcmi_set_sensor_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_set_sensor_format(%struct.stm32_dcmi* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.dcmi_format*, align 8
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = alloca %struct.v4l2_subdev_pad_config, align 4
  %9 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 1
  %12 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dcmi_format* @find_format_by_fourcc(%struct.stm32_dcmi* %13, i32 %16)
  store %struct.dcmi_format* %17, %struct.dcmi_format** %6, align 8
  %18 = load %struct.dcmi_format*, %struct.dcmi_format** %6, align 8
  %19 = icmp ne %struct.dcmi_format* %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %2
  %21 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %29, i32 0, i32 2
  %31 = load %struct.dcmi_format**, %struct.dcmi_format*** %30, align 8
  %32 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %31, i64 %36
  %38 = load %struct.dcmi_format*, %struct.dcmi_format** %37, align 8
  store %struct.dcmi_format* %38, %struct.dcmi_format** %6, align 8
  %39 = load %struct.dcmi_format*, %struct.dcmi_format** %6, align 8
  %40 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %2
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 0
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %47 = load %struct.dcmi_format*, %struct.dcmi_format** %6, align 8
  %48 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @v4l2_fill_mbus_format(i32* %45, %struct.v4l2_pix_format* %46, i32 %49)
  %51 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %52 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @pad, align 4
  %56 = load i32, i32* @set_fmt, align 4
  %57 = call i32 @v4l2_subdev_call(i32 %54, i32 %55, i32 %56, %struct.v4l2_subdev_pad_config* %8, %struct.v4l2_subdev_format* %7)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.dcmi_format* @find_format_by_fourcc(%struct.stm32_dcmi*, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
