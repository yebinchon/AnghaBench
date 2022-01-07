; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htc_tx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_htc_tx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_ce_pipe*)* @ath10k_pci_htc_tx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_htc_tx_cb(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %6 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %6, i32 0, i32 0
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %3, align 8
  %9 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %4)
  br label %10

10:                                               ; preds = %19, %18, %1
  %11 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %12 = bitcast %struct.sk_buff** %5 to i8**
  %13 = call i64 @ath10k_ce_completed_send_next(%struct.ath10k_ce_pipe* %11, i8** %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %10

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %4, %struct.sk_buff* %20)
  br label %10

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %26, %22
  %24 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %4)
  store %struct.sk_buff* %24, %struct.sk_buff** %5, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @ath10k_htc_tx_completion_handler(%struct.ath10k* %27, %struct.sk_buff* %28)
  br label %23

30:                                               ; preds = %23
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @ath10k_ce_completed_send_next(%struct.ath10k_ce_pipe*, i8**) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @ath10k_htc_tx_completion_handler(%struct.ath10k*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
