; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_emc = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nvidia,memory-controller\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not get memory controller\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"no memory timings for RAM code %u found in DT\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no memory timings for RAM code %u registered\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EMC initialization failed: %d\0A\00", align 1
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_emc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_emc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.tegra_emc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra_emc* @devm_kzalloc(%struct.TYPE_5__* %11, i32 24, i32 %12)
  store %struct.tegra_emc* %13, %struct.tegra_emc** %6, align 8
  %14 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %15 = icmp ne %struct.tegra_emc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %142

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %22, i32 0, i32 3
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %28, %struct.resource* %29)
  %31 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %32 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %19
  %39 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %142

43:                                               ; preds = %19
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.device_node* @of_parse_phandle(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %48, %struct.device_node** %5, align 8
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %142

57:                                               ; preds = %43
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %58)
  store %struct.platform_device* %59, %struct.platform_device** %4, align 8
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = icmp ne %struct.platform_device* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %142

67:                                               ; preds = %57
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = call i32 @platform_get_drvdata(%struct.platform_device* %68)
  %70 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %73 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %142

79:                                               ; preds = %67
  %80 = call i32 (...) @tegra_read_ram_code()
  store i32 %80, i32* %8, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.device_node* @tegra_emc_find_node_by_ram_code(i32 %84, i32 %85)
  store %struct.device_node* %86, %struct.device_node** %5, align 8
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %79
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %142

96:                                               ; preds = %79
  %97 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %98 = load %struct.device_node*, %struct.device_node** %5, align 8
  %99 = call i32 @tegra_emc_load_timings_from_dt(%struct.tegra_emc* %97, %struct.device_node* %98)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = call i32 @of_node_put(%struct.device_node* %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %142

106:                                              ; preds = %96
  %107 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %108 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %142

118:                                              ; preds = %106
  %119 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %120 = call i32 @emc_init(%struct.tegra_emc* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %142

129:                                              ; preds = %118
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %132 = call i32 @platform_set_drvdata(%struct.platform_device* %130, %struct.tegra_emc* %131)
  %133 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %134 = call i64 @IS_ENABLED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %140 = call i32 @emc_debugfs_init(%struct.TYPE_5__* %138, %struct.tegra_emc* %139)
  br label %141

141:                                              ; preds = %136, %129
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %123, %111, %104, %89, %76, %64, %51, %38, %16
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.tegra_emc* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tegra_read_ram_code(...) #1

declare dso_local %struct.device_node* @tegra_emc_find_node_by_ram_code(i32, i32) #1

declare dso_local i32 @tegra_emc_load_timings_from_dt(%struct.tegra_emc*, %struct.device_node*) #1

declare dso_local i32 @emc_init(%struct.tegra_emc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_emc*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @emc_debugfs_init(%struct.TYPE_5__*, %struct.tegra_emc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
