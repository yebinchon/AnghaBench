; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_ctrl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_ctrl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfp_ctrl_tx(%struct.nfp_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %6, i32 0, i32 0
  %8 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %9 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %8, i64 0
  store %struct.nfp_net_r_vector* %9, %struct.nfp_net_r_vector** %5, align 8
  %10 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %11 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @nfp_ctrl_tx_one(%struct.nfp_net* %10, %struct.nfp_net_r_vector* %11, %struct.sk_buff* %12, i32 0)
  ret i32 %13
}

declare dso_local i32 @nfp_ctrl_tx_one(%struct.nfp_net*, %struct.nfp_net_r_vector*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
