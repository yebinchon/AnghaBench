; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_parse_tx_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_parse_tx_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.v4l2_fwnode_endpoint, %struct.i2c_client* }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to find port1 ep\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not parse v4l2 endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_parse_tx_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_parse_tx_ep(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %9 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %18, i32 2, i32 0)
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @of_fwnode_handle(%struct.device_node* %29)
  %31 = call i32 @v4l2_fwnode_endpoint_parse(i32 %30, %struct.v4l2_fwnode_endpoint* %4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %41, i32 0, i32 0
  %43 = bitcast %struct.v4l2_fwnode_endpoint* %42 to i8*
  %44 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 4, i1 false)
  store i32 0, i32* %2, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  br label %48

48:                                               ; preds = %45, %22
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
