; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_free_rx_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_free_rx_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_fd = type { i32 }
%struct.dpaa2_sg_entry = type { i32 }

@dpaa2_fd_single = common dso_local global i64 0, align 8
@dpaa2_fd_sg = common dso_local global i64 0, align 8
@DPAA2_ETH_MAX_SG_ENTRIES = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*, %struct.dpaa2_fd*, i8*)* @free_rx_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_fd(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_fd* %1, i8* %2) #0 {
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca %struct.dpaa2_fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dpaa2_sg_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store %struct.dpaa2_fd* %1, %struct.dpaa2_fd** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %14 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %5, align 8
  %20 = call i32 @dpaa2_fd_get_addr(%struct.dpaa2_fd* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %5, align 8
  %22 = call i64 @dpaa2_fd_get_format(%struct.dpaa2_fd* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @dpaa2_fd_single, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %75

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @dpaa2_fd_sg, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %79

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %5, align 8
  %36 = call i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %34, i64 %37
  %39 = bitcast i8* %38 to %struct.dpaa2_sg_entry*
  store %struct.dpaa2_sg_entry* %39, %struct.dpaa2_sg_entry** %10, align 8
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %71, %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @DPAA2_ETH_MAX_SG_ENTRIES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %45, i64 %47
  %49 = call i32 @dpaa2_sg_get_addr(%struct.dpaa2_sg_entry* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %51 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @dpaa2_iova_to_virt(i32 %52, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %58 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %59 = call i32 @dma_unmap_page(%struct.device* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = call i32 @free_pages(i64 %61, i32 0)
  %63 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %63, i64 %65
  %67 = call i64 @dpaa2_sg_is_final(%struct.dpaa2_sg_entry* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %44
  br label %74

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %40

74:                                               ; preds = %69, %40
  br label %75

75:                                               ; preds = %74, %26
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = call i32 @free_pages(i64 %77, i32 0)
  br label %79

79:                                               ; preds = %75, %31
  ret void
}

declare dso_local i32 @dpaa2_fd_get_addr(%struct.dpaa2_fd*) #1

declare dso_local i64 @dpaa2_fd_get_format(%struct.dpaa2_fd*) #1

declare dso_local i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd*) #1

declare dso_local i32 @dpaa2_sg_get_addr(%struct.dpaa2_sg_entry*) #1

declare dso_local i8* @dpaa2_iova_to_virt(i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @dpaa2_sg_is_final(%struct.dpaa2_sg_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
