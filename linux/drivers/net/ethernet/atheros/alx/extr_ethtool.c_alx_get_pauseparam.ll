; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { i32, i32 }

@ALX_FC_ANEG = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ALX_FC_TX = common dso_local global i32 0, align 4
@ALX_FC_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @alx_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.alx_priv*, align 8
  %6 = alloca %struct.alx_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.alx_priv* %8, %struct.alx_priv** %5, align 8
  %9 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %10 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %9, i32 0, i32 0
  store %struct.alx_hw* %10, %struct.alx_hw** %6, align 8
  %11 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %12 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ALX_FC_ANEG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %19 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i1 [ false, %2 ], [ %23, %17 ]
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %32 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ALX_FC_TX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %43 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ALX_FC_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
