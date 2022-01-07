; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbevf_ring** }
%struct.ixgbevf_ring = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ixgbevf_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbevf_adapter* %9, %struct.ixgbevf_adapter** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %15)
  %17 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 17
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i64 @skb_padto(%struct.sk_buff* %24, i32 17)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i32 17, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %18
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %33, i32 0, i32 0
  %35 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %35, i64 %38
  %40 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %39, align 8
  store %struct.ixgbevf_ring* %40, %struct.ixgbevf_ring** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %43 = call i32 @ixgbevf_xmit_frame_ring(%struct.sk_buff* %41, %struct.ixgbevf_ring* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %32, %27, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbevf_xmit_frame_ring(%struct.sk_buff*, %struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
