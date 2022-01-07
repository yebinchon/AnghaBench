; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @netvsc_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device_context*, align 8
  %9 = alloca %struct.netvsc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %10)
  store %struct.net_device_context* %11, %struct.net_device_context** %8, align 8
  %12 = load %struct.net_device_context*, %struct.net_device_context** %8, align 8
  %13 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.netvsc_device* @rtnl_dereference(i32 %14)
  store %struct.netvsc_device* %15, %struct.netvsc_device** %9, align 8
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %9, align 8
  %17 = icmp ne %struct.netvsc_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %35 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %21
  %26 = load %struct.netvsc_device*, %struct.netvsc_device** %9, align 8
  %27 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.net_device_context*, %struct.net_device_context** %8, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %34 = call i32 @netvsc_get_rss_hash_opts(%struct.net_device_context* %32, %struct.ethtool_rxnfc* %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %31, %25, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @netvsc_get_rss_hash_opts(%struct.net_device_context*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
