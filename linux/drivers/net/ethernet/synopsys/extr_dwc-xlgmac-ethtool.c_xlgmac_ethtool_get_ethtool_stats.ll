; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-ethtool.c_xlgmac_ethtool_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-ethtool.c_xlgmac_ethtool_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.xlgmac_pdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xlgmac_pdata.0*)* }
%struct.xlgmac_pdata.0 = type opaque

@XLGMAC_STATS_COUNT = common dso_local global i32 0, align 4
@xlgmac_gstring_stats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @xlgmac_ethtool_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_ethtool_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xlgmac_pdata*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %10)
  store %struct.xlgmac_pdata* %11, %struct.xlgmac_pdata** %7, align 8
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %7, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %14, align 8
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %7, align 8
  %17 = bitcast %struct.xlgmac_pdata* %16 to %struct.xlgmac_pdata.0*
  %18 = call i32 %15(%struct.xlgmac_pdata.0* %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @XLGMAC_STATS_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %7, align 8
  %25 = bitcast %struct.xlgmac_pdata* %24 to i32*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xlgmac_gstring_stats, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %19

41:                                               ; preds = %19
  ret void
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
