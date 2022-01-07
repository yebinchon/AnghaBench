; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.ef4_nic = type { i32 }

@EF4_FC_RX = common dso_local global i32 0, align 4
@EF4_FC_TX = common dso_local global i32 0, align 4
@EF4_FC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @ef4_ethtool_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_ethtool_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.ef4_nic* %7, %struct.ef4_nic** %5, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %9 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EF4_FC_RX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %20 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EF4_FC_TX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %31 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EF4_FC_AUTO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
