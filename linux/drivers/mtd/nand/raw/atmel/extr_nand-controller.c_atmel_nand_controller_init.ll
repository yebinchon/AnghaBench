; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i32, i32, %struct.atmel_nand_controller_caps*, %struct.device*, i32, i32, i32, %struct.TYPE_4__ }
%struct.device = type { %struct.TYPE_3__*, %struct.device_node* }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.atmel_nand_controller_caps = type { i64, i64 }

@atmel_nand_controller_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not get PMECC object (err = %d)\0A\00", align 1
@atmel_nand_avoid_dma = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to request DMA channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to retrieve MCK clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"atmel,smc\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Missing or invalid atmel,smc property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not get SMC regmap (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand_controller*, %struct.platform_device*, %struct.atmel_nand_controller_caps*)* @atmel_nand_controller_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_controller_init(%struct.atmel_nand_controller* %0, %struct.platform_device* %1, %struct.atmel_nand_controller_caps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_nand_controller*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.atmel_nand_controller_caps*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.atmel_nand_controller_caps* %2, %struct.atmel_nand_controller_caps** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %9, align 8
  %17 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %17, i32 0, i32 7
  %19 = call i32 @nand_controller_init(%struct.TYPE_4__* %18)
  %20 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %21 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* @atmel_nand_controller_ops, i32** %22, align 8
  %23 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %24 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %28 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %27, i32 0, i32 3
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %7, align 8
  %30 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %30, i32 0, i32 2
  store %struct.atmel_nand_controller_caps* %29, %struct.atmel_nand_controller_caps** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %33 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.atmel_nand_controller* %33)
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 @devm_atmel_pmecc_get(%struct.device* %35)
  %37 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %40 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %3
  %45 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %46 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %154

59:                                               ; preds = %3
  %60 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %60, i32 0, i32 2
  %62 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %61, align 8
  %63 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %59
  %67 = load i32, i32* @atmel_nand_avoid_dma, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @dma_cap_zero(i32 %70)
  %72 = load i32, i32* @DMA_MEMCPY, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @dma_cap_set(i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @dma_request_channel(i32 %75, i32* null, i32* null)
  %77 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %78 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %80 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %85 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %84, i32 0, i32 3
  %86 = load %struct.device*, %struct.device** %85, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %69
  br label %89

89:                                               ; preds = %88, %66, %59
  %90 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %91 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %90, i32 0, i32 2
  %92 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %91, align 8
  %93 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %154

97:                                               ; preds = %89
  %98 = load %struct.device*, %struct.device** %8, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @of_clk_get(i32 %102, i32 0)
  %104 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %105 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %107 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %97
  %112 = load %struct.device*, %struct.device** %8, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %115 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %4, align 4
  br label %154

118:                                              ; preds = %97
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.device_node* @of_parse_phandle(i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %124, %struct.device_node** %9, align 8
  %125 = load %struct.device_node*, %struct.device_node** %9, align 8
  %126 = icmp ne %struct.device_node* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %118
  %128 = load %struct.device*, %struct.device** %8, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %154

132:                                              ; preds = %118
  %133 = load %struct.device_node*, %struct.device_node** %9, align 8
  %134 = call i32 @syscon_node_to_regmap(%struct.device_node* %133)
  %135 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %136 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.device_node*, %struct.device_node** %9, align 8
  %138 = call i32 @of_node_put(%struct.device_node* %137)
  %139 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %140 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %132
  %145 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %146 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load %struct.device*, %struct.device** %8, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %154

153:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %144, %127, %111, %96, %57
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @nand_controller_init(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_nand_controller*) #1

declare dso_local i32 @devm_atmel_pmecc_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32*, i32*) #1

declare dso_local i32 @of_clk_get(i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
