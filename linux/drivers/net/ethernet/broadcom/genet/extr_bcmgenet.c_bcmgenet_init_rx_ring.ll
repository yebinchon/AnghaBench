; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, i64, %struct.bcmgenet_rx_ring* }
%struct.bcmgenet_rx_ring = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.bcmgenet_priv* }

@DESC_INDEX = common dso_local global i32 0, align 4
@bcmgenet_rx_ring16_int_enable = common dso_local global i32 0, align 4
@bcmgenet_rx_ring16_int_disable = common dso_local global i32 0, align 4
@bcmgenet_rx_ring_int_enable = common dso_local global i32 0, align 4
@bcmgenet_rx_ring_int_disable = common dso_local global i32 0, align 4
@bcmgenet_dim_work = common dso_local global i32 0, align 4
@bcmgenet_rx_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@RDMA_PROD_INDEX = common dso_local global i32 0, align 4
@RDMA_CONS_INDEX = common dso_local global i32 0, align 4
@DMA_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@DMA_RING_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FC_THRESH_LO = common dso_local global i32 0, align 4
@DMA_XOFF_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@DMA_FC_THRESH_HI = common dso_local global i32 0, align 4
@RDMA_XON_XOFF_THRESH = common dso_local global i32 0, align 4
@DMA_START_ADDR = common dso_local global i32 0, align 4
@RDMA_READ_PTR = common dso_local global i32 0, align 4
@RDMA_WRITE_PTR = common dso_local global i32 0, align 4
@DMA_END_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*, i32, i32, i32, i32)* @bcmgenet_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_init_rx_ring(%struct.bcmgenet_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcmgenet_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcmgenet_rx_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %15, i32 0, i32 2
  %17 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %17, i64 %19
  store %struct.bcmgenet_rx_ring* %20, %struct.bcmgenet_rx_ring** %12, align 8
  %21 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %22 = call i32 @WORDS_PER_BD(%struct.bcmgenet_priv* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %24 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %25 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %24, i32 0, i32 10
  store %struct.bcmgenet_priv* %23, %struct.bcmgenet_priv** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %28 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DESC_INDEX, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load i32, i32* @bcmgenet_rx_ring16_int_enable, align 4
  %34 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %35 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @bcmgenet_rx_ring16_int_disable, align 4
  %37 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %38 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  br label %46

39:                                               ; preds = %5
  %40 = load i32, i32* @bcmgenet_rx_ring_int_enable, align 4
  %41 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @bcmgenet_rx_ring_int_disable, align 4
  %44 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %45 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %48 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %54 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %53, i32 0, i32 7
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %57 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %59 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %62 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %65 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub i32 %66, 1
  %68 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %69 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %71 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %72 = call i32 @bcmgenet_alloc_rx_buffers(%struct.bcmgenet_priv* %70, %struct.bcmgenet_rx_ring* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %46
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %147

77:                                               ; preds = %46
  %78 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %79 = load i32, i32* @bcmgenet_dim_work, align 4
  %80 = call i32 @bcmgenet_init_dim(%struct.bcmgenet_rx_ring* %78, i32 %79)
  %81 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %82 = call i32 @bcmgenet_init_rx_coalesce(%struct.bcmgenet_rx_ring* %81)
  %83 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %84 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %12, align 8
  %87 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %86, i32 0, i32 5
  %88 = load i32, i32* @bcmgenet_rx_poll, align 4
  %89 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %90 = call i32 @netif_napi_add(i32 %85, i32* %87, i32 %88, i32 %89)
  %91 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RDMA_PROD_INDEX, align 4
  %94 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %91, i32 %92, i32 0, i32 %93)
  %95 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @RDMA_CONS_INDEX, align 4
  %98 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %95, i32 %96, i32 0, i32 %97)
  %99 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @DMA_RING_SIZE_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* @RX_BUF_LENGTH, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @DMA_RING_BUF_SIZE, align 4
  %107 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %99, i32 %100, i32 %105, i32 %106)
  %108 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @DMA_FC_THRESH_LO, align 4
  %111 = load i32, i32* @DMA_XOFF_THRESHOLD_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @DMA_FC_THRESH_HI, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @RDMA_XON_XOFF_THRESH, align 4
  %116 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %108, i32 %109, i32 %114, i32 %115)
  %117 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %13, align 4
  %121 = mul i32 %119, %120
  %122 = load i32, i32* @DMA_START_ADDR, align 4
  %123 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %117, i32 %118, i32 %121, i32 %122)
  %124 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %13, align 4
  %128 = mul i32 %126, %127
  %129 = load i32, i32* @RDMA_READ_PTR, align 4
  %130 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %124, i32 %125, i32 %128, i32 %129)
  %131 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* @RDMA_WRITE_PTR, align 4
  %137 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %131, i32 %132, i32 %135, i32 %136)
  %138 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul i32 %140, %141
  %143 = sub i32 %142, 1
  %144 = load i32, i32* @DMA_END_ADDR, align 4
  %145 = call i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv* %138, i32 %139, i32 %143, i32 %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %77, %75
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @WORDS_PER_BD(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_alloc_rx_buffers(%struct.bcmgenet_priv*, %struct.bcmgenet_rx_ring*) #1

declare dso_local i32 @bcmgenet_init_dim(%struct.bcmgenet_rx_ring*, i32) #1

declare dso_local i32 @bcmgenet_init_rx_coalesce(%struct.bcmgenet_rx_ring*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @bcmgenet_rdma_ring_writel(%struct.bcmgenet_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
