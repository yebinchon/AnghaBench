; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_r_vector = type { %struct.nfp_net*, %struct.nfp_net_rx_ring* }
%struct.nfp_net = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_rx_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_r_vector*)* @nfp_ctrl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ctrl_rx(%struct.nfp_net_r_vector* %0) #0 {
  %2 = alloca %struct.nfp_net_r_vector*, align 8
  %3 = alloca %struct.nfp_net_rx_ring*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_net_dp*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_net_r_vector* %0, %struct.nfp_net_r_vector** %2, align 8
  %7 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %7, i32 0, i32 1
  %9 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %8, align 8
  store %struct.nfp_net_rx_ring* %9, %struct.nfp_net_rx_ring** %3, align 8
  %10 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %10, i32 0, i32 0
  %12 = load %struct.nfp_net*, %struct.nfp_net** %11, align 8
  store %struct.nfp_net* %12, %struct.nfp_net** %4, align 8
  %13 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %13, i32 0, i32 0
  store %struct.nfp_net_dp* %14, %struct.nfp_net_dp** %5, align 8
  store i32 512, i32* %6, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %17 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %18 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %2, align 8
  %19 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %20 = call i64 @nfp_ctrl_rx_one(%struct.nfp_net* %16, %struct.nfp_net_dp* %17, %struct.nfp_net_r_vector* %18, %struct.nfp_net_rx_ring* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %23, 0
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i1 [ false, %15 ], [ %25, %22 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %15

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @nfp_ctrl_rx_one(%struct.nfp_net*, %struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
