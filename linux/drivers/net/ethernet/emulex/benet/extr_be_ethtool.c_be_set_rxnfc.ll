; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ethtool::set_rxnfc: RX flow hashing is disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @be_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.be_adapter* %9, %struct.be_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %11 = call i32 @be_multi_rxq(%struct.be_adapter* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %27 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %28 = call i32 @be_set_rss_hash_opts(%struct.be_adapter* %26, %struct.ethtool_rxnfc* %27)
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %29, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be_multi_rxq(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_set_rss_hash_opts(%struct.be_adapter*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
