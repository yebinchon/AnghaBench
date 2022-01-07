; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ntb_netdev = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ntb_netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ntb_netdev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %6)
  store %struct.ntb_netdev* %7, %struct.ntb_netdev** %3, align 8
  %8 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ntb_transport_link_down(i32 %10)
  br label %12

12:                                               ; preds = %18, %1
  %13 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sk_buff* @ntb_transport_rx_remove(i32 %15, i32* %5)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @dev_kfree_skb(%struct.sk_buff* %19)
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %23 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %22, i32 0, i32 0
  %24 = call i32 @del_timer_sync(i32* %23)
  ret i32 0
}

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntb_transport_link_down(i32) #1

declare dso_local %struct.sk_buff* @ntb_transport_rx_remove(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
