; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_iproc_nand.c_iproc_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_iproc_nand.c_iproc_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iproc_nand_soc = type { i8*, i8*, i32, %struct.brcmnand_soc }
%struct.brcmnand_soc = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"iproc-idm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"iproc-ext\00", align 1
@iproc_nand_intc_ack = common dso_local global i32 0, align 4
@iproc_nand_intc_set = common dso_local global i32 0, align 4
@iproc_nand_apb_access = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iproc_nand_soc*, align 8
  %6 = alloca %struct.brcmnand_soc*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iproc_nand_soc* @devm_kzalloc(%struct.device* %10, i32 32, i32 %11)
  store %struct.iproc_nand_soc* %12, %struct.iproc_nand_soc** %5, align 8
  %13 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %14 = icmp ne %struct.iproc_nand_soc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %20 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %19, i32 0, i32 3
  store %struct.brcmnand_soc* %20, %struct.brcmnand_soc** %6, align 8
  %21 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %22 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %24, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = call i8* @devm_ioremap_resource(%struct.device* %27, %struct.resource* %28)
  %30 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %31 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %33 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %39 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %74

42:                                               ; preds = %18
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = call i8* @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %50 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %52 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.iproc_nand_soc*, %struct.iproc_nand_soc** %5, align 8
  %58 = getelementptr inbounds %struct.iproc_nand_soc, %struct.iproc_nand_soc* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %42
  %62 = load i32, i32* @iproc_nand_intc_ack, align 4
  %63 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %64 = getelementptr inbounds %struct.brcmnand_soc, %struct.brcmnand_soc* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @iproc_nand_intc_set, align 4
  %66 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %67 = getelementptr inbounds %struct.brcmnand_soc, %struct.brcmnand_soc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @iproc_nand_apb_access, align 4
  %69 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %70 = getelementptr inbounds %struct.brcmnand_soc, %struct.brcmnand_soc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.brcmnand_soc*, %struct.brcmnand_soc** %6, align 8
  %73 = call i32 @brcmnand_probe(%struct.platform_device* %71, %struct.brcmnand_soc* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %56, %37, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.iproc_nand_soc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @brcmnand_probe(%struct.platform_device*, %struct.brcmnand_soc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
