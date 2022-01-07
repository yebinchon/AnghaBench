; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dma_sync_dev_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dma_sync_dev_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i64, i32 }

@NFP_NET_RX_BUF_NON_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, i32)* @nfp_net_dma_sync_dev_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_dma_sync_dev_rx(%struct.nfp_net_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net_dp*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFP_NET_RX_BUF_NON_DATA, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_sync_single_for_device(i32 %7, i32 %8, i64 %13, i32 %16)
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
