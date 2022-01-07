; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i64, %struct.skge_ring }
%struct.skge_ring = type { %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { %struct.skge_element* }
%struct.sk_buff = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @skge_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_rx_fill(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.skge_port*, align 8
  %5 = alloca %struct.skge_ring*, align 8
  %6 = alloca %struct.skge_element*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.skge_port* @netdev_priv(%struct.net_device* %8)
  store %struct.skge_port* %9, %struct.skge_port** %4, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 1
  store %struct.skge_ring* %11, %struct.skge_ring** %5, align 8
  %12 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %13 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %12, i32 0, i32 0
  %14 = load %struct.skge_element*, %struct.skge_element** %13, align 8
  store %struct.skge_element* %14, %struct.skge_element** %6, align 8
  br label %15

15:                                               ; preds = %47, %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NET_IP_ALIGN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %16, i64 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %15
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i64, i64* @NET_IP_ALIGN, align 8
  %32 = call i32 @skb_reserve(%struct.sk_buff* %30, i64 %31)
  %33 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %34 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %37 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @skge_rx_setup(%struct.skge_port* %33, %struct.skge_element* %34, %struct.sk_buff* %35, i64 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %49 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %48, i32 0, i32 0
  %50 = load %struct.skge_element*, %struct.skge_element** %49, align 8
  store %struct.skge_element* %50, %struct.skge_element** %6, align 8
  %51 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %52 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %51, i32 0, i32 0
  %53 = load %struct.skge_element*, %struct.skge_element** %52, align 8
  %54 = icmp ne %struct.skge_element* %50, %53
  br i1 %54, label %15, label %55

55:                                               ; preds = %47
  %56 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %57 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %56, i32 0, i32 0
  %58 = load %struct.skge_element*, %struct.skge_element** %57, align 8
  %59 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %60 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %59, i32 0, i32 1
  store %struct.skge_element* %58, %struct.skge_element** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %41, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skge_rx_setup(%struct.skge_port*, %struct.skge_element*, %struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
