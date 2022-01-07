; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.mvpp2_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @mvpp2_ethtool_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_ethtool_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.mvpp2_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %8)
  store %struct.mvpp2_port* %9, %struct.mvpp2_port** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @mvpp22_rss_is_supported()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 128, label %19
    i32 129, label %23
    i32 130, label %27
  ]

19:                                               ; preds = %15
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %22 = call i32 @mvpp2_ethtool_rxfh_set(%struct.mvpp2_port* %20, %struct.ethtool_rxnfc* %21)
  store i32 %22, i32* %7, align 4
  br label %34

23:                                               ; preds = %15
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = call i32 @mvpp2_ethtool_cls_rule_ins(%struct.mvpp2_port* %24, %struct.ethtool_rxnfc* %25)
  store i32 %26, i32* %7, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = call i32 @mvpp2_ethtool_cls_rule_del(%struct.mvpp2_port* %28, %struct.ethtool_rxnfc* %29)
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %27, %23, %19
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp22_rss_is_supported(...) #1

declare dso_local i32 @mvpp2_ethtool_rxfh_set(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @mvpp2_ethtool_cls_rule_ins(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @mvpp2_ethtool_cls_rule_del(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
