; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_tx_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.TYPE_4__*, %struct.gve_tx_ring* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gve_tx_ring = type { i32, i32*, i32*, i32, %struct.TYPE_6__, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"freed tx queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*, i32)* @gve_tx_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_tx_free_ring(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_tx_ring*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %10 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %9, i32 0, i32 2
  %11 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %11, i64 %13
  store %struct.gve_tx_ring* %14, %struct.gve_tx_ring** %5, align 8
  %15 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %16 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @gve_tx_remove_from_block(%struct.gve_priv* %19, i32 %20)
  %22 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %27 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %28 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gve_clean_tx_done(%struct.gve_priv* %26, %struct.gve_tx_ring* %27, i32 %30, i32 0)
  %32 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @netdev_tx_reset_queue(i32 %34)
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %38 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(%struct.device* %36, i64 4, i32* %39, i32 %42)
  %44 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %45 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %47 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %47, i32 0, i32 4
  %49 = call i32 @gve_tx_fifo_release(%struct.gve_priv* %46, %struct.TYPE_6__* %48)
  %50 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %51 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %52 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gve_unassign_qpl(%struct.gve_priv* %50, i32 %56)
  %58 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %59 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  store i64 %63, i64* %7, align 8
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %67 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(%struct.device* %64, i64 %65, i32* %68, i32 %71)
  %73 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @vfree(i32* %77)
  %79 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %5, align 8
  %80 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %82 = load i32, i32* @drv, align 4
  %83 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %84 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @netif_dbg(%struct.gve_priv* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %86)
  ret void
}

declare dso_local i32 @gve_tx_remove_from_block(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_clean_tx_done(%struct.gve_priv*, %struct.gve_tx_ring*, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @gve_tx_fifo_release(%struct.gve_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @gve_unassign_qpl(%struct.gve_priv*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @netif_dbg(%struct.gve_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
