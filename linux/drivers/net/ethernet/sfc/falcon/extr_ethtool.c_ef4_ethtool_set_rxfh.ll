; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*, i32, i32*)* }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @ef4_ethtool_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ef4_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.ef4_nic* %12, %struct.ef4_nic** %10, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %19, %15
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %26
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ef4_nic*, i32, i32*)*, i32 (%struct.ef4_nic*, i32, i32*)** %34, align 8
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 %35(%struct.ef4_nic* %36, i32 1, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %29, %23
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
