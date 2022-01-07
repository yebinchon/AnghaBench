; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @lan743x_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %38 [
    i32 135, label %11
    i32 134, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 131, label %17
    i32 129, label %17
    i32 130, label %17
    i32 128, label %17
    i32 133, label %25
    i32 132, label %25
  ]

17:                                               ; preds = %11, %11, %11, %11
  %18 = load i32, i32* @RXH_L4_B_0_1, align 4
  %19 = load i32, i32* @RXH_L4_B_2_3, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %11, %11, %17
  %26 = load i32, i32* @RXH_IP_SRC, align 4
  %27 = load i32, i32* @RXH_IP_DST, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %41

33:                                               ; preds = %11
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %36 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %3, %33
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %34, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
