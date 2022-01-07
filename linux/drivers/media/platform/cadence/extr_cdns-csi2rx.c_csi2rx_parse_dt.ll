; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2rx_priv = type { i64, i64, %struct.TYPE_13__, i32, %struct.TYPE_14__, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.fwnode_handle = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not parse v4l2 endpoint\0A\00", align 1
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unsupported media bus type: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unsupported number of data-lanes: %d\0A\00", align 1
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@csi2rx_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi2rx_priv*)* @csi2rx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2rx_parse_dt(%struct.csi2rx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi2rx_priv*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.csi2rx_priv* %0, %struct.csi2rx_priv** %3, align 8
  %8 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %9, i32 0, i32 5
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %13, i32 0, i32 0)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call %struct.fwnode_handle* @of_fwnode_handle(%struct.device_node* %21)
  store %struct.fwnode_handle* %22, %struct.fwnode_handle** %5, align 8
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %24 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %23, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %29 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %28, i32 0, i32 5
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %133

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %42 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %41, i32 0, i32 5
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %35
  %52 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %53 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memcpy(i32 %54, i32 %58, i32 4)
  %60 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %65 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %67 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %70 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %51
  %74 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %75 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %74, i32 0, i32 5
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %78 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = call i32 @of_node_put(%struct.device_node* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %133

85:                                               ; preds = %51
  %86 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %87 = call i32 @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %86)
  %88 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %89 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %93 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %94 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.device_node*, %struct.device_node** %6, align 8
  %97 = call i32 @of_node_put(%struct.device_node* %96)
  %98 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %99 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %98, i32 0, i32 2
  %100 = call i32 @v4l2_async_notifier_init(%struct.TYPE_13__* %99)
  %101 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %102 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %101, i32 0, i32 2
  %103 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %104 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %103, i32 0, i32 4
  %105 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_13__* %102, %struct.TYPE_14__* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %85
  %109 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %110 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fwnode_handle_put(i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %133

116:                                              ; preds = %85
  %117 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %118 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32* @csi2rx_notifier_ops, i32** %119, align 8
  %120 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %121 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %120, i32 0, i32 3
  %122 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %123 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %122, i32 0, i32 2
  %124 = call i32 @v4l2_async_subdev_notifier_register(i32* %121, %struct.TYPE_13__* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %116
  %128 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %3, align 8
  %129 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %128, i32 0, i32 2
  %130 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_13__* %129)
  br label %131

131:                                              ; preds = %127, %116
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %108, %73, %40, %27, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #2

declare dso_local %struct.fwnode_handle* @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #2

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_13__*) #2

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @fwnode_handle_put(i32) #2

declare dso_local i32 @v4l2_async_subdev_notifier_register(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
