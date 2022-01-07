; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_bcm63138_nand.c_bcm63138_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_bcm63138_nand.c_bcm63138_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm63138_nand_soc = type { i32, %struct.brcmnand_soc }
%struct.brcmnand_soc = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"nand-int-base\00", align 1
@bcm63138_nand_intc_ack = common dso_local global i32 0, align 4
@bcm63138_nand_intc_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm63138_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63138_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm63138_nand_soc*, align 8
  %6 = alloca %struct.brcmnand_soc*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bcm63138_nand_soc* @devm_kzalloc(%struct.device* %10, i32 12, i32 %11)
  store %struct.bcm63138_nand_soc* %12, %struct.bcm63138_nand_soc** %5, align 8
  %13 = load %struct.bcm63138_nand_soc*, %struct.bcm63138_nand_soc** %5, align 8
  %14 = icmp ne %struct.bcm63138_nand_soc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.bcm63138_nand_soc*, %struct.bcm63138_nand_soc** %5, align 8
  %20 = getelementptr inbounds %struct.bcm63138_nand_soc, %struct.bcm63138_nand_soc* %19, i32 0, i32 1
  store %struct.brcmnand_soc* %20, %struct.brcmnand_soc** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.bcm63138_nand_soc*, %struct.bcm63138_nand_soc** %5, align 8
  %28 = getelementptr inbounds %struct.bcm63138_nand_soc, %struct.bcm63138_nand_soc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bcm63138_nand_soc*, %struct.bcm63138_nand_soc** %5, align 8
  %30 = getelementptr inbounds %struct.bcm63138_nand_soc, %struct.bcm63138_nand_soc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.bcm63138_nand_soc*, %struct.bcm63138_nand_soc** %5, align 8
  %36 = getelementptr inbounds %struct.bcm63138_nand_soc, %struct.bcm63138_nand_soc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %18
  %40 = load i32, i32* @bcm63138_nand_intc_ack, align 4
  %41 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %42 = getelementptr inbounds %struct.brcmnand_soc, %struct.brcmnand_soc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @bcm63138_nand_intc_set, align 4
  %44 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %45 = getelementptr inbounds %struct.brcmnand_soc, %struct.brcmnand_soc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %48 = call i32 @brcmnand_probe(%struct.platform_device* %46, %struct.brcmnand_soc* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %39, %34, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.bcm63138_nand_soc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @brcmnand_probe(%struct.platform_device*, %struct.brcmnand_soc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
