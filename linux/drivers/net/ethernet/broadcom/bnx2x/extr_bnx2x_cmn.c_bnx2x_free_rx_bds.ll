; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_rx_bds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_rx_bds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i32, %struct.sw_rx_bd*, %struct.bnx2x* }
%struct.sw_rx_bd = type { i32* }
%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NUM_RX_BD = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*)* @bnx2x_free_rx_bds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_free_rx_bds(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca %struct.bnx2x_fastpath*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw_rx_bd*, align 8
  %6 = alloca i32*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %2, align 8
  %7 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %7, i32 0, i32 2
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %10, i32 0, i32 1
  %12 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %11, align 8
  %13 = icmp eq %struct.sw_rx_bd* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NUM_RX_BD, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %21, i32 0, i32 1
  %23 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %23, i64 %25
  store %struct.sw_rx_bd* %26, %struct.sw_rx_bd** %5, align 8
  %27 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %5, align 8
  %28 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %51

33:                                               ; preds = %20
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %5, align 8
  %39 = load i32, i32* @mapping, align 4
  %40 = call i32 @dma_unmap_addr(%struct.sw_rx_bd* %38, i32 %39)
  %41 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32* %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.sw_rx_bd*, %struct.sw_rx_bd** %5, align 8
  %47 = getelementptr inbounds %struct.sw_rx_bd, %struct.sw_rx_bd* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @bnx2x_frag_free(%struct.bnx2x_fastpath* %48, i32* %49)
  br label %51

51:                                               ; preds = %33, %32
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %16

54:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_bd*, i32) #1

declare dso_local i32 @bnx2x_frag_free(%struct.bnx2x_fastpath*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
