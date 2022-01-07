; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_if_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_if_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { %struct.TYPE_8__, %struct.v4l2_mbus_framefmt*, i32*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_bus_cfg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev = type { i32 }

@CCP2_PAD_SINK = common dso_local global i64 0, align 8
@g_skip_top_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccp2_device*)* @ccp2_if_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_if_configure(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca %struct.isp_bus_cfg*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  %11 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %12 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %13)
  store %struct.isp_pipeline* %14, %struct.isp_pipeline** %4, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %16 = call i32 @ccp2_pwr_cfg(%struct.isp_ccp2_device* %15)
  %17 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %18 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @CCP2_PAD_SINK, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call %struct.media_pad* @media_entity_remote_pad(i32* %21)
  store %struct.media_pad* %22, %struct.media_pad** %7, align 8
  %23 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %25)
  store %struct.v4l2_subdev* %26, %struct.v4l2_subdev** %8, align 8
  %27 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %28 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32 %29)
  store %struct.isp_bus_cfg* %30, %struct.isp_bus_cfg** %5, align 8
  %31 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %32 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @ccp2_phyif_config(%struct.isp_ccp2_device* %31, %struct.TYPE_7__* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %2, align 4
  br label %86

40:                                               ; preds = %1
  %41 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %42 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @ccp2_vp_config(%struct.isp_ccp2_device* %41, i64 %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %51 = load i32, i32* @g_skip_top_lines, align 4
  %52 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %49, %struct.v4l2_subdev* %50, i32 %51, i32* %9)
  %53 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %54 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %53, i32 0, i32 1
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %54, align 8
  %56 = load i64, i64* @CCP2_PAD_SINK, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i64 %56
  store %struct.v4l2_mbus_framefmt* %57, %struct.v4l2_mbus_framefmt** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %60 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %68 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %74 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %80 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %83 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %84 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %83, i32 0, i32 0
  %85 = call i32 @ccp2_lcx_config(%struct.isp_ccp2_device* %82, %struct.TYPE_8__* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %40, %38
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @ccp2_pwr_cfg(%struct.isp_ccp2_device*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32) #1

declare dso_local i32 @ccp2_phyif_config(%struct.isp_ccp2_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @ccp2_vp_config(%struct.isp_ccp2_device*, i64) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @ccp2_lcx_config(%struct.isp_ccp2_device*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
