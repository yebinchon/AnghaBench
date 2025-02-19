; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c___bnxt_xmit_xdp_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c___bnxt_xmit_xdp_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tx_ring_info = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.bnxt_sw_tx_bd = type { %struct.xdp_frame*, i32 }

@XDP_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tx_ring_info*, i32, i32, %struct.xdp_frame*)* @__bnxt_xmit_xdp_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_xmit_xdp_redirect(%struct.bnxt* %0, %struct.bnxt_tx_ring_info* %1, i32 %2, i32 %3, %struct.xdp_frame* %4) #0 {
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdp_frame*, align 8
  %11 = alloca %struct.bnxt_sw_tx_bd*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tx_ring_info* %1, %struct.bnxt_tx_ring_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.xdp_frame* %4, %struct.xdp_frame** %10, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %13 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.bnxt_sw_tx_bd* @bnxt_xmit_bd(%struct.bnxt* %12, %struct.bnxt_tx_ring_info* %13, i32 %14, i32 %15)
  store %struct.bnxt_sw_tx_bd* %16, %struct.bnxt_sw_tx_bd** %11, align 8
  %17 = load i32, i32* @XDP_REDIRECT, align 4
  %18 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %11, align 8
  %19 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %21 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %11, align 8
  %22 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %21, i32 0, i32 0
  store %struct.xdp_frame* %20, %struct.xdp_frame** %22, align 8
  %23 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dma_unmap_addr_set(%struct.bnxt_sw_tx_bd* %23, i32 %24, i32 %25)
  %27 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dma_unmap_len_set(%struct.bnxt_sw_tx_bd* %27, i32 %28, i32 0)
  ret void
}

declare dso_local %struct.bnxt_sw_tx_bd* @bnxt_xmit_bd(%struct.bnxt*, %struct.bnxt_tx_ring_info*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bnxt_sw_tx_bd*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.bnxt_sw_tx_bd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
