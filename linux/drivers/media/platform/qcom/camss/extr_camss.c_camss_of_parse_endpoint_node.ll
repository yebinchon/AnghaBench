; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_of_parse_endpoint_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_of_parse_endpoint_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.camss_async_subdev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, i32*, i32*, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.camss_async_subdev*)* @camss_of_parse_endpoint_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camss_of_parse_endpoint_node(%struct.device* %0, %struct.device_node* %1, %struct.camss_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.camss_async_subdev*, align 8
  %8 = alloca %struct.csiphy_lanes_cfg*, align 8
  %9 = alloca %struct.v4l2_fwnode_bus_mipi_csi2*, align 8
  %10 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.camss_async_subdev* %2, %struct.camss_async_subdev** %7, align 8
  %12 = load %struct.camss_async_subdev*, %struct.camss_async_subdev** %7, align 8
  %13 = getelementptr inbounds %struct.camss_async_subdev, %struct.camss_async_subdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.csiphy_lanes_cfg* %15, %struct.csiphy_lanes_cfg** %8, align 8
  %16 = bitcast %struct.v4l2_fwnode_endpoint* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_fwnode_handle(%struct.device_node* %17)
  %19 = call i32 @v4l2_fwnode_endpoint_parse(i32 %18, %struct.v4l2_fwnode_endpoint* %10)
  %20 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.camss_async_subdev*, %struct.camss_async_subdev** %7, align 8
  %24 = getelementptr inbounds %struct.camss_async_subdev, %struct.camss_async_subdev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.v4l2_fwnode_bus_mipi_csi2* %27, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %28 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %40 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %49 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_14__* @devm_kcalloc(%struct.device* %47, i32 %50, i32 8, i32 %51)
  %53 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %54 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %53, i32 0, i32 1
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  %55 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %56 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %3
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %103

62:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %66 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %78 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.v4l2_fwnode_bus_mipi_csi2*, %struct.v4l2_fwnode_bus_mipi_csi2** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwnode_bus_mipi_csi2, %struct.v4l2_fwnode_bus_mipi_csi2* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %8, align 8
  %93 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %69
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %63

102:                                              ; preds = %63
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %59
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local %struct.TYPE_14__* @devm_kcalloc(%struct.device*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
