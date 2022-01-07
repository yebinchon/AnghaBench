; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i64 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @aq_ethtool_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_ethtool_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.aq_nic_s*, align 8
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %7)
  store %struct.aq_nic_s* %8, %struct.aq_nic_s** %5, align 8
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %10 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %9)
  store %struct.aq_nic_cfg_s* %10, %struct.aq_nic_cfg_s** %6, align 8
  %11 = load i32, i32* @WAKE_MAGIC, align 4
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %17 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @WAKE_MAGIC, align 4
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
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
