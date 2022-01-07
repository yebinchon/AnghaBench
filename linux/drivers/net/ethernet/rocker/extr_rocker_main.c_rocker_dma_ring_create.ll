; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_dma_ring_info = type { i64, i32, i32, i32*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ROCKER_DMA_DESC_CTRL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, i32, i64, %struct.rocker_dma_ring_info*)* @rocker_dma_ring_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_ring_create(%struct.rocker* %0, i32 %1, i64 %2, %struct.rocker_dma_ring_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rocker_dma_ring_info*, align 8
  %10 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.rocker_dma_ring_info* %3, %struct.rocker_dma_ring_info** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @rocker_dma_ring_size_fix(i64 %12)
  %14 = icmp ne i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %19 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %22 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %24 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %26 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %28 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.TYPE_3__* @kcalloc(i64 %29, i32 8, i32 %30)
  %32 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %33 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %32, i32 0, i32 4
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %35 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %118

41:                                               ; preds = %4
  %42 = load %struct.rocker*, %struct.rocker** %6, align 8
  %43 = getelementptr inbounds %struct.rocker, %struct.rocker* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %46 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %51 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %50, i32 0, i32 2
  %52 = call i32* @pci_alloc_consistent(i32 %44, i32 %49, i32* %51)
  %53 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %54 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %56 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %41
  %60 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %61 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %60, i32 0, i32 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @kfree(%struct.TYPE_3__* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %118

66:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %71 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %67
  %75 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %76 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %82 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %81, i32 0, i32 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32* %80, i32** %87, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.rocker*, %struct.rocker** %6, align 8
  %93 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %94 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DMA_DESC_CTRL(i32 %95)
  %97 = load i32, i32* @ROCKER_DMA_DESC_CTRL_RESET, align 4
  %98 = call i32 @rocker_write32(%struct.rocker* %92, i32 %96, i32 %97)
  %99 = load %struct.rocker*, %struct.rocker** %6, align 8
  %100 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %101 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DMA_DESC_ADDR(i32 %102)
  %104 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %105 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rocker_write64(%struct.rocker* %99, i32 %103, i32 %106)
  %108 = load %struct.rocker*, %struct.rocker** %6, align 8
  %109 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %110 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @DMA_DESC_SIZE(i32 %111)
  %113 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %9, align 8
  %114 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @rocker_write32(%struct.rocker* %108, i32 %112, i32 %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %91, %59, %38
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @rocker_dma_ring_size_fix(i64) #1

declare dso_local %struct.TYPE_3__* @kcalloc(i64, i32, i32) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @DMA_DESC_CTRL(i32) #1

declare dso_local i32 @rocker_write64(%struct.rocker*, i32, i32) #1

declare dso_local i32 @DMA_DESC_ADDR(i32) #1

declare dso_local i32 @DMA_DESC_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
