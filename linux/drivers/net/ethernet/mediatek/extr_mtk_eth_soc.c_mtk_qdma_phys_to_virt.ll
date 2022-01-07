; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_qdma_phys_to_virt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_qdma_phys_to_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tx_ring = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mtk_tx_ring*, i32)* @mtk_qdma_phys_to_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_tx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.mtk_tx_ring* %0, %struct.mtk_tx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %9, i64 %15
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
