; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.bcm_sysport_priv = type { i32, %struct.bcm_sysport_stats64 }
%struct.bcm_sysport_stats64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @bcm_sysport_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.bcm_sysport_priv*, align 8
  %6 = alloca %struct.bcm_sysport_stats64*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_sysport_priv* %9, %struct.bcm_sysport_priv** %5, align 8
  %10 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %11 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %10, i32 0, i32 1
  store %struct.bcm_sysport_stats64* %11, %struct.bcm_sysport_stats64** %6, align 8
  %12 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %12, i32* %14)
  %16 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 3
  %19 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %19, i32 0, i32 2
  %21 = call i32 @bcm_sysport_update_tx_stats(%struct.bcm_sysport_priv* %16, i32* %18, i32* %20)
  br label %22

22:                                               ; preds = %36, %2
  %23 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %23, i32 0, i32 0
  %25 = call i32 @u64_stats_fetch_begin_irq(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %6, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %6, align 8
  %32 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %38 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @u64_stats_fetch_retry_irq(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %22, label %42

42:                                               ; preds = %36
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64*, i32*) #1

declare dso_local i32 @bcm_sysport_update_tx_stats(%struct.bcm_sysport_priv*, i32*, i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
