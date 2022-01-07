; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tpa_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tpa_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { i32, %struct.bnx2x_agg_info* }
%struct.bnx2x_agg_info = type { i64, %struct.sw_rx_bd }
%struct.sw_rx_bd = type { i32* }

@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tpa bin %d empty on free\0A\00", align 1
@BNX2X_TPA_START = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, i32)* @bnx2x_free_tpa_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_free_tpa_pool(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fastpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_agg_info*, align 8
  %9 = alloca %struct.sw_rx_bd*, align 8
  %10 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %58, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %16, i32 0, i32 1
  %18 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %18, i64 %20
  store %struct.bnx2x_agg_info* %21, %struct.bnx2x_agg_info** %8, align 8
  %22 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %8, align 8
  %23 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %22, i32 0, i32 1
  store %struct.sw_rx_bd* %23, %struct.sw_rx_bd** %9, align 8
  %24 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %9, align 8
  %25 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %58

33:                                               ; preds = %15
  %34 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %8, align 8
  %35 = getelementptr inbounds %struct.bnx2x_agg_info, %struct.bnx2x_agg_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BNX2X_TPA_START, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %9, align 8
  %45 = load i32, i32* @mapping, align 4
  %46 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %44, i32 %45)
  %47 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %48 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_unmap_single(i32* %43, i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %33
  %53 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @bnx2x_frag_free(%struct.bnx2x_fastpath* %53, i32* %54)
  %56 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %9, align 8
  %57 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %52, %29
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %11

61:                                               ; preds = %11
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_bd*, i32) #1

declare dso_local i32 @bnx2x_frag_free(%struct.bnx2x_fastpath*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
