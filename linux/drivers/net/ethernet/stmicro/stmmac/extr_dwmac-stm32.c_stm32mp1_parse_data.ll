; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_parse_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_parse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dwmac = type { i32, i32*, i32*, i32*, i8*, i8* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }

@.str = private unnamed_addr constant [15 x i8] c"st,eth-clk-sel\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"st,eth-ref-clk-sel\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"eth-ck\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No phy clock provided...\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ethstp\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"No ETH peripheral clock provided for CStop mode ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"syscfg-clk\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"No syscfg clock provided...\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"stm32_pwr_wakeup\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to init wake up irq\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to set wake up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dwmac*, %struct.device*)* @stm32mp1_parse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32mp1_parse_data(%struct.stm32_dwmac* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dwmac*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.stm32_dwmac* %0, %struct.stm32_dwmac** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i8* @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i8* @of_property_read_bool(%struct.device_node* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i8* @devm_clk_get(%struct.device* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i8* @devm_clk_get(%struct.device* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %42 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %52 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %3, align 4
  br label %130

55:                                               ; preds = %37
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i8* @devm_clk_get(%struct.device* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %62 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %69 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %70 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @PTR_ERR(i32* %71)
  store i32 %72, i32* %3, align 4
  br label %130

73:                                               ; preds = %55
  %74 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %75 = call i32 @platform_get_irq_byname(%struct.platform_device* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %76 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %79 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EPROBE_DEFER, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %130

87:                                               ; preds = %73
  %88 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %89 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %128, label %92

92:                                               ; preds = %87
  %93 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %94 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @device_init_wakeup(%struct.device* %99, i32 1)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %130

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %112 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_pm_set_dedicated_wake_irq(%struct.device* %110, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %121 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @device_init_wakeup(%struct.device* %122, i32 0)
  br label %124

124:                                              ; preds = %117, %108
  %125 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @device_set_wakeup_enable(%struct.device* %126, i32 0)
  br label %128

128:                                              ; preds = %124, %92, %87
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %103, %84, %66, %48
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(%struct.device*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
