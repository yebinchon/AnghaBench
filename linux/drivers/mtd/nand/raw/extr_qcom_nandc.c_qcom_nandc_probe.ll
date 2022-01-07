; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.qcom_nand_controller = type { i8*, i8*, i32, i32, i8*, i8*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get device data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aon\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_nandc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_nand_controller*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qcom_nand_controller* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.qcom_nand_controller* %14, %struct.qcom_nand_controller** %4, align 8
  %15 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %16 = icmp ne %struct.qcom_nand_controller* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %177

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.qcom_nand_controller* %22)
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %25, i32 0, i32 6
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i8* @of_device_get_match_data(%struct.device* %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %177

37:                                               ; preds = %20
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i8* @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %44 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %177

55:                                               ; preds = %37
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i8* @devm_clk_get(%struct.device* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %59 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %61 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %67 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %177

70:                                               ; preds = %55
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = call i32 @qcom_nandc_parse_dt(%struct.platform_device* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %177

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load i32, i32* @IORESOURCE_MEM, align 4
  %80 = call %struct.resource* @platform_get_resource(%struct.platform_device* %78, i32 %79, i32 0)
  store %struct.resource* %80, %struct.resource** %7, align 8
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = call i8* @devm_ioremap_resource(%struct.device* %81, %struct.resource* %82)
  %84 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %85 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %87 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %93 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  store i32 %95, i32* %2, align 4
  br label %177

96:                                               ; preds = %77
  %97 = load %struct.resource*, %struct.resource** %7, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %101 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.resource*, %struct.resource** %7, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = call i32 @resource_size(%struct.resource* %106)
  %108 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %109 = call i32 @dma_map_resource(%struct.device* %102, i32 %105, i32 %107, i32 %108, i32 0)
  %110 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %111 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %113 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %96
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %177

119:                                              ; preds = %96
  %120 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %121 = call i32 @qcom_nandc_alloc(%struct.qcom_nand_controller* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %167

125:                                              ; preds = %119
  %126 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %127 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @clk_prepare_enable(i8* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %164

133:                                              ; preds = %125
  %134 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %135 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @clk_prepare_enable(i8* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %159

141:                                              ; preds = %133
  %142 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %143 = call i32 @qcom_nandc_setup(%struct.qcom_nand_controller* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %154

147:                                              ; preds = %141
  %148 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %149 = call i32 @qcom_probe_nand_devices(%struct.qcom_nand_controller* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %154

153:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %177

154:                                              ; preds = %152, %146
  %155 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %156 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @clk_disable_unprepare(i8* %157)
  br label %159

159:                                              ; preds = %154, %140
  %160 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %161 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @clk_disable_unprepare(i8* %162)
  br label %164

164:                                              ; preds = %159, %132
  %165 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %166 = call i32 @qcom_nandc_unalloc(%struct.qcom_nand_controller* %165)
  br label %167

167:                                              ; preds = %164, %124
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load %struct.resource*, %struct.resource** %7, align 8
  %170 = getelementptr inbounds %struct.resource, %struct.resource* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.resource*, %struct.resource** %7, align 8
  %173 = call i32 @resource_size(%struct.resource* %172)
  %174 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %175 = call i32 @dma_unmap_resource(%struct.device* %168, i32 %171, i32 %173, i32 %174, i32 0)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %167, %153, %116, %91, %75, %65, %50, %31, %17
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.qcom_nand_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_nand_controller*) #1

declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @qcom_nandc_parse_dt(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @dma_map_resource(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @qcom_nandc_alloc(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @qcom_nandc_setup(%struct.qcom_nand_controller*) #1

declare dso_local i32 @qcom_probe_nand_devices(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @qcom_nandc_unalloc(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dma_unmap_resource(%struct.device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
