; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_set_dma_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_set_dma_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64, i64, i64)* @stmmac_set_dma_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_set_dma_operation_mode(%struct.stmmac_priv* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %4
  %56 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %57 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %55, %4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %80 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %81 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @stmmac_dma_rx_mode(%struct.stmmac_priv* %79, i32 %82, i64 %83, i64 %84, i32 %85, i32 %86)
  %88 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %89 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %90 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @stmmac_dma_tx_mode(%struct.stmmac_priv* %88, i32 %91, i64 %92, i64 %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @stmmac_dma_rx_mode(%struct.stmmac_priv*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @stmmac_dma_tx_mode(%struct.stmmac_priv*, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
