; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vdoa_data = type { i32*, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vdoa_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vdoa\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to get irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vdoa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdoa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vdoa_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @DMA_BIT_MASK(i32 32)
  %10 = call i32 @dma_set_coherent_mask(i32* %8, i32 %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vdoa_data* @devm_kzalloc(i32* %12, i32 16, i32 %13)
  store %struct.vdoa_data* %14, %struct.vdoa_data** %4, align 8
  %15 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %16 = icmp ne %struct.vdoa_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %24 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %26 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @devm_clk_get(i32* %27, i32* null)
  %29 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %30 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %32 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %38 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %42 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %97

45:                                               ; preds = %20
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %5, align 8
  %49 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %50 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = call i32 @devm_ioremap_resource(i32* %51, %struct.resource* %52)
  %54 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %55 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %57 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %63 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %97

66:                                               ; preds = %45
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_IRQ, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %5, align 8
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = icmp ne %struct.resource* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %97

75:                                               ; preds = %66
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @vdoa_irq_handler, align 4
  %82 = load i32, i32* @IRQF_ONESHOT, align 4
  %83 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %84 = call i32 @devm_request_threaded_irq(i32* %77, i32 %80, i32* null, i32 %81, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.vdoa_data* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %89 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %75
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.vdoa_data* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %87, %72, %61, %36, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.vdoa_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.vdoa_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vdoa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
