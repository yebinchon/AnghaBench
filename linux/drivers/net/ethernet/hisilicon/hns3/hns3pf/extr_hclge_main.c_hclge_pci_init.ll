; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.hclge_hw, %struct.pci_dev* }
%struct.hclge_hw = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't set consistent PCI DMA\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set DMA mask to 32 bits\0A\00", align 1
@HCLGE_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"PCI request regions failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Can't map configuration register space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_pci_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hclge_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 2
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
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @DMA_BIT_MASK(i32 64)
  %23 = call i32 @dma_set_mask_and_coherent(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = call i32 @dma_set_mask_and_coherent(i32* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %81

37:                                               ; preds = %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %19
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @HCLGE_DRIVER_NAME, align 4
  %44 = call i32 @pci_request_regions(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %81

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pci_set_master(%struct.pci_dev* %53)
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 1
  store %struct.hclge_hw* %56, %struct.hclge_hw** %5, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pcim_iomap(%struct.pci_dev* %57, i32 2, i32 0)
  %59 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %60 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %62 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %52
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %76

71:                                               ; preds = %52
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %72)
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %85

76:                                               ; preds = %65
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pci_clear_master(%struct.pci_dev* %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pci_release_regions(%struct.pci_dev* %79)
  br label %81

81:                                               ; preds = %76, %47, %33
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i32 @pci_disable_device(%struct.pci_dev* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %71, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
