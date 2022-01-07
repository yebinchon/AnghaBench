; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@irq_type = common dso_local global i32 0, align 4
@IRQ_TYPE_LEGACY = common dso_local global i32 0, align 4
@IRQ_TYPE_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid IRQ type option\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate destination address\0A\00", align 1
@PCI_ENDPOINT_TEST_LOWER_DST_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_UPPER_DST_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_SIZE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_TYPE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_NUMBER = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_COMMAND = common dso_local global i32 0, align 4
@COMMAND_WRITE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i64)* @pci_endpoint_test_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_read(%struct.pci_endpoint_test* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %16 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %15, i32 0, i32 2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %21 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @SIZE_MAX, align 8
  %25 = load i64, i64* %13, align 8
  %26 = sub i64 %24, %25
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %120

29:                                               ; preds = %2
  %30 = load i32, i32* @irq_type, align 4
  %31 = load i32, i32* @IRQ_TYPE_LEGACY, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @irq_type, align 4
  %35 = load i32, i32* @IRQ_TYPE_MSIX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %120

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @dma_alloc_coherent(%struct.device* %41, i64 %44, i64* %11, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %120

52:                                               ; preds = %40
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @IS_ALIGNED(i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i64 @PTR_ALIGN(i64 %61, i64 %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr i8, i8* %67, i64 %68
  store i8* %69, i8** %6, align 8
  br label %73

70:                                               ; preds = %55, %52
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %75 = load i32, i32* @PCI_ENDPOINT_TEST_LOWER_DST_ADDR, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @lower_32_bits(i64 %76)
  %78 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %74, i32 %75, i32 %77)
  %79 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %80 = load i32, i32* @PCI_ENDPOINT_TEST_UPPER_DST_ADDR, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @upper_32_bits(i64 %81)
  %83 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %79, i32 %80, i32 %82)
  %84 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %85 = load i32, i32* @PCI_ENDPOINT_TEST_SIZE, align 4
  %86 = load i64, i64* %4, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %84, i32 %85, i32 %87)
  %89 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %90 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_TYPE, align 4
  %91 = load i32, i32* @irq_type, align 4
  %92 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %89, i32 %90, i32 %91)
  %93 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %94 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_NUMBER, align 4
  %95 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %93, i32 %94, i32 1)
  %96 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %97 = load i32, i32* @PCI_ENDPOINT_TEST_COMMAND, align 4
  %98 = load i32, i32* @COMMAND_WRITE, align 4
  %99 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %96, i32 %97, i32 %98)
  %100 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %101 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %100, i32 0, i32 1
  %102 = call i32 @wait_for_completion(i32* %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @crc32_le(i32 -1, i8* %103, i64 %104)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %108 = load i32, i32* @PCI_ENDPOINT_TEST_CHECKSUM, align 4
  %109 = call i64 @pci_endpoint_test_readl(%struct.pci_endpoint_test* %107, i32 %108)
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %73
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %73
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %114, %115
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @dma_free_coherent(%struct.device* %113, i64 %116, i8* %117, i64 %118)
  br label %120

120:                                              ; preds = %112, %49, %37, %28
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @PTR_ALIGN(i64, i64) #1

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @crc32_le(i32, i8*, i64) #1

declare dso_local i64 @pci_endpoint_test_readl(%struct.pci_endpoint_test*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
