; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v032_platform_data = type { i32, i32, i32* }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.mt9v032_platform_data* }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"link-frequencies\00", align 1
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt9v032_platform_data* (%struct.i2c_client*)* @mt9v032_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt9v032_platform_data* @mt9v032_get_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.mt9v032_platform_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9v032_platform_data*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.mt9v032_platform_data* null, %struct.mt9v032_platform_data** %4, align 8
  %10 = bitcast %struct.v4l2_fwnode_endpoint* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @CONFIG_OF, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %23, align 8
  store %struct.mt9v032_platform_data* %24, %struct.mt9v032_platform_data** %2, align 8
  br label %100

25:                                               ; preds = %14
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %29, i32* null)
  store %struct.device_node* %30, %struct.device_node** %6, align 8
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store %struct.mt9v032_platform_data* null, %struct.mt9v032_platform_data** %2, align 8
  br label %100

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @of_fwnode_handle(%struct.device_node* %35)
  %37 = call i64 @v4l2_fwnode_endpoint_parse(i32 %36, %struct.v4l2_fwnode_endpoint* %5)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %96

40:                                               ; preds = %34
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.mt9v032_platform_data* @devm_kzalloc(%struct.TYPE_7__* %42, i32 16, i32 %43)
  store %struct.mt9v032_platform_data* %44, %struct.mt9v032_platform_data** %4, align 8
  %45 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %4, align 8
  %46 = icmp ne %struct.mt9v032_platform_data* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %96

48:                                               ; preds = %40
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call %struct.property* @of_find_property(%struct.device_node* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %50, %struct.property** %7, align 8
  %51 = load %struct.property*, %struct.property** %7, align 8
  %52 = icmp ne %struct.property* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.property*, %struct.property** %7, align 8
  %55 = getelementptr inbounds %struct.property, %struct.property* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  store i64 %58, i64* %9, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32* @devm_kcalloc(%struct.TYPE_7__* %60, i64 %61, i32 4, i32 %62)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %96

67:                                               ; preds = %53
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @of_property_read_u64_array(%struct.device_node* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %69, i64 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %96

74:                                               ; preds = %67
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %4, align 8
  %77 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %4, align 8
  %82 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %48
  %84 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %5, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %4, align 8
  %95 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %83, %73, %66, %47, %39
  %97 = load %struct.device_node*, %struct.device_node** %6, align 8
  %98 = call i32 @of_node_put(%struct.device_node* %97)
  %99 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %4, align 8
  store %struct.mt9v032_platform_data* %99, %struct.mt9v032_platform_data** %2, align 8
  br label %100

100:                                              ; preds = %96, %33, %20
  %101 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %2, align 8
  ret %struct.mt9v032_platform_data* %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #2

declare dso_local i64 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local %struct.mt9v032_platform_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i32* @devm_kcalloc(%struct.TYPE_7__*, i64, i32, i32) #2

declare dso_local i64 @of_property_read_u64_array(%struct.device_node*, i8*, i32*, i64) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
