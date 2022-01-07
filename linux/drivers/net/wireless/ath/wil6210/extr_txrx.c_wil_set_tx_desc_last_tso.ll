; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_set_tx_desc_last_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_set_tx_desc_last_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wil_tso_type_lst = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_tx_desc*)* @wil_set_tx_desc_last_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_set_tx_desc_last_tso(%struct.vring_tx_desc* %0) #0 {
  %2 = alloca %struct.vring_tx_desc*, align 8
  store %struct.vring_tx_desc* %0, %struct.vring_tx_desc** %2, align 8
  %3 = load i32, i32* @wil_tso_type_lst, align 4
  %4 = load i32, i32* @DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS, align 4
  %5 = shl i32 %3, %4
  %6 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %2, align 8
  %7 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load volatile i32, i32* %8, align 4
  %10 = or i32 %9, %5
  store volatile i32 %10, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
