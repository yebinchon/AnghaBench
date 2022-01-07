; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_ctrl_tx(%struct.nfp_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 0
  %9 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %10 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %9, i64 0
  store %struct.nfp_net_r_vector* %10, %struct.nfp_net_r_vector** %5, align 8
  %11 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @nfp_ctrl_tx_one(%struct.nfp_net* %14, %struct.nfp_net_r_vector* %15, %struct.sk_buff* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %19 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nfp_ctrl_tx_one(%struct.nfp_net*, %struct.nfp_net_r_vector*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
