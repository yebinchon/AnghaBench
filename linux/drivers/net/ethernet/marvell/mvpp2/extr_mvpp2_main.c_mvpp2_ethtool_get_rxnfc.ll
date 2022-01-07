; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.mvpp2_port = type { i32*, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MVPP2_N_RFS_ENTRIES_PER_FLOW = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @mvpp2_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mvpp2_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %12)
  store %struct.mvpp2_port* %13, %struct.mvpp2_port** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 (...) @mvpp22_rss_is_supported()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %69 [
    i32 129, label %23
    i32 128, label %27
    i32 131, label %33
    i32 130, label %39
    i32 132, label %43
  ]

23:                                               ; preds = %19
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %26 = call i32 @mvpp2_ethtool_rxfh_get(%struct.mvpp2_port* %24, %struct.ethtool_rxnfc* %25)
  store i32 %26, i32* %9, align 4
  br label %72

27:                                               ; preds = %19
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %72

33:                                               ; preds = %19
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %72

39:                                               ; preds = %19
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %41 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %42 = call i32 @mvpp2_ethtool_cls_rule_get(%struct.mvpp2_port* %40, %struct.ethtool_rxnfc* %41)
  store i32 %42, i32* %9, align 4
  br label %72

43:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MVPP2_N_RFS_ENTRIES_PER_FLOW, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %44

68:                                               ; preds = %44
  br label %72

69:                                               ; preds = %19
  %70 = load i32, i32* @ENOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %68, %39, %33, %27, %23
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %69, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp22_rss_is_supported(...) #1

declare dso_local i32 @mvpp2_ethtool_rxfh_get(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @mvpp2_ethtool_cls_rule_get(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
