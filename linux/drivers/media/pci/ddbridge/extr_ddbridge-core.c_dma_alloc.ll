; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ddb_dma = type { i32, i32**, i32*, i32 }

@alt_dma = common dso_local global i64 0, align 8
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ddb_dma*, i32)* @dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_alloc(%struct.pci_dev* %0, %struct.ddb_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ddb_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.ddb_dma* %1, %struct.ddb_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %10 = icmp ne %struct.ddb_dma* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %135, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %16 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %138

19:                                               ; preds = %13
  %20 = load i64, i64* @alt_dma, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %19
  %23 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %24 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %29 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* %27, i32** %33, align 8
  %34 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %35 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %139

45:                                               ; preds = %22
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %49 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %56 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @dma_map_single(i32* %47, i32* %54, i32 %57, i32 %65)
  %67 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %68 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %76 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @dma_mapping_error(i32* %74, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %64
  %85 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %86 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %94 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %139

101:                                              ; preds = %64
  br label %134

102:                                              ; preds = %19
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %106 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %109 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32* @dma_alloc_coherent(i32* %104, i32 %107, i32* %113, i32 %114)
  %116 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %117 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* %115, i32** %121, align 8
  %122 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %123 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %122, i32 0, i32 1
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %102
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %139

133:                                              ; preds = %102
  br label %134

134:                                              ; preds = %133, %101
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %13

138:                                              ; preds = %13
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %130, %84, %42, %11
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
