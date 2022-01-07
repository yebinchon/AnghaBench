; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.qede_dev = type { i32 }

@QEDE_RFS_MAX_FLTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @qede_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %40 [
    i32 128, label %14
    i32 129, label %19
    i32 131, label %23
    i32 130, label %31
    i32 132, label %35
  ]

14:                                               ; preds = %3
  %15 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %16 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %15)
  %17 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %22 = call i32 @qede_get_rss_flags(%struct.qede_dev* %20, %struct.ethtool_rxnfc* %21)
  store i32 %22, i32* %8, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %25 = call i32 @qede_get_arfs_filter_count(%struct.qede_dev* %24)
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @QEDE_RFS_MAX_FLTR, align 4
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %45

31:                                               ; preds = %3
  %32 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = call i32 @qede_get_cls_rule_entry(%struct.qede_dev* %32, %struct.ethtool_rxnfc* %33)
  store i32 %34, i32* %8, align 4
  br label %45

35:                                               ; preds = %3
  %36 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @qede_get_cls_rule_all(%struct.qede_dev* %36, %struct.ethtool_rxnfc* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %42 = call i32 @DP_ERR(%struct.qede_dev* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %35, %31, %23, %19, %14
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @qede_get_rss_flags(%struct.qede_dev*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @qede_get_arfs_filter_count(%struct.qede_dev*) #1

declare dso_local i32 @qede_get_cls_rule_entry(%struct.qede_dev*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @qede_get_cls_rule_all(%struct.qede_dev*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
