; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.isp_ccdc_device = type { i64 }
%struct.isp_bus_cfg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EPIPE = common dso_local global i32 0, align 4
@CCDC_INPUT_PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @ccdc_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.isp_ccdc_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.isp_bus_cfg*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.isp_ccdc_device* %15, %struct.isp_ccdc_device** %10, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25, %4
  %36 = load i32, i32* @EPIPE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %75

38:                                               ; preds = %25
  %39 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %10, align 8
  %40 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CCDC_INPUT_PARALLEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.media_link*, %struct.media_link** %7, align 8
  %46 = getelementptr inbounds %struct.media_link, %struct.media_link* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %49)
  store %struct.v4l2_subdev* %50, %struct.v4l2_subdev** %12, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %52 = call %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(%struct.v4l2_subdev* %51)
  store %struct.isp_bus_cfg* %52, %struct.isp_bus_cfg** %13, align 8
  %53 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %13, align 8
  %54 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %59

58:                                               ; preds = %38
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @ccdc_is_shiftable(i32 %63, i32 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @EPIPE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %71, %35
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(%struct.v4l2_subdev*) #1

declare dso_local i32 @ccdc_is_shiftable(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
