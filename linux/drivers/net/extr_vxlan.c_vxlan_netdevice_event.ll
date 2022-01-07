; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_netdevice_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_netdevice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_net = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NETDEV_UDP_TUNNEL_PUSH_INFO = common dso_local global i64 0, align 8
@NETDEV_UDP_TUNNEL_DROP_INFO = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @vxlan_netdevice_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_netdevice_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.vxlan_net*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = load i32, i32* @vxlan_net_id, align 4
  %14 = call %struct.vxlan_net* @net_generic(i32 %12, i32 %13)
  store %struct.vxlan_net* %14, %struct.vxlan_net** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @vxlan_offload_rx_ports(%struct.net_device* %19, i32 0)
  %21 = load %struct.vxlan_net*, %struct.vxlan_net** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i32 @vxlan_handle_lowerdev_unregister(%struct.vxlan_net* %21, %struct.net_device* %22)
  br label %48

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @NETDEV_REGISTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 @vxlan_offload_rx_ports(%struct.net_device* %29, i32 1)
  br label %47

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @NETDEV_UDP_TUNNEL_PUSH_INFO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @NETDEV_UDP_TUNNEL_DROP_INFO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %31
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @NETDEV_UDP_TUNNEL_PUSH_INFO, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @vxlan_offload_rx_ports(%struct.net_device* %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %35
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @vxlan_offload_rx_ports(%struct.net_device*, i32) #1

declare dso_local i32 @vxlan_handle_lowerdev_unregister(%struct.vxlan_net*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
