; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { %struct.device_node*, %struct.s5c73m3_platform_data* }
%struct.device_node = type { i32 }
%struct.s5c73m3_platform_data = type { i32, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Platform data not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STBY = common dso_local global i64 0, align 8
@RST = common dso_local global i64 0, align 8
@S5C73M3_CLK_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@S5C73M3_DEFAULT_MCLK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"using default %u Hz clock frequency\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"no endpoint defined for node: %pOF\0A\00", align 1
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"unsupported bus type\0A\00", align 1
@S5C73M3_MIPI_DATA_LANES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"falling back to 4 MIPI CSI-2 data lanes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_get_platform_data(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s5c73m3_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %9 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %10 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %11 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.s5c73m3_platform_data*, %struct.s5c73m3_platform_data** %15, align 8
  store %struct.s5c73m3_platform_data* %16, %struct.s5c73m3_platform_data** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  %20 = bitcast %struct.v4l2_fwnode_endpoint* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %1
  %24 = load %struct.s5c73m3_platform_data*, %struct.s5c73m3_platform_data** %5, align 8
  %25 = icmp ne %struct.s5c73m3_platform_data* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %132

31:                                               ; preds = %23
  %32 = load %struct.s5c73m3_platform_data*, %struct.s5c73m3_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.s5c73m3_platform_data, %struct.s5c73m3_platform_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %36 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.s5c73m3_platform_data*, %struct.s5c73m3_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.s5c73m3_platform_data, %struct.s5c73m3_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %41 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @STBY, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load %struct.s5c73m3_platform_data*, %struct.s5c73m3_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.s5c73m3_platform_data, %struct.s5c73m3_platform_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %49 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @RST, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %132

53:                                               ; preds = %1
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @S5C73M3_CLK_NAME, align 4
  %56 = call i32 @devm_clk_get(%struct.device* %54, i32 %55)
  %57 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %58 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %60 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %66 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %132

69:                                               ; preds = %53
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %72 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %71, i32 0, i32 0
  %73 = call i64 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* @S5C73M3_DEFAULT_MCLK_FREQ, align 4
  %77 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %78 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %81 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %75, %69
  %85 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %86 = call i32 @s5c73m3_parse_gpios(%struct.s5c73m3* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %132

92:                                               ; preds = %84
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %93, i32* null)
  store %struct.device_node* %94, %struct.device_node** %7, align 8
  %95 = load %struct.device_node*, %struct.device_node** %7, align 8
  %96 = icmp ne %struct.device_node* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.device_node*, %struct.device_node** %6, align 8
  %100 = call i32 @dev_warn(%struct.device* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %99)
  store i32 0, i32* %2, align 4
  br label %132

101:                                              ; preds = %92
  %102 = load %struct.device_node*, %struct.device_node** %7, align 8
  %103 = call i32 @of_fwnode_handle(%struct.device_node* %102)
  %104 = call i32 @v4l2_fwnode_endpoint_parse(i32 %103, %struct.v4l2_fwnode_endpoint* %8)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.device_node*, %struct.device_node** %7, align 8
  %106 = call i32 @of_node_put(%struct.device_node* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %132

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %132

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @S5C73M3_MIPI_DATA_LANES, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %116, %109, %97, %89, %64, %31, %26
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #2

declare dso_local i32 @s5c73m3_parse_gpios(%struct.s5c73m3*) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, %struct.device_node*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
