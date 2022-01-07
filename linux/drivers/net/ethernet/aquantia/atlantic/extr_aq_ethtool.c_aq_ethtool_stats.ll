; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i32 }

@aq_ethtool_stat_names = common dso_local global i32 0, align 4
@aq_ethtool_queue_stat_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @aq_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aq_nic_s*, align 8
  %8 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %9)
  store %struct.aq_nic_s* %10, %struct.aq_nic_s** %7, align 8
  %11 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %12 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %11)
  store %struct.aq_nic_cfg_s* %12, %struct.aq_nic_cfg_s** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @aq_ethtool_stat_names, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load i32, i32* @aq_ethtool_queue_stat_names, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %19 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %15, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %13, i32 0, i32 %25)
  %27 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @aq_nic_get_stats(%struct.aq_nic_s* %27, i32* %28)
  ret void
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @aq_nic_get_stats(%struct.aq_nic_s*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
