; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.macb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Command parameter %d is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @gem_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.macb*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.macb* @netdev_priv(%struct.net_device* %7)
  store %struct.macb* %8, %struct.macb** %5, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %41 [
    i32 128, label %12
    i32 129, label %37
  ]

12:                                               ; preds = %2
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.macb*, %struct.macb** %5, align 8
  %18 = getelementptr inbounds %struct.macb, %struct.macb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.macb*, %struct.macb** %5, align 8
  %27 = getelementptr inbounds %struct.macb, %struct.macb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %12
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %21
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %36 = call i32 @gem_add_flow_filter(%struct.net_device* %34, %struct.ethtool_rxnfc* %35)
  store i32 %36, i32* %6, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %40 = call i32 @gem_del_flow_filter(%struct.net_device* %38, %struct.ethtool_rxnfc* %39)
  store i32 %40, i32* %6, align 4
  br label %49

41:                                               ; preds = %2
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %41, %37, %33, %30
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gem_add_flow_filter(%struct.net_device*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @gem_del_flow_filter(%struct.net_device*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
