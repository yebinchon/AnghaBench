; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_parse_rx_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_parse_rx_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_13__, i32, %struct.TYPE_14__, %struct.v4l2_fwnode_endpoint, %struct.i2c_client* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.device_node = type { i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to find port0 ep\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not parse v4l2 endpoint %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"max supported data lanes is 2 / got %d\00", align 1
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"fail to register asd to notifier %d\00", align 1
@mipid02_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_parse_rx_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_parse_rx_ep(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %9 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 1
  %11 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %12, i32 0, i32 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %15, i32 0, i32 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %20, i32 0, i32 0)
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %117

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i32 @of_fwnode_handle(%struct.device_node* %31)
  %33 = call i32 @v4l2_fwnode_endpoint_parse(i32 %32, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %114

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 2
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %114

57:                                               ; preds = %41
  %58 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %58, i32 0, i32 3
  %60 = bitcast %struct.v4l2_fwnode_endpoint* %59 to i8*
  %61 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i32 @of_fwnode_handle(%struct.device_node* %62)
  %64 = call i32 @fwnode_graph_get_remote_port_parent(i32 %63)
  %65 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %70 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.device_node*, %struct.device_node** %6, align 8
  %74 = call i32 @of_node_put(%struct.device_node* %73)
  %75 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %75, i32 0, i32 0
  %77 = call i32 @v4l2_async_notifier_init(%struct.TYPE_13__* %76)
  %78 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %78, i32 0, i32 0
  %80 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %80, i32 0, i32 2
  %82 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_13__* %79, %struct.TYPE_14__* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %57
  %86 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fwnode_handle_put(i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %119

97:                                               ; preds = %57
  %98 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32* @mipid02_notifier_ops, i32** %100, align 8
  %101 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %101, i32 0, i32 1
  %103 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %104 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %103, i32 0, i32 0
  %105 = call i32 @v4l2_async_subdev_notifier_register(i32* %102, %struct.TYPE_13__* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %110 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %109, i32 0, i32 0
  %111 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_13__* %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %47, %36
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = call i32 @of_node_put(%struct.device_node* %115)
  br label %117

117:                                              ; preds = %114, %24
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %112, %85
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fwnode_graph_get_remote_port_parent(i32) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

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
