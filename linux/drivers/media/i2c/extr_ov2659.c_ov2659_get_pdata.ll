; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2659_platform_data = type { i32 }
%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ov2659_platform_data* }
%struct.v4l2_fwnode_endpoint = type { i32*, i32, i32 }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"link-frequencies property not found or too many\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ov2659_platform_data* (%struct.i2c_client*)* @ov2659_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ov2659_platform_data* @ov2659_get_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.ov2659_platform_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov2659_platform_data*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* @CONFIG_OF, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %21, align 8
  store %struct.ov2659_platform_data* %22, %struct.ov2659_platform_data** %2, align 8
  br label %67

23:                                               ; preds = %12
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %27, i32* null)
  store %struct.device_node* %28, %struct.device_node** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.ov2659_platform_data* null, %struct.ov2659_platform_data** %2, align 8
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i32 @of_fwnode_handle(%struct.device_node* %33)
  %35 = call i32 @v4l2_fwnode_endpoint_alloc_parse(i32 %34, %struct.v4l2_fwnode_endpoint* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.ov2659_platform_data* null, %struct.ov2659_platform_data** %4, align 8
  br label %62

39:                                               ; preds = %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ov2659_platform_data* @devm_kzalloc(%struct.TYPE_3__* %41, i32 4, i32 %42)
  store %struct.ov2659_platform_data* %43, %struct.ov2659_platform_data** %4, align 8
  %44 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %4, align 8
  %45 = icmp ne %struct.ov2659_platform_data* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %62

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.TYPE_3__* %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.ov2659_platform_data* null, %struct.ov2659_platform_data** %4, align 8
  br label %62

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.ov2659_platform_data, %struct.ov2659_platform_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %51, %46, %38
  %63 = call i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint* %5)
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i32 @of_node_put(%struct.device_node* %64)
  %66 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %4, align 8
  store %struct.ov2659_platform_data* %66, %struct.ov2659_platform_data** %2, align 8
  br label %67

67:                                               ; preds = %62, %31, %18
  %68 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %2, align 8
  ret %struct.ov2659_platform_data* %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local %struct.ov2659_platform_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_free(%struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
