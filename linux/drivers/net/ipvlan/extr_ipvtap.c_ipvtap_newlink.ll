; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvtap.c_ipvtap_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvtap.c_ipvtap_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ipvtap_dev = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@TUN_OFFLOADS = common dso_local global i32 0, align 4
@ipvtap_count_tx_dropped = common dso_local global i32 0, align 4
@ipvtap_update_features = common dso_local global i32 0, align 4
@ipvtap_count_rx_dropped = common dso_local global i32 0, align 4
@tap_handle_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipvtap_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvtap_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ipvtap_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.ipvtap_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.ipvtap_dev* %15, %struct.ipvtap_dev** %12, align 8
  %16 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %17 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* @TUN_OFFLOADS, align 4
  %21 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %22 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @ipvtap_count_tx_dropped, align 4
  %25 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %26 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @ipvtap_update_features, align 4
  %29 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %30 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @ipvtap_count_rx_dropped, align 4
  %33 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %34 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = load i32, i32* @tap_handle_frame, align 4
  %38 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %39 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %38, i32 0, i32 1
  %40 = call i32 @netdev_rx_handler_register(%struct.net_device* %36, i32 %37, %struct.TYPE_4__* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %67

45:                                               ; preds = %5
  %46 = load %struct.net*, %struct.net** %7, align 8
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %49 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %51 = call i32 @ipvlan_link_new(%struct.net* %46, %struct.net_device* %47, %struct.nlattr** %48, %struct.nlattr** %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %67

58:                                               ; preds = %45
  %59 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %60 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipvtap_dev*, %struct.ipvtap_dev** %12, align 8
  %64 = getelementptr inbounds %struct.ipvtap_dev, %struct.ipvtap_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %58, %54, %43
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.ipvtap_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ipvlan_link_new(%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
