; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i64, i32*, i64, i32*, i64, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RING_DESC_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_setup_tx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %5, i32 0, i32 2
  %7 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %8 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %7, i64 0
  store %struct.jme_ring* %8, %struct.jme_ring** %4, align 8
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @TX_RING_ALLOC_SIZE(i32 %15)
  %17 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %18 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i64 @dma_alloc_coherent(i32* %12, i32 %16, i64* %18, i32 %19)
  %21 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %22 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %24 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %89

28:                                               ; preds = %1
  %29 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %30 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @RING_DESC_ALIGN, align 4
  %33 = call i64 @ALIGN(i64 %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %37 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %39 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @RING_DESC_ALIGN, align 4
  %42 = call i64 @ALIGN(i64 %40, i32 %41)
  %43 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %44 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %46 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %48 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %47, i32 0, i32 6
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %51 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %50, i32 0, i32 5
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @atomic_set(i32* %51, i32 %54)
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i32* @kcalloc(i32 %58, i32 4, i32 %59)
  %61 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %62 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %64 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %28
  br label %73

72:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %100

73:                                               ; preds = %71
  %74 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @TX_RING_ALLOC_SIZE(i32 %80)
  %82 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %83 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %86 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @dma_free_coherent(i32* %77, i32 %81, i64 %84, i64 %87)
  br label %89

89:                                               ; preds = %73, %27
  %90 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %91 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  %92 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %93 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %95 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %97 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %89, %72
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @TX_RING_ALLOC_SIZE(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
