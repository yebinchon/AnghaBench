; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qede_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @qede_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %5, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %27 [
    i32 128, label %12
    i32 129, label %16
    i32 130, label %20
  ]

12:                                               ; preds = %2
  %13 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %15 = call i32 @qede_set_rss_flags(%struct.qede_dev* %13, %struct.ethtool_rxnfc* %14)
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %19 = call i32 @qede_add_cls_rule(%struct.qede_dev* %17, %struct.ethtool_rxnfc* %18)
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qede_delete_flow_filter(%struct.qede_dev* %21, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %29 = call i32 @DP_INFO(%struct.qede_dev* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %20, %16, %12
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qede_set_rss_flags(%struct.qede_dev*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @qede_add_cls_rule(%struct.qede_dev*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @qede_delete_flow_filter(%struct.qede_dev*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
