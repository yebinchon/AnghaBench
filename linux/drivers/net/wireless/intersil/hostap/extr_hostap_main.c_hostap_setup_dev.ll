; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_setup_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_setup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32*, i32, i32*, i32, i32, i32*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_4__, i32 }

@PRISM2_MIN_MTU = common dso_local global i32 0, align 4
@PRISM2_MAX_MTU = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@hostap_iw_handler_def = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@hostap_mgmt_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@hostap_80211_ops = common dso_local global i32 0, align 4
@hostap_master_ops = common dso_local global i32 0, align 4
@hostap_netdev_ops = common dso_local global i32 0, align 4
@prism2_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_setup_dev(%struct.net_device* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostap_interface*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %8)
  store %struct.hostap_interface* %9, %struct.hostap_interface** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @ether_setup(%struct.net_device* %10)
  %12 = load i32, i32* @PRISM2_MIN_MTU, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PRISM2_MAX_MTU, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %25 = icmp ne %struct.hostap_interface* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %28 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %27, i32 0, i32 1
  %29 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %30 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %33 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  br label %36

36:                                               ; preds = %26, %3
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 7
  store i32* @hostap_iw_handler_def, i32** %38, align 8
  %39 = load i32, i32* @TX_TIMEOUT, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %59 [
    i32 129, label %43
    i32 128, label %56
  ]

43:                                               ; preds = %36
  %44 = load i32, i32* @IFF_NO_QUEUE, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  store i32* @hostap_mgmt_netdev_ops, i32** %50, align 8
  %51 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 4
  store i32* @hostap_80211_ops, i32** %55, align 8
  br label %67

56:                                               ; preds = %36
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 2
  store i32* @hostap_master_ops, i32** %58, align 8
  br label %67

59:                                               ; preds = %36
  %60 = load i32, i32* @IFF_NO_QUEUE, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  store i32* @hostap_netdev_ops, i32** %66, align 8
  br label %67

67:                                               ; preds = %59, %56, %43
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  store i32* @prism2_ethtool_ops, i32** %74, align 8
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
