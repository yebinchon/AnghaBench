; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ddb_dma = type { i32, i32**, i32*, i32 }

@alt_dma = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.ddb_dma*, i32)* @dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_free(%struct.pci_dev* %0, %struct.ddb_dma* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ddb_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ddb_dma* %1, %struct.ddb_dma** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %9 = icmp ne %struct.ddb_dma* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %98

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %95, %11
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %15 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %12
  %19 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %20 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %94

27:                                               ; preds = %18
  %28 = load i64, i64* @alt_dma, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %34 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %41 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @dma_unmap_single(i32* %32, i32 %39, i32 %42, i32 %50)
  %52 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %53 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %61 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  br label %87

66:                                               ; preds = %27
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %70 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %73 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %80 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dma_free_coherent(i32* %68, i32 %71, i32* %78, i32 %85)
  br label %87

87:                                               ; preds = %66, %49
  %88 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %89 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %18
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %12

98:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
