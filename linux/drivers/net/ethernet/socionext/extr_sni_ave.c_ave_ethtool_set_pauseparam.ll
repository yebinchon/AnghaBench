; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.ave_private = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ave_ethtool_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_ethtool_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ave_private*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ave_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ave_private* %9, %struct.ave_private** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %7, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %28 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %33 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %35 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @phy_set_asym_pause(%struct.phy_device* %34, i32 %37, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %18, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_set_asym_pause(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
