; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.hclgevf_hw, %struct.pci_dev* }
%struct.hclgevf_hw = type { i32, %struct.hclgevf_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"can't set consistent PCI DMA, exiting\00", align 1
@HCLGEVF_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"PCI request regions failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"can't map configuration register space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_pci_init(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hclgevf_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @DMA_BIT_MASK(i32 64)
  %23 = call i32 @dma_set_mask_and_coherent(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %69

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @HCLGEVF_DRIVER_NAME, align 4
  %33 = call i32 @pci_request_regions(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %69

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_set_master(%struct.pci_dev* %42)
  %44 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %44, i32 0, i32 0
  store %struct.hclgevf_hw* %45, %struct.hclgevf_hw** %5, align 8
  %46 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %47 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %48 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %47, i32 0, i32 1
  store %struct.hclgevf_dev* %46, %struct.hclgevf_dev** %48, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i32 @pci_iomap(%struct.pci_dev* %49, i32 2, i32 0)
  %51 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %52 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %54 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %41
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %64

63:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %73

64:                                               ; preds = %57
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_clear_master(%struct.pci_dev* %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_release_regions(%struct.pci_dev* %67)
  br label %69

69:                                               ; preds = %64, %36, %26
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_disable_device(%struct.pci_dev* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %63, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
