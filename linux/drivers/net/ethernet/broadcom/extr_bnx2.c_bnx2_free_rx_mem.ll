; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, %struct.TYPE_2__*, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info }
%struct.bnx2_rx_ring_info = type { i32*, i32**, i32*, i32*, i32**, i32* }

@RXBD_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_free_rx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_rx_mem(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca %struct.bnx2_rx_ring_info*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %128, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %131

13:                                               ; preds = %7
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 4
  %16 = load %struct.bnx2_napi*, %struct.bnx2_napi** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %16, i64 %18
  store %struct.bnx2_napi* %19, %struct.bnx2_napi** %4, align 8
  %20 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %20, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %21, %struct.bnx2_rx_ring_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %65, %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %29, i32 0, i32 4
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %28
  %38 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* @RXBD_RING_SIZE, align 4
  %43 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dma_free_coherent(i32* %41, i32 %42, i32* %49, i32 %56)
  br label %58

58:                                               ; preds = %37, %28
  %59 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %59, i32 0, i32 4
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %70 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @vfree(i32* %71)
  %73 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %118, %68
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %75
  %82 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %81
  %91 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %92 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* @RXBD_RING_SIZE, align 4
  %96 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %97 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %104 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dma_free_coherent(i32* %94, i32 %95, i32* %102, i32 %109)
  br label %111

111:                                              ; preds = %90, %81
  %112 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %113 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %75

121:                                              ; preds = %75
  %122 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %123 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @vfree(i32* %124)
  %126 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %127 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %7

131:                                              ; preds = %7
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
