; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.macb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Command parameter %d is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @gem_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.macb*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.macb* @netdev_priv(%struct.net_device* %9)
  store %struct.macb* %10, %struct.macb** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 130, label %20
    i32 129, label %27
    i32 131, label %31
  ]

14:                                               ; preds = %3
  %15 = load %struct.macb*, %struct.macb** %7, align 8
  %16 = getelementptr inbounds %struct.macb, %struct.macb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.macb*, %struct.macb** %7, align 8
  %22 = getelementptr inbounds %struct.macb, %struct.macb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = call i32 @gem_get_flow_entry(%struct.net_device* %28, %struct.ethtool_rxnfc* %29)
  store i32 %30, i32* %8, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @gem_get_all_flow_entries(%struct.net_device* %32, %struct.ethtool_rxnfc* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %36, %31, %27, %20, %14
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gem_get_flow_entry(%struct.net_device*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @gem_get_all_flow_entries(%struct.net_device*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
