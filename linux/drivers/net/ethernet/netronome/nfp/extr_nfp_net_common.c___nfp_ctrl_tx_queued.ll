; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_ctrl_tx_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_ctrl_tx_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_r_vector = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_r_vector*)* @__nfp_ctrl_tx_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfp_ctrl_tx_queued(%struct.nfp_net_r_vector* %0) #0 {
  %2 = alloca %struct.nfp_net_r_vector*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net_r_vector* %0, %struct.nfp_net_r_vector** %2, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %5, i32 0, i32 1
  %7 = call %struct.sk_buff* @__skb_dequeue(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i64 @nfp_ctrl_tx_one(i32 %12, %struct.nfp_net_r_vector* %13, %struct.sk_buff* %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %19

18:                                               ; preds = %9
  br label %4

19:                                               ; preds = %17, %4
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i64 @nfp_ctrl_tx_one(i32, %struct.nfp_net_r_vector*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
