; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_copy.c"
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
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate source buffer\0A\00", align 1
@PCI_ENDPOINT_TEST_LOWER_SRC_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_UPPER_SRC_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate destination address\0A\00", align 1
@PCI_ENDPOINT_TEST_LOWER_DST_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_UPPER_DST_ADDR = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_SIZE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_TYPE = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_IRQ_NUMBER = common dso_local global i32 0, align 4
@PCI_ENDPOINT_TEST_COMMAND = common dso_local global i32 0, align 4
@COMMAND_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i64)* @pci_endpoint_test_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_copy(%struct.pci_endpoint_test* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_endpoint_test*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %21 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %20, i32 0, i32 2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %10, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %11, align 8
  %25 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %26 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @SIZE_MAX, align 8
  %30 = load i64, i64* %17, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %180

34:                                               ; preds = %2
  %35 = load i32, i32* @irq_type, align 4
  %36 = load i32, i32* @IRQ_TYPE_LEGACY, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @irq_type, align 4
  %40 = load i32, i32* @IRQ_TYPE_MSIX, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %180

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %47, %48
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @dma_alloc_coherent(%struct.device* %46, i64 %49, i64* %13, i32 %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %11, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %180

57:                                               ; preds = %45
  %58 = load i64, i64* %17, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @IS_ALIGNED(i64 %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i64 @PTR_ALIGN(i64 %66, i64 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %69, %70
  store i64 %71, i64* %16, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr i8, i8* %72, i64 %73
  store i8* %74, i8** %6, align 8
  br label %78

75:                                               ; preds = %60, %57
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i8*, i8** %12, align 8
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %75, %65
  %79 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %80 = load i32, i32* @PCI_ENDPOINT_TEST_LOWER_SRC_ADDR, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @lower_32_bits(i64 %81)
  %83 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %79, i32 %80, i32 %82)
  %84 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %85 = load i32, i32* @PCI_ENDPOINT_TEST_UPPER_SRC_ADDR, align 4
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @upper_32_bits(i64 %86)
  %88 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %84, i32 %85, i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @get_random_bytes(i8* %89, i64 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @crc32_le(i32 -1, i8* %92, i64 %93)
  store i64 %94, i64* %18, align 8
  %95 = load %struct.device*, %struct.device** %11, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %17, align 8
  %98 = add i64 %96, %97
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @dma_alloc_coherent(%struct.device* %95, i64 %98, i64* %15, i32 %99)
  store i8* %100, i8** %14, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %78
  %104 = load %struct.device*, %struct.device** %11, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

106:                                              ; preds = %78
  %107 = load i64, i64* %17, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @IS_ALIGNED(i64 %110, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %17, align 8
  %117 = call i64 @PTR_ALIGN(i64 %115, i64 %116)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %15, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %16, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i64, i64* %16, align 8
  %123 = getelementptr i8, i8* %121, i64 %122
  store i8* %123, i8** %7, align 8
  br label %127

124:                                              ; preds = %109, %106
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %9, align 8
  %126 = load i8*, i8** %14, align 8
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %124, %114
  %128 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %129 = load i32, i32* @PCI_ENDPOINT_TEST_LOWER_DST_ADDR, align 4
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @lower_32_bits(i64 %130)
  %132 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %128, i32 %129, i32 %131)
  %133 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %134 = load i32, i32* @PCI_ENDPOINT_TEST_UPPER_DST_ADDR, align 4
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @upper_32_bits(i64 %135)
  %137 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %133, i32 %134, i32 %136)
  %138 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %139 = load i32, i32* @PCI_ENDPOINT_TEST_SIZE, align 4
  %140 = load i64, i64* %4, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %138, i32 %139, i32 %141)
  %143 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %144 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_TYPE, align 4
  %145 = load i32, i32* @irq_type, align 4
  %146 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %143, i32 %144, i32 %145)
  %147 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %148 = load i32, i32* @PCI_ENDPOINT_TEST_IRQ_NUMBER, align 4
  %149 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %147, i32 %148, i32 1)
  %150 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %151 = load i32, i32* @PCI_ENDPOINT_TEST_COMMAND, align 4
  %152 = load i32, i32* @COMMAND_COPY, align 4
  %153 = call i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test* %150, i32 %151, i32 %152)
  %154 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %3, align 8
  %155 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %154, i32 0, i32 1
  %156 = call i32 @wait_for_completion(i32* %155)
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @crc32_le(i32 -1, i8* %157, i64 %158)
  store i64 %159, i64* %19, align 8
  %160 = load i64, i64* %19, align 8
  %161 = load i64, i64* %18, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.device*, %struct.device** %11, align 8
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* %17, align 8
  %168 = add i64 %166, %167
  %169 = load i8*, i8** %14, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @dma_free_coherent(%struct.device* %165, i64 %168, i8* %169, i64 %170)
  br label %172

172:                                              ; preds = %164, %103
  %173 = load %struct.device*, %struct.device** %11, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* %17, align 8
  %176 = add i64 %174, %175
  %177 = load i8*, i8** %12, align 8
  %178 = load i64, i64* %13, align 8
  %179 = call i32 @dma_free_coherent(%struct.device* %173, i64 %176, i8* %177, i64 %178)
  br label %180

180:                                              ; preds = %172, %54, %42, %33
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @PTR_ALIGN(i64, i64) #1

declare dso_local i32 @pci_endpoint_test_writel(%struct.pci_endpoint_test*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @get_random_bytes(i8*, i64) #1

declare dso_local i64 @crc32_le(i32, i8*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
