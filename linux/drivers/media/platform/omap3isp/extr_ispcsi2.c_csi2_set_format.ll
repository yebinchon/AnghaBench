; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.isp_csi2_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CSI2_PAD_SINK = common dso_local global i32 0, align 4
@CSI2_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @csi2_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.isp_csi2_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_csi2_device* %11, %struct.isp_csi2_device** %8, align 8
  %12 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %8, align 8
  %13 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.v4l2_mbus_framefmt* @__csi2_get_format(%struct.isp_csi2_device* %12, %struct.v4l2_subdev_pad_config* %13, i32 %16, i32 %19)
  store %struct.v4l2_mbus_framefmt* %20, %struct.v4l2_mbus_framefmt** %9, align 8
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = icmp eq %struct.v4l2_mbus_framefmt* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %3
  %27 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %8, align 8
  %28 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @csi2_try_format(%struct.isp_csi2_device* %27, %struct.v4l2_subdev_pad_config* %28, i32 %31, %struct.v4l2_mbus_framefmt* %33, i32 %36)
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %39, i32 0, i32 1
  %41 = bitcast %struct.v4l2_mbus_framefmt* %38 to i8*
  %42 = bitcast %struct.v4l2_mbus_framefmt* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSI2_PAD_SINK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %26
  %49 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %8, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %51 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.v4l2_mbus_framefmt* @__csi2_get_format(%struct.isp_csi2_device* %49, %struct.v4l2_subdev_pad_config* %50, i32 %51, i32 %54)
  store %struct.v4l2_mbus_framefmt* %55, %struct.v4l2_mbus_framefmt** %9, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 1
  %59 = bitcast %struct.v4l2_mbus_framefmt* %56 to i8*
  %60 = bitcast %struct.v4l2_mbus_framefmt* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %8, align 8
  %62 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %63 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %65 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @csi2_try_format(%struct.isp_csi2_device* %61, %struct.v4l2_subdev_pad_config* %62, i32 %63, %struct.v4l2_mbus_framefmt* %64, i32 %67)
  br label %69

69:                                               ; preds = %48, %26
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.isp_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi2_get_format(%struct.isp_csi2_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @csi2_try_format(%struct.isp_csi2_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
