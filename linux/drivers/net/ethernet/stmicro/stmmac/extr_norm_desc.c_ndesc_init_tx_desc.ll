; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_init_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_init_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }

@TDES0_OWN = common dso_local global i32 0, align 4
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_desc*, i32, i32)* @ndesc_init_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndesc_init_tx_desc(%struct.dma_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dma_desc* %0, %struct.dma_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @TDES0_OWN, align 4
  %8 = xor i32 %7, -1
  %9 = call i32 @cpu_to_le32(i32 %8)
  %10 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %11 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %19 = call i32 @ndesc_tx_set_on_chain(%struct.dma_desc* %18)
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ndesc_end_tx_desc_on_ring(%struct.dma_desc* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ndesc_tx_set_on_chain(%struct.dma_desc*) #1

declare dso_local i32 @ndesc_end_tx_desc_on_ring(%struct.dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
