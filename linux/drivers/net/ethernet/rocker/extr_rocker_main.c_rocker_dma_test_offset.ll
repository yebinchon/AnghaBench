; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_test_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_test_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_wait = type { i32 }

@ROCKER_TEST_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TEST_DMA_ADDR = common dso_local global i32 0, align 4
@TEST_DMA_SIZE = common dso_local global i32 0, align 4
@ROCKER_TEST_DMA_FILL_PATTERN = common dso_local global i32 0, align 4
@ROCKER_TEST_DMA_CTRL_FILL = common dso_local global i32 0, align 4
@ROCKER_TEST_DMA_CTRL_CLEAR = common dso_local global i32 0, align 4
@ROCKER_TEST_DMA_CTRL_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_wait*, i32)* @rocker_dma_test_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_test_offset(%struct.rocker* %0, %struct.rocker_wait* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca %struct.rocker_wait*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %5, align 8
  store %struct.rocker_wait* %1, %struct.rocker_wait** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.rocker*, %struct.rocker** %5, align 8
  %16 = getelementptr inbounds %struct.rocker, %struct.rocker* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %19 = mul nsw i32 %18, 2
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @GFP_DMA, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @kzalloc(i32 %21, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %138

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %11, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %43 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @pci_map_single(%struct.pci_dev* %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %134

52:                                               ; preds = %31
  %53 = load %struct.rocker*, %struct.rocker** %5, align 8
  %54 = load i32, i32* @TEST_DMA_ADDR, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @rocker_write64(%struct.rocker* %53, i32 %54, i32 %55)
  %57 = load %struct.rocker*, %struct.rocker** %5, align 8
  %58 = load i32, i32* @TEST_DMA_SIZE, align 4
  %59 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %60 = call i32 @rocker_write32(%struct.rocker* %57, i32 %58, i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* @ROCKER_TEST_DMA_FILL_PATTERN, align 4
  %63 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %64 = call i32 @memset(i8* %61, i32 %62, i32 %63)
  %65 = load %struct.rocker*, %struct.rocker** %5, align 8
  %66 = load %struct.rocker_wait*, %struct.rocker_wait** %6, align 8
  %67 = load i32, i32* @ROCKER_TEST_DMA_CTRL_FILL, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %72 = call i32 @rocker_dma_test_one(%struct.rocker* %65, %struct.rocker_wait* %66, i32 %67, i32 %68, i8* %69, i8* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %128

76:                                               ; preds = %52
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %79 = call i32 @memset(i8* %77, i32 0, i32 %78)
  %80 = load %struct.rocker*, %struct.rocker** %5, align 8
  %81 = load %struct.rocker_wait*, %struct.rocker_wait** %6, align 8
  %82 = load i32, i32* @ROCKER_TEST_DMA_CTRL_CLEAR, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %87 = call i32 @rocker_dma_test_one(%struct.rocker* %80, %struct.rocker_wait* %81, i32 %82, i32 %83, i8* %84, i8* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %128

91:                                               ; preds = %76
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %94 = call i32 @prandom_bytes(i8* %92, i32 %93)
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %112, %91
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = xor i32 %105, -1
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 %107, i8* %111, align 1
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load %struct.rocker*, %struct.rocker** %5, align 8
  %117 = load %struct.rocker_wait*, %struct.rocker_wait** %6, align 8
  %118 = load i32, i32* @ROCKER_TEST_DMA_CTRL_INVERT, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %123 = call i32 @rocker_dma_test_one(%struct.rocker* %116, %struct.rocker_wait* %117, i32 %118, i32 %119, i8* %120, i8* %121, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %128

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %126, %90, %75
  %129 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @ROCKER_TEST_DMA_BUF_SIZE, align 4
  %132 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %133 = call i32 @pci_unmap_single(%struct.pci_dev* %129, i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %49
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %28
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @rocker_write64(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rocker_dma_test_one(%struct.rocker*, %struct.rocker_wait*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @prandom_bytes(i8*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
