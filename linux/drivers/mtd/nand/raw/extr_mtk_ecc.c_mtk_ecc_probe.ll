; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_ecc = type { i32, %struct.device*, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64*, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to map regs: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@mtk_ecc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mtk-ecc\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_ecc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ecc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_ecc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.device* %12, i64 40, i32 %13)
  %15 = bitcast i8* %14 to %struct.mtk_ecc*
  store %struct.mtk_ecc* %15, %struct.mtk_ecc** %5, align 8
  %16 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %17 = icmp ne %struct.mtk_ecc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %155

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %22)
  %24 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %24, i32 0, i32 5
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %7, align 8
  %32 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %33 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %40, %45
  %47 = add i64 %46, 7
  %48 = lshr i64 %47, 3
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @round_up(i64 %49, i32 4)
  store i64 %50, i64* %7, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @devm_kzalloc(%struct.device* %51, i64 %52, i32 %53)
  %55 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %56 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %58 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %21
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %155

64:                                               ; preds = %21
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %6, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = call i32 @devm_ioremap_resource(%struct.device* %68, %struct.resource* %69)
  %71 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %72 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %74 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PTR_ERR(i32 %82)
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %86 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %155

89:                                               ; preds = %64
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @devm_clk_get(%struct.device* %90, i32* null)
  %92 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %93 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %95 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %102 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR(i32 %103)
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %107 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %155

110:                                              ; preds = %89
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i32 @platform_get_irq(%struct.platform_device* %111, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %155

120:                                              ; preds = %110
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @DMA_BIT_MASK(i32 32)
  %123 = call i32 @dma_set_mask(%struct.device* %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %2, align 4
  br label %155

130:                                              ; preds = %120
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @mtk_ecc_irq, align 4
  %134 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %135 = call i32 @devm_request_irq(%struct.device* %131, i32 %132, i32 %133, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.mtk_ecc* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %155

143:                                              ; preds = %130
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %146 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %145, i32 0, i32 1
  store %struct.device* %144, %struct.device** %146, align 8
  %147 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %148 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %147, i32 0, i32 0
  %149 = call i32 @mutex_init(i32* %148)
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.mtk_ecc* %151)
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = call i32 @dev_info(%struct.device* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %143, %138, %126, %115, %99, %78, %61, %18
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.mtk_ecc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_ecc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
