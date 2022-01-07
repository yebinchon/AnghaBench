; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.jme_adapter = type { i32 }

@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@PMCS_LFEN = common dso_local global i32 0, align 4
@PMCS_LREN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@PMCS_MFEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @jme_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %13 = load i32, i32* @WAKE_UCAST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_MCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_BCAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WAKE_ARP, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %11, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WAKE_PHY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* @PMCS_LFEN, align 4
  %37 = load i32, i32* @PMCS_LREN, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %26
  %44 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WAKE_MAGIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @PMCS_MFEN, align 4
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %43
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
