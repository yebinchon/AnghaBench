; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, i32, %struct.TYPE_5__*, %struct.gve_rx_ring* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gve_rx_ring = type { i32, %struct.TYPE_8__, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"freed rx ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*, i32)* @gve_rx_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_rx_free_ring(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_rx_ring*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %10 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %9, i32 0, i32 3
  %11 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %11, i64 %13
  store %struct.gve_rx_ring* %14, %struct.gve_rx_ring** %5, align 8
  %15 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %16 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @gve_rx_remove_from_block(%struct.gve_priv* %19, i32 %20)
  %22 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %34 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(%struct.device* %27, i64 %28, i32* %32, i32 %36)
  %38 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %43 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(%struct.device* %41, i64 4, i32* %44, i32 %47)
  %49 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %52 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %53 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gve_unassign_qpl(%struct.gve_priv* %51, i32 %57)
  %59 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %60 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %61, align 8
  %62 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kvfree(i32 %65)
  %67 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  store i64 %73, i64* %7, align 8
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %77 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %81 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dma_free_coherent(%struct.device* %74, i64 %75, i32* %79, i32 %83)
  %85 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %86 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %89 = load i32, i32* @drv, align 4
  %90 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %91 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @netif_dbg(%struct.gve_priv* %88, i32 %89, i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %93)
  ret void
}

declare dso_local i32 @gve_rx_remove_from_block(%struct.gve_priv*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @gve_unassign_qpl(%struct.gve_priv*, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @netif_dbg(%struct.gve_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
