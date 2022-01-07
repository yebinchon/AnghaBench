; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i32, i32 }
%struct.sky2_port = type { i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SKY2_FLAG_AUTO_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @sky2_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %6)
  store %struct.sky2_port* %7, %struct.sky2_port** %5, align 8
  %8 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AUTONEG_ENABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @SKY2_FLAG_AUTO_PAUSE, align 4
  %15 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %16 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @SKY2_FLAG_AUTO_PAUSE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %23 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sky2_flow(i32 %29, i32 %32)
  %34 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %35 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i64 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %41 = call i32 @sky2_phy_reinit(%struct.sky2_port* %40)
  br label %42

42:                                               ; preds = %39, %26
  ret i32 0
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_flow(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sky2_phy_reinit(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
