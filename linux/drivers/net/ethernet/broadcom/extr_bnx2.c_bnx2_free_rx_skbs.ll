; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_sw_bd* }
%struct.bnx2_sw_bd = type { i32* }

@mapping = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_free_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_rx_skbs(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca %struct.bnx2_rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2_sw_bd*, align 8
  %8 = alloca i32*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %85, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %88

15:                                               ; preds = %9
  %16 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 5
  %18 = load %struct.bnx2_napi*, %struct.bnx2_napi** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %18, i64 %20
  store %struct.bnx2_napi* %21, %struct.bnx2_napi** %4, align 8
  %22 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %22, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %23, %struct.bnx2_rx_ring_info** %5, align 8
  %24 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %24, i32 0, i32 0
  %26 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %25, align 8
  %27 = icmp ne %struct.bnx2_sw_bd* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %88

29:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %37, i32 0, i32 0
  %39 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %39, i64 %41
  store %struct.bnx2_sw_bd* %42, %struct.bnx2_sw_bd** %7, align 8
  %43 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %7, align 8
  %44 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %66

49:                                               ; preds = %36
  %50 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %7, align 8
  %55 = load i32, i32* @mapping, align 4
  %56 = call i32 @dma_unmap_addr(%struct.bnx2_sw_bd* %54, i32 %55)
  %57 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %58 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @dma_unmap_single(i32* %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %7, align 8
  %63 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @kfree(i32* %64)
  br label %66

66:                                               ; preds = %49, %48
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %30

69:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %73 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bnx2_free_rx_page(%struct.bnx2* %77, %struct.bnx2_rx_ring_info* %78, i32 %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %9

88:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_bd*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bnx2_free_rx_page(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
