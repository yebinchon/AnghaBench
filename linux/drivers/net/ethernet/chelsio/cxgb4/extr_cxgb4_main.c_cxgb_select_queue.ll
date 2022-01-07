; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }

@select_queue = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @cxgb_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load i64, i64* @select_queue, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_get_rx_queue(%struct.sk_buff* %16)
  br label %20

18:                                               ; preds = %11
  %19 = call i32 (...) @smp_processor_id()
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %31, %20
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %47

39:                                               ; preds = %3
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @netdev_pick_tx(%struct.net_device* %40, %struct.sk_buff* %41, i32* null)
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %42, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %37
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
