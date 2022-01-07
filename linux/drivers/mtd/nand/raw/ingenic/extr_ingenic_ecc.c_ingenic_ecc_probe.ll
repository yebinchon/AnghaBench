; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_ingenic_ecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_ingenic_ecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ingenic_ecc = type { %struct.device*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ingenic_ecc*)* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get clock: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ingenic_ecc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ingenic_ecc*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ingenic_ecc* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.ingenic_ecc* %11, %struct.ingenic_ecc** %5, align 8
  %12 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %13 = icmp ne %struct.ingenic_ecc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.TYPE_2__* @device_get_match_data(%struct.device* %18)
  %20 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %21 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %20, i32 0, i32 3
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %23 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %86

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %6, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i32 @devm_ioremap_resource(%struct.device* %33, %struct.resource* %34)
  %36 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %37 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %39 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %45 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %29
  %49 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %50 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ingenic_ecc*)*, i32 (%struct.ingenic_ecc*)** %52, align 8
  %54 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %55 = call i32 %53(%struct.ingenic_ecc* %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @devm_clk_get(%struct.device* %56, i32* null)
  %58 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %59 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %61 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %48
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %68 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  %71 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %73 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %86

76:                                               ; preds = %48
  %77 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %78 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %77, i32 0, i32 1
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %82 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %81, i32 0, i32 0
  store %struct.device* %80, %struct.device** %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.ingenic_ecc* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %76, %65, %43, %26, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.ingenic_ecc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ingenic_ecc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
