; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i64, i64 }
%struct.enic = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @enic_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.enic*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.enic* @netdev_priv(%struct.net_device* %9)
  store %struct.enic* %10, %struct.enic** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %75 [
    i32 128, label %14
    i32 131, label %20
    i32 132, label %46
    i32 130, label %59
    i32 129, label %71
  ]

14:                                               ; preds = %3
  %15 = load %struct.enic*, %struct.enic** %7, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.enic*, %struct.enic** %7, align 8
  %22 = getelementptr inbounds %struct.enic, %struct.enic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.enic*, %struct.enic** %7, align 8
  %26 = getelementptr inbounds %struct.enic, %struct.enic* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.enic*, %struct.enic** %7, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.enic*, %struct.enic** %7, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.enic*, %struct.enic** %7, align 8
  %43 = getelementptr inbounds %struct.enic, %struct.enic* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %78

46:                                               ; preds = %3
  %47 = load %struct.enic*, %struct.enic** %7, align 8
  %48 = getelementptr inbounds %struct.enic, %struct.enic* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.enic*, %struct.enic** %7, align 8
  %52 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @enic_grxclsrlall(%struct.enic* %51, %struct.ethtool_rxnfc* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.enic*, %struct.enic** %7, align 8
  %56 = getelementptr inbounds %struct.enic, %struct.enic* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  br label %78

59:                                               ; preds = %3
  %60 = load %struct.enic*, %struct.enic** %7, align 8
  %61 = getelementptr inbounds %struct.enic, %struct.enic* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.enic*, %struct.enic** %7, align 8
  %65 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %66 = call i32 @enic_grxclsrule(%struct.enic* %64, %struct.ethtool_rxnfc* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.enic*, %struct.enic** %7, align 8
  %68 = getelementptr inbounds %struct.enic, %struct.enic* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  br label %78

71:                                               ; preds = %3
  %72 = load %struct.enic*, %struct.enic** %7, align 8
  %73 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %74 = call i32 @enic_get_rx_flow_hash(%struct.enic* %72, %struct.ethtool_rxnfc* %73)
  store i32 %74, i32* %8, align 4
  br label %78

75:                                               ; preds = %3
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %71, %59, %46, %20, %14
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @enic_grxclsrlall(%struct.enic*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @enic_grxclsrule(%struct.enic*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @enic_get_rx_flow_hash(%struct.enic*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
