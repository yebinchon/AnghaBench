; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnxt_ring_mem_info = type { i32, i64, i32, i32**, i64, i32*, i32, i32**, i32* }

@BNXT_RMEM_USE_FULL_PAGE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_ring_mem_info*)* @bnxt_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_ring(%struct.bnxt* %0, %struct.bnxt_ring_mem_info* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_ring_mem_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_ring_mem_info* %1, %struct.bnxt_ring_mem_info** %4, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %54, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %11
  %18 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %18, i32 0, i32 7
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %54

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %33, i32 0, i32 7
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_free_coherent(i32* %29, i64 %32, i32* %39, i32 %46)
  %48 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %48, i32 0, i32 7
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %27, %26
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %11

57:                                               ; preds = %11
  %58 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %59 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %7, align 8
  %68 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %69 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BNXT_RMEM_USE_FULL_PAGE_FLAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %76 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %74, %62
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %83 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %86 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32* %80, i64 %81, i32* %84, i32 %87)
  %89 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %90 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %89, i32 0, i32 5
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %78, %57
  %92 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %93 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %98 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %104 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @vfree(i32* %106)
  %108 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %4, align 8
  %109 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %108, i32 0, i32 3
  %110 = load i32**, i32*** %109, align 8
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %102, %96, %91
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
