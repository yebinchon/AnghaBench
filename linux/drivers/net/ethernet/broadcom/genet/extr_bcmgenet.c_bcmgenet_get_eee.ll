; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32 }
%struct.bcmgenet_priv = type { %struct.ethtool_eee }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UMAC_EEE_LPI_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bcmgenet_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca %struct.ethtool_eee*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %6, align 8
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %11 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %10, i32 0, i32 0
  store %struct.ethtool_eee* %11, %struct.ethtool_eee** %7, align 8
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %13 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %18
  %27 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %28 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %33 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %38 = load i32, i32* @UMAC_EEE_LPI_TIMER, align 4
  %39 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %37, i32 %38)
  %40 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %46 = call i32 @phy_ethtool_get_eee(i32 %44, %struct.ethtool_eee* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %26, %23, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @phy_ethtool_get_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
