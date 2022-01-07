; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_dma_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_dma_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32 }

@tc = common dso_local global i32 0, align 4
@SF_DMA_MODE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_dma_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_dma_operation_mode(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %1
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @tc, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @tc, align 4
  store i32 %61, i32* %8, align 4
  br label %90

62:                                               ; preds = %46
  %63 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %64 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69, %62
  %77 = load i8*, i8** @SF_DMA_MODE, align 8
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i8*, i8** @SF_DMA_MODE, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i8*, i8** @SF_DMA_MODE, align 8
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %83 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %89

85:                                               ; preds = %69
  %86 = load i32, i32* @tc, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** @SF_DMA_MODE, align 8
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %76
  br label %90

90:                                               ; preds = %89, %59
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %124, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %97 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  %106 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @stmmac_dma_rx_mode(%struct.stmmac_priv* %106, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %120 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @stmmac_set_dma_bfsize(%struct.stmmac_priv* %115, i32 %118, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %95
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %91

127:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %152, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %128
  %133 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %134 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %10, align 4
  %143 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %144 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %145 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @stmmac_dma_tx_mode(%struct.stmmac_priv* %143, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %132
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %128

155:                                              ; preds = %128
  ret void
}

declare dso_local i32 @stmmac_dma_rx_mode(%struct.stmmac_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stmmac_set_dma_bfsize(%struct.stmmac_priv*, i32, i32, i32) #1

declare dso_local i32 @stmmac_dma_tx_mode(%struct.stmmac_priv*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
