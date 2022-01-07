; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, i64, %struct.bcmgenet_tx_ring* }
%struct.bcmgenet_tx_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.bcmgenet_priv*, i32 }

@DESC_INDEX = common dso_local global i32 0, align 4
@bcmgenet_tx_ring16_int_enable = common dso_local global i32 0, align 4
@bcmgenet_tx_ring16_int_disable = common dso_local global i32 0, align 4
@bcmgenet_tx_ring_int_enable = common dso_local global i32 0, align 4
@bcmgenet_tx_ring_int_disable = common dso_local global i32 0, align 4
@ENET_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@TDMA_PROD_INDEX = common dso_local global i32 0, align 4
@TDMA_CONS_INDEX = common dso_local global i32 0, align 4
@DMA_MBUF_DONE_THRESH = common dso_local global i32 0, align 4
@TDMA_FLOW_PERIOD = common dso_local global i32 0, align 4
@DMA_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@DMA_RING_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_START_ADDR = common dso_local global i32 0, align 4
@TDMA_READ_PTR = common dso_local global i32 0, align 4
@TDMA_WRITE_PTR = common dso_local global i32 0, align 4
@DMA_END_ADDR = common dso_local global i32 0, align 4
@bcmgenet_tx_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*, i32, i32, i32, i32)* @bcmgenet_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_init_tx_ring(%struct.bcmgenet_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bcmgenet_tx_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %14, i32 0, i32 2
  %16 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %16, i64 %18
  store %struct.bcmgenet_tx_ring* %19, %struct.bcmgenet_tx_ring** %11, align 8
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %21 = call i32 @WORDS_PER_BD(%struct.bcmgenet_priv* %20)
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %22, i32 0, i32 15
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %26 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %26, i32 0, i32 14
  store %struct.bcmgenet_priv* %25, %struct.bcmgenet_priv** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DESC_INDEX, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %5
  %35 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %36 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @bcmgenet_tx_ring16_int_enable, align 4
  %38 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @bcmgenet_tx_ring16_int_disable, align 4
  %41 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  br label %54

43:                                               ; preds = %5
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  %46 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %47 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @bcmgenet_tx_ring_int_enable, align 4
  %49 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %50 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @bcmgenet_tx_ring_int_disable, align 4
  %52 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %53 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %34
  %55 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %56 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %62 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %61, i32 0, i32 11
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %65 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %68 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %70 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %69, i32 0, i32 10
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %73 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %76 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %79 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %83 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %85 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %84, i32 0, i32 9
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @DESC_INDEX, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %54
  %90 = load i32, i32* @ENET_MAX_MTU_SIZE, align 4
  %91 = shl i32 %90, 16
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89, %54
  %93 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @TDMA_PROD_INDEX, align 4
  %96 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %93, i32 %94, i32 0, i32 %95)
  %97 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @TDMA_CONS_INDEX, align 4
  %100 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %97, i32 %98, i32 0, i32 %99)
  %101 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DMA_MBUF_DONE_THRESH, align 4
  %104 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %101, i32 %102, i32 1, i32 %103)
  %105 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @TDMA_FLOW_PERIOD, align 4
  %109 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @DMA_RING_SIZE_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* @RX_BUF_LENGTH, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DMA_RING_BUF_SIZE, align 4
  %118 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %110, i32 %111, i32 %116, i32 %117)
  %119 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = mul i32 %121, %122
  %124 = load i32, i32* @DMA_START_ADDR, align 4
  %125 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %119, i32 %120, i32 %123, i32 %124)
  %126 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul i32 %128, %129
  %131 = load i32, i32* @TDMA_READ_PTR, align 4
  %132 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %126, i32 %127, i32 %130, i32 %131)
  %133 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul i32 %135, %136
  %138 = load i32, i32* @TDMA_WRITE_PTR, align 4
  %139 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %133, i32 %134, i32 %137, i32 %138)
  %140 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = mul i32 %142, %143
  %145 = sub i32 %144, 1
  %146 = load i32, i32* @DMA_END_ADDR, align 4
  %147 = call i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv* %140, i32 %141, i32 %145, i32 %146)
  %148 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %149 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %11, align 8
  %152 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %151, i32 0, i32 8
  %153 = load i32, i32* @bcmgenet_tx_poll, align 4
  %154 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %155 = call i32 @netif_napi_add(i32 %150, i32* %152, i32 %153, i32 %154)
  ret void
}

declare dso_local i32 @WORDS_PER_BD(%struct.bcmgenet_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bcmgenet_tdma_ring_writel(%struct.bcmgenet_priv*, i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
