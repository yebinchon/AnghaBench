; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_parse_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_parse_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { %struct.TYPE_12__*, %struct.TYPE_13__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_11__, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sensor_async_subdev = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fwnode_handle = type { i32 }

@CIO2_NUM_PORTS = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@FWNODE_GRAPH_ENDPOINT_NEXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cio2_async_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to register async notifier : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cio2_device*)* @cio2_parse_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_parse_firmware(%struct.cio2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %7 = alloca %struct.sensor_async_subdev*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %77, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CIO2_NUM_PORTS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %15 = bitcast %struct.TYPE_11__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %17 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 2
  %19 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  store i32 %19, i32* %18, align 4
  store %struct.sensor_async_subdev* null, %struct.sensor_async_subdev** %7, align 8
  %20 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %21 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = call i32 @dev_fwnode(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FWNODE_GRAPH_ENDPOINT_NEXT, align 4
  %27 = call %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(i32 %24, i32 %25, i32 0, i32 %26)
  store %struct.fwnode_handle* %27, %struct.fwnode_handle** %8, align 8
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %29 = icmp ne %struct.fwnode_handle* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  br label %77

31:                                               ; preds = %13
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %33 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %32, %struct.v4l2_fwnode_endpoint* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %71

37:                                               ; preds = %31
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sensor_async_subdev* @kzalloc(i32 12, i32 %38)
  store %struct.sensor_async_subdev* %39, %struct.sensor_async_subdev** %7, align 8
  %40 = load %struct.sensor_async_subdev*, %struct.sensor_async_subdev** %7, align 8
  %41 = icmp ne %struct.sensor_async_subdev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %71

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sensor_async_subdev*, %struct.sensor_async_subdev** %7, align 8
  %50 = getelementptr inbounds %struct.sensor_async_subdev, %struct.sensor_async_subdev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sensor_async_subdev*, %struct.sensor_async_subdev** %7, align 8
  %57 = getelementptr inbounds %struct.sensor_async_subdev, %struct.sensor_async_subdev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %60 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %59, i32 0, i32 1
  %61 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %62 = load %struct.sensor_async_subdev*, %struct.sensor_async_subdev** %7, align 8
  %63 = getelementptr inbounds %struct.sensor_async_subdev, %struct.sensor_async_subdev* %62, i32 0, i32 0
  %64 = call i32 @v4l2_async_notifier_add_fwnode_remote_subdev(%struct.TYPE_13__* %60, %struct.fwnode_handle* %61, i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %71

68:                                               ; preds = %45
  %69 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %70 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %69)
  br label %77

71:                                               ; preds = %67, %42, %36
  %72 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %73 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %72)
  %74 = load %struct.sensor_async_subdev*, %struct.sensor_async_subdev** %7, align 8
  %75 = call i32 @kfree(%struct.sensor_async_subdev* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %100

77:                                               ; preds = %68, %30
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %9

80:                                               ; preds = %9
  %81 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %82 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32* @cio2_async_ops, i32** %83, align 8
  %84 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %85 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %84, i32 0, i32 2
  %86 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %87 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %86, i32 0, i32 1
  %88 = call i32 @v4l2_async_notifier_register(i32* %85, %struct.TYPE_13__* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %93 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91, %80
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %71
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(i32, i32, i32, i32) #2

declare dso_local i32 @dev_fwnode(i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local %struct.sensor_async_subdev* @kzalloc(i32, i32) #2

declare dso_local i32 @v4l2_async_notifier_add_fwnode_remote_subdev(%struct.TYPE_13__*, %struct.fwnode_handle*, i32*) #2

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #2

declare dso_local i32 @kfree(%struct.sensor_async_subdev*) #2

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
