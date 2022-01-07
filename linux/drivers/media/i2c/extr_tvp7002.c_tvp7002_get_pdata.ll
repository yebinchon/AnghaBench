; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvp7002_config = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.tvp7002_config* }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_FIELD_EVEN_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tvp7002_config* (%struct.i2c_client*)* @tvp7002_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tvp7002_config* @tvp7002_get_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.tvp7002_config*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %5 = alloca %struct.tvp7002_config*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = bitcast %struct.v4l2_fwnode_endpoint* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store %struct.tvp7002_config* null, %struct.tvp7002_config** %5, align 8
  %9 = load i32, i32* @CONFIG_OF, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.tvp7002_config*, %struct.tvp7002_config** %21, align 8
  store %struct.tvp7002_config* %22, %struct.tvp7002_config** %2, align 8
  br label %95

23:                                               ; preds = %12
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %27, i32* null)
  store %struct.device_node* %28, %struct.device_node** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.tvp7002_config* null, %struct.tvp7002_config** %2, align 8
  br label %95

32:                                               ; preds = %23
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i32 @of_fwnode_handle(%struct.device_node* %33)
  %35 = call i64 @v4l2_fwnode_endpoint_parse(i32 %34, %struct.v4l2_fwnode_endpoint* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %91

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.tvp7002_config* @devm_kzalloc(%struct.TYPE_6__* %40, i32 20, i32 %41)
  store %struct.tvp7002_config* %42, %struct.tvp7002_config** %5, align 8
  %43 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %44 = icmp ne %struct.tvp7002_config* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %91

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %57 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %65 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %73 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_HIGH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %81 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  %89 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %45, %37
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = call i32 @of_node_put(%struct.device_node* %92)
  %94 = load %struct.tvp7002_config*, %struct.tvp7002_config** %5, align 8
  store %struct.tvp7002_config* %94, %struct.tvp7002_config** %2, align 8
  br label %95

95:                                               ; preds = %91, %31, %18
  %96 = load %struct.tvp7002_config*, %struct.tvp7002_config** %2, align 8
  ret %struct.tvp7002_config* %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #2

declare dso_local i64 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local %struct.tvp7002_config* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
