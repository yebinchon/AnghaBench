; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @aq_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.aq_nic_s*, align 8
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %7)
  store %struct.aq_nic_s* %8, %struct.aq_nic_s** %5, align 8
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %10 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %9)
  store %struct.aq_nic_cfg_s* %10, %struct.aq_nic_cfg_s** %6, align 8
  %11 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %12 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %17 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %22 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %29 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
