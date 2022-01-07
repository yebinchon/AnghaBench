; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.netcp_intf = type { i32 }
%struct.gbe_intf = type { %struct.gbe_priv* }
%struct.gbe_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @keystone_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keystone_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netcp_intf*, align 8
  %8 = alloca %struct.gbe_intf*, align 8
  %9 = alloca %struct.gbe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %10)
  store %struct.netcp_intf* %11, %struct.netcp_intf** %7, align 8
  %12 = load %struct.netcp_intf*, %struct.netcp_intf** %7, align 8
  %13 = call %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf* %12)
  store %struct.gbe_intf* %13, %struct.gbe_intf** %8, align 8
  %14 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %15 = icmp ne %struct.gbe_intf* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %19 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %18, i32 0, i32 0
  %20 = load %struct.gbe_priv*, %struct.gbe_priv** %19, align 8
  store %struct.gbe_priv* %20, %struct.gbe_priv** %9, align 8
  %21 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %22 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %25 = call i64 @IS_SS_ID_VER_14(%struct.gbe_priv* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @gbe_update_stats_ver14(%struct.gbe_priv* %28, i32* %29)
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @gbe_update_stats(%struct.gbe_priv* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.gbe_priv*, %struct.gbe_priv** %9, align 8
  %37 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @IS_SS_ID_VER_14(%struct.gbe_priv*) #1

declare dso_local i32 @gbe_update_stats_ver14(%struct.gbe_priv*, i32*) #1

declare dso_local i32 @gbe_update_stats(%struct.gbe_priv*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
