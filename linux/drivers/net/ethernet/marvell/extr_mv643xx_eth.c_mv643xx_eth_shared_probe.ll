; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_shared_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_shared_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv643xx_eth_shared_platform_data = type { i32 }
%struct.mv643xx_eth_shared_private = type { i32, i32, i32* }
%struct.mbus_dram_target_info = type { i32 }
%struct.resource = type { i32 }

@mv643xx_eth_shared_probe.mv643xx_eth_version_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"MV-643xx 10/100/1000 ethernet driver version %s\0A\00", align 1
@mv643xx_eth_driver_version = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv643xx_eth_shared_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_shared_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv643xx_eth_shared_platform_data*, align 8
  %5 = alloca %struct.mv643xx_eth_shared_private*, align 8
  %6 = alloca %struct.mbus_dram_target_info*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @mv643xx_eth_driver_version, align 4
  %14 = call i32 @pr_notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %7, align 8
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = icmp eq %struct.resource* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %120

24:                                               ; preds = %15
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mv643xx_eth_shared_private* @devm_kzalloc(i32* %26, i32 16, i32 %27)
  store %struct.mv643xx_eth_shared_private* %28, %struct.mv643xx_eth_shared_private** %5, align 8
  %29 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %30 = icmp eq %struct.mv643xx_eth_shared_private* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %120

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.mv643xx_eth_shared_private* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = call i32* @devm_ioremap(i32* %39, i32 %42, i32 %44)
  %46 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %49 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %120

55:                                               ; preds = %34
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(i32* %57, i32* null)
  %59 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %60 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IS_ERR(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  %67 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %68 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_prepare_enable(i32 %69)
  br label %71

71:                                               ; preds = %66, %55
  %72 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %72, %struct.mbus_dram_target_info** %6, align 8
  %73 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %6, align 8
  %74 = icmp ne %struct.mbus_dram_target_info* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %77 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %6, align 8
  %78 = call i32 @mv643xx_eth_conf_mbus_windows(%struct.mv643xx_eth_shared_private* %76, %struct.mbus_dram_target_info* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = call i32 @mv643xx_eth_shared_of_probe(%struct.platform_device* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %107

85:                                               ; preds = %79
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call %struct.mv643xx_eth_shared_platform_data* @dev_get_platdata(i32* %87)
  store %struct.mv643xx_eth_shared_platform_data* %88, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %89 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %90 = icmp ne %struct.mv643xx_eth_shared_platform_data* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %93 = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, %struct.mv643xx_eth_shared_platform_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %98 = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, %struct.mv643xx_eth_shared_platform_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  br label %101

100:                                              ; preds = %91, %85
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 9216, %100 ]
  %103 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %104 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %106 = call i32 @infer_hw_params(%struct.mv643xx_eth_shared_private* %105)
  store i32 0, i32* %2, align 4
  br label %120

107:                                              ; preds = %84
  %108 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %109 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @IS_ERR(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %5, align 8
  %115 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_disable_unprepare(i32 %116)
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %101, %52, %31, %21
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mv643xx_eth_shared_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mv643xx_eth_shared_private*) #1

declare dso_local i32* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @mv643xx_eth_conf_mbus_windows(%struct.mv643xx_eth_shared_private*, %struct.mbus_dram_target_info*) #1

declare dso_local i32 @mv643xx_eth_shared_of_probe(%struct.platform_device*) #1

declare dso_local %struct.mv643xx_eth_shared_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @infer_hw_params(%struct.mv643xx_eth_shared_private*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
