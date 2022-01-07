; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, i32, %struct.TYPE_4__*, %struct.gve_tx_ring* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gve_tx_ring = type { i32, i32, i32*, i32*, i64, %struct.TYPE_5__, i32, i8*, i64 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tx[%d]->bus=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*, i32)* @gve_tx_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_tx_alloc_ring(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gve_tx_ring*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %11 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %10, i32 0, i32 3
  %12 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %12, i64 %14
  store %struct.gve_tx_ring* %15, %struct.gve_tx_ring** %6, align 8
  %16 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %17 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %21 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %24 = call i32 @memset(%struct.gve_tx_ring* %23, i32 0, i32 56)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %31 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32* @vzalloc(i32 %35)
  %37 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %137

46:                                               ; preds = %2
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %53, i32 0, i32 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @dma_alloc_coherent(%struct.device* %50, i32 %52, i64* %54, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %61 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %128

65:                                               ; preds = %46
  %66 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %67 = call i32 @gve_assign_tx_qpl(%struct.gve_priv* %66)
  %68 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %72 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %72, i32 0, i32 5
  %74 = call i64 @gve_tx_fifo_init(%struct.gve_priv* %71, %struct.TYPE_5__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %116

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %80 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %79, i32 0, i32 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @dma_alloc_coherent(%struct.device* %78, i32 1, i64* %80, i32 %81)
  %83 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %84 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %85, i32 0, i32 7
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %111

90:                                               ; preds = %77
  %91 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %92 = load i32, i32* @drv, align 4
  %93 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %94 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %98 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @netif_dbg(%struct.gve_priv* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %96, i64 %99)
  %101 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %102 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @netdev_get_tx_queue(i32 %103, i32 %104)
  %106 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %107 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @gve_tx_add_to_block(%struct.gve_priv* %108, i32 %109)
  store i32 0, i32* %3, align 4
  br label %137

111:                                              ; preds = %89
  %112 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %113 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %114 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %113, i32 0, i32 5
  %115 = call i32 @gve_tx_fifo_release(%struct.gve_priv* %112, %struct.TYPE_5__* %114)
  br label %116

116:                                              ; preds = %111, %76
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %120 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %123 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dma_free_coherent(%struct.device* %117, i64 %118, i32* %121, i64 %124)
  %126 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %127 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %126, i32 0, i32 3
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %116, %64
  %129 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %130 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @vfree(i32* %131)
  %133 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %6, align 8
  %134 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %128, %90, %43
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @memset(%struct.gve_tx_ring*, i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @gve_assign_tx_qpl(%struct.gve_priv*) #1

declare dso_local i64 @gve_tx_fifo_init(%struct.gve_priv*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_dbg(%struct.gve_priv*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @gve_tx_add_to_block(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_tx_fifo_release(%struct.gve_priv*, %struct.TYPE_5__*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
