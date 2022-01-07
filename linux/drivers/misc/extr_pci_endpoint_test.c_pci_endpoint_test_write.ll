; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_write.c"
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to allocate address\0A\00", align 1
@PCI_ENDPOINT_TEST_CHECKSUM = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_LOWER_SRC_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_UPPER_SRC_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_SIZE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_TYPE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_NUMBER = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_COMMAND = common dso_local global i32 0, align 4
@COMMAND_READ = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_STATUS = common dso_local global i32 0, align 4
@STATUS_READ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i64)* @pci_endpoint_test_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_write(%struct.pci_endpoint_test* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %17 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %16, i32 0, i32 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %9, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %22 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @SIZE_MAX, align 8
  %26 = load i64, i64* %14, align 8
  %27 = sub i64 %25, %26
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %130

30:                                               ; preds = %2
  %31 = load i32, i32* @irq_type, align 4
  %32 = load i32, i32* @IRQ_TYPE_LEGACY, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @irq_type, align 4
  %36 = load i32, i32* @IRQ_TYPE_MSIX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %130

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @dma_alloc_coherent(%struct.device* %42, i64 %45, i64* %12, i32 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %130

53:                                               ; preds = %41
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @IS_ALIGNED(i64 %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @PTR_ALIGN(i64 %62, i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr i8, i8* %68, i64 %69
  store i8* %70, i8** %7, align 8
  br label %74

71:                                               ; preds = %56, %53
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %71, %61
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @get_random_bytes(i8* %75, i64 %76)
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @crc32_le(i32 -1, i8* %78, i64 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %82 = load i32, i32* @PCI_ENDPOINT_TEST_CHECKSUM, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %81, i32 %82, i32 %83)
  %85 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %86 = load i32, i32* @PCI_ENDPOINT_TEST_LOWER_SRC_ADDR, align 4
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @lower_32_bits(i64 %87)
  %89 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %85, i32 %86, i32 %88)
  %90 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %91 = load i32, i32* @PCI_ENDPOINT_TEST_UPPER_SRC_ADDR, align 4
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @upper_32_bits(i64 %92)
  %94 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %90, i32 %91, i32 %93)
  %95 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %96 = load i32, i32* @PCI_ENDPOINT_TEST_SIZE, align 4
  %97 = load i64, i64* %4, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %95, i32 %96, i32 %98)
  %100 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %101 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_TYPE, align 4
  %102 = load i32, i32* @irq_type, align 4
  %103 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %100, i32 %101, i32 %102)
  %104 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %105 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_NUMBER, align 4
  %106 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %104, i32 %105, i32 1)
  %107 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %108 = load i32, i32* @PCI_ENDPOINT_TEST_COMMAND, align 4
  %109 = load i32, i32* @COMMAND_READ, align 4
  %110 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %107, i32 %108, i32 %109)
  %111 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %112 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %111, i32 0, i32 1
  %113 = call i32 @wait_for_completion(i32* %112)
  %114 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %115 = load i32, i32* @PCI_ENDPOINT_TEST_STATUS, align 4
  %116 = call i32 @pci_endpoint_test_readl(%struct.pci_endpoint_test* %114, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @STATUS_READ_SUCCESS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %74
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %74
  %123 = load %struct.device*, %struct.device** %10, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %124, %125
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i32 @dma_free_coherent(%struct.device* %123, i64 %126, i8* %127, i64 %128)
  br label %130

130:                                              ; preds = %122, %50, %38, %29
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @PTR_ALIGN(i64, i64) #1

declare dso_local i32 @get_random_bytes(i8*, i64) #1

declare dso_local i32 @crc32_le(i32, i8*, i64) #1

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pci_endpoint_test_readl(%struct.pci_endpoint_test*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
