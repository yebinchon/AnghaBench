; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { %struct.TYPE_10__, i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Not connected to subdevice\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not parse v4l2 endpoint\0A\00", align 1
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@rcar_csi2_notify_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Found '%pOF'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*)* @rcsi2_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_parse_dt(%struct.rcar_csi2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_csi2*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %6 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %3, align 8
  %7 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %12, i32 0, i32 0)
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call i32 @dev_err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %106

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i32 @of_fwnode_handle(%struct.device_node* %24)
  %26 = call i32 @v4l2_fwnode_endpoint_parse(i32 %25, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %30, i32 0, i32 3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = call i32 @dev_err(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %23
  %39 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %40 = call i32 @rcsi2_parse_v4l2(%struct.rcar_csi2* %39, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %106

47:                                               ; preds = %38
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = call i32 @of_fwnode_handle(%struct.device_node* %48)
  %50 = call i32 @fwnode_graph_get_remote_endpoint(i32 %49)
  %51 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %52 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %56 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %57 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_node_put(%struct.device_node* %59)
  %61 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %62 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %61, i32 0, i32 0
  %63 = call i32 @v4l2_async_notifier_init(%struct.TYPE_10__* %62)
  %64 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %65 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %64, i32 0, i32 0
  %66 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %66, i32 0, i32 2
  %68 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_10__* %65, %struct.TYPE_11__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %47
  %72 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %73 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fwnode_handle_put(i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %106

79:                                               ; preds = %47
  %80 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %81 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32* @rcar_csi2_notify_ops, i32** %82, align 8
  %83 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %84 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %87 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @to_of_node(i32 %90)
  %92 = call i32 @dev_dbg(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %94 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %93, i32 0, i32 1
  %95 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %96 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %95, i32 0, i32 0
  %97 = call i32 @v4l2_async_subdev_notifier_register(i32* %94, %struct.TYPE_10__* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %79
  %101 = load %struct.rcar_csi2*, %struct.rcar_csi2** %3, align 8
  %102 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %101, i32 0, i32 0
  %103 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %100, %79
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %71, %43, %29, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @rcsi2_parse_v4l2(%struct.rcar_csi2*, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @fwnode_graph_get_remote_endpoint(i32) #2

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_10__*) #2

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local i32 @fwnode_handle_put(i32) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @to_of_node(i32) #2

declare dso_local i32 @v4l2_async_subdev_notifier_register(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
