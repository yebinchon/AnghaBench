; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_fill_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_fill_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_rx_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*)* @nfp_net_rx_ring_fill_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_ring_fill_freelist(%struct.nfp_net_dp* %0, %struct.nfp_net_rx_ring* %1) #0 {
  %3 = alloca %struct.nfp_net_dp*, align 8
  %4 = alloca %struct.nfp_net_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %3, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %15 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %16 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %14, %struct.nfp_net_rx_ring* %15, i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @nfp_net_rx_give_one(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
