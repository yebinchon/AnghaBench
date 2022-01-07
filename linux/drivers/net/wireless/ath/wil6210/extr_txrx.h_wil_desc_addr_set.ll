; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.h_wil_desc_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.h_wil_desc_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_ring_dma_addr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil_ring_dma_addr*, i32)* @wil_desc_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_desc_addr_set(%struct.wil_ring_dma_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.wil_ring_dma_addr*, align 8
  %4 = alloca i32, align 4
  store %struct.wil_ring_dma_addr* %0, %struct.wil_ring_dma_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @lower_32_bits(i32 %5)
  %7 = call i32 @cpu_to_le32(i32 %6)
  %8 = load %struct.wil_ring_dma_addr*, %struct.wil_ring_dma_addr** %3, align 8
  %9 = getelementptr inbounds %struct.wil_ring_dma_addr, %struct.wil_ring_dma_addr* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @upper_32_bits(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = load %struct.wil_ring_dma_addr*, %struct.wil_ring_dma_addr** %3, align 8
  %15 = getelementptr inbounds %struct.wil_ring_dma_addr, %struct.wil_ring_dma_addr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
