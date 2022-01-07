; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_link_ksettings_phyless.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_link_ksettings_phyless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@PORT_STATUS = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, %struct.ethtool_link_ksettings*)* @mv643xx_eth_get_link_ksettings_phyless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_get_link_ksettings_phyless(%struct.mv643xx_eth_private* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %9 = load i32, i32* @PORT_STATUS, align 4
  %10 = call i32 @rdlp(%struct.mv643xx_eth_private* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @SUPPORTED_MII, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ADVERTISED_MII, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PORT_SPEED_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %31 [
    i32 130, label %16
    i32 129, label %21
    i32 128, label %26
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @SPEED_10, align 4
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @SPEED_100, align 4
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @SPEED_1000, align 4
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %26, %21, %16
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FULL_DUPLEX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DUPLEX_FULL, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @DUPLEX_HALF, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @PORT_MII, align 4
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @AUTONEG_DISABLE, align 4
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %63, i32 %64)
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %69, i32 %70)
  ret i32 0
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
