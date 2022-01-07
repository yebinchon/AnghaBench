; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_mvebu_devbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_mvebu_devbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.devbus_read_params = type { i32 }
%struct.devbus_write_params = type { i32 }
%struct.devbus = type { i32, %struct.device*, %struct.clk* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Setting timing parameter, tick is %lu ps\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"devbus,keep-config\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"marvell,orion-devbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_devbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_devbus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.devbus_read_params, align 4
  %7 = alloca %struct.devbus_write_params, align 4
  %8 = alloca %struct.devbus*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.devbus* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  store %struct.devbus* %22, %struct.devbus** %8, align 8
  %23 = load %struct.devbus*, %struct.devbus** %8, align 8
  %24 = icmp ne %struct.devbus* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.devbus*, %struct.devbus** %8, align 8
  %31 = getelementptr inbounds %struct.devbus, %struct.devbus* %30, i32 0, i32 1
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %9, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %9, align 8
  %38 = call %struct.clk* @devm_ioremap_resource(%struct.device* %36, %struct.resource* %37)
  %39 = load %struct.devbus*, %struct.devbus** %8, align 8
  %40 = getelementptr inbounds %struct.devbus, %struct.devbus* %39, i32 0, i32 2
  store %struct.clk* %38, %struct.clk** %40, align 8
  %41 = load %struct.devbus*, %struct.devbus** %8, align 8
  %42 = getelementptr inbounds %struct.devbus, %struct.devbus* %41, i32 0, i32 2
  %43 = load %struct.clk*, %struct.clk** %42, align 8
  %44 = call i64 @IS_ERR(%struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %28
  %47 = load %struct.devbus*, %struct.devbus** %8, align 8
  %48 = getelementptr inbounds %struct.devbus, %struct.devbus* %47, i32 0, i32 2
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.clk* %49)
  store i32 %50, i32* %2, align 4
  br label %113

51:                                               ; preds = %28
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call %struct.clk* @devm_clk_get(%struct.device* %53, i32* null)
  store %struct.clk* %54, %struct.clk** %10, align 8
  %55 = load %struct.clk*, %struct.clk** %10, align 8
  %56 = call i64 @IS_ERR(%struct.clk* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.clk*, %struct.clk** %10, align 8
  %60 = call i32 @PTR_ERR(%struct.clk* %59)
  store i32 %60, i32* %2, align 4
  br label %113

61:                                               ; preds = %51
  %62 = load %struct.clk*, %struct.clk** %10, align 8
  %63 = call i32 @clk_prepare_enable(%struct.clk* %62)
  %64 = load %struct.clk*, %struct.clk** %10, align 8
  %65 = call i32 @clk_get_rate(%struct.clk* %64)
  %66 = sdiv i32 %65, 1000
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = udiv i64 1000000000, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.devbus*, %struct.devbus** %8, align 8
  %72 = getelementptr inbounds %struct.devbus, %struct.devbus* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.devbus*, %struct.devbus** %8, align 8
  %74 = getelementptr inbounds %struct.devbus, %struct.devbus* %73, i32 0, i32 1
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = load %struct.devbus*, %struct.devbus** %8, align 8
  %77 = getelementptr inbounds %struct.devbus, %struct.devbus* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = call i32 @of_property_read_bool(%struct.device_node* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %61
  %84 = load %struct.devbus*, %struct.devbus** %8, align 8
  %85 = load %struct.device_node*, %struct.device_node** %5, align 8
  %86 = call i32 @devbus_get_timing_params(%struct.devbus* %84, %struct.device_node* %85, %struct.devbus_read_params* %6, %struct.devbus_write_params* %7)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %2, align 4
  br label %113

91:                                               ; preds = %83
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i64 @of_device_is_compatible(%struct.device_node* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.devbus*, %struct.devbus** %8, align 8
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = call i32 @devbus_orion_set_timing_params(%struct.devbus* %96, %struct.device_node* %97, %struct.devbus_read_params* %6, %struct.devbus_write_params* %7)
  br label %103

99:                                               ; preds = %91
  %100 = load %struct.devbus*, %struct.devbus** %8, align 8
  %101 = load %struct.device_node*, %struct.device_node** %5, align 8
  %102 = call i32 @devbus_armada_set_timing_params(%struct.devbus* %100, %struct.device_node* %101, %struct.devbus_read_params* %6, %struct.devbus_write_params* %7)
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %61
  %105 = load %struct.device_node*, %struct.device_node** %5, align 8
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @of_platform_populate(%struct.device_node* %105, i32* null, i32* null, %struct.device* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %110, %89, %58, %46, %25
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.devbus* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devbus_get_timing_params(%struct.devbus*, %struct.device_node*, %struct.devbus_read_params*, %struct.devbus_write_params*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @devbus_orion_set_timing_params(%struct.devbus*, %struct.device_node*, %struct.devbus_read_params*, %struct.devbus_write_params*) #1

declare dso_local i32 @devbus_armada_set_timing_params(%struct.devbus*, %struct.device_node*, %struct.devbus_read_params*, %struct.devbus_write_params*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
