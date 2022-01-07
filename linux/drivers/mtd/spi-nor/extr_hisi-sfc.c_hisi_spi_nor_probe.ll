; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.hifmc_host = type { i8*, i32, i32, i32, i8*, i8*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to set dma mask\0A\00", align 1
@HIFMC_DMA_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_spi_nor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.hifmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hifmc_host* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.hifmc_host* %12, %struct.hifmc_host** %6, align 8
  %13 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %14 = icmp ne %struct.hifmc_host* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %132

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.hifmc_host* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %24 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %23, i32 0, i32 6
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i8* @devm_ioremap_resource(%struct.device* %28, %struct.resource* %29)
  %31 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %32 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %34 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %40 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %132

43:                                               ; preds = %18
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %46, %struct.resource** %5, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = call i8* @devm_ioremap_resource(%struct.device* %47, %struct.resource* %48)
  %50 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %51 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %53 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %59 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %2, align 4
  br label %132

62:                                               ; preds = %43
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i32* null)
  %65 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %66 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %68 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %74 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %132

77:                                               ; preds = %62
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @DMA_BIT_MASK(i32 32)
  %80 = call i32 @dma_set_mask_and_coherent(%struct.device* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %132

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* @HIFMC_DMA_MAX_LEN, align 4
  %90 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %91 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %90, i32 0, i32 3
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i32 @dmam_alloc_coherent(%struct.device* %88, i32 %89, i32* %91, i32 %92)
  %94 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %95 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %97 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %132

103:                                              ; preds = %87
  %104 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %105 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @clk_prepare_enable(i8* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %132

112:                                              ; preds = %103
  %113 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %114 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %113, i32 0, i32 1
  %115 = call i32 @mutex_init(i32* %114)
  %116 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %117 = call i32 @hisi_spi_nor_init(%struct.hifmc_host* %116)
  %118 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %119 = call i32 @hisi_spi_nor_register_all(%struct.hifmc_host* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %124 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %123, i32 0, i32 1
  %125 = call i32 @mutex_destroy(i32* %124)
  br label %126

126:                                              ; preds = %122, %112
  %127 = load %struct.hifmc_host*, %struct.hifmc_host** %6, align 8
  %128 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @clk_disable_unprepare(i8* %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %126, %110, %100, %83, %72, %57, %38, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.hifmc_host* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hifmc_host*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hisi_spi_nor_init(%struct.hifmc_host*) #1

declare dso_local i32 @hisi_spi_nor_register_all(%struct.hifmc_host*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
