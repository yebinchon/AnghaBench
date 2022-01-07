; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htt_tx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htt_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_ce_pipe*)* @ath10k_pci_htt_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_htt_tx_cb(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %5 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %6 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %5, i32 0, i32 0
  %7 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  store %struct.ath10k* %7, %struct.ath10k** %3, align 8
  br label %8

8:                                                ; preds = %17, %16, %1
  %9 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %10 = bitcast %struct.sk_buff** %4 to i8**
  %11 = call i64 @ath10k_ce_completed_send_next(%struct.ath10k_ce_pipe* %9, i8** %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %8

17:                                               ; preds = %13
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_2__* @ATH10K_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %20, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @ath10k_htt_hif_tx_complete(%struct.ath10k* %30, %struct.sk_buff* %31)
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i64 @ath10k_ce_completed_send_next(%struct.ath10k_ce_pipe*, i8**) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_hif_tx_complete(%struct.ath10k*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
