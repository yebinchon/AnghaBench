; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ICE_FEC_AUTO = common dso_local global i32 0, align 4
@ICE_FEC_RS = common dso_local global i32 0, align 4
@ICE_FEC_BASER = common dso_local global i32 0, align 4
@ICE_FEC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported FEC mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @ice_set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ice_netdev_priv* %10, %struct.ice_netdev_priv** %6, align 8
  %11 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  store %struct.ice_vsi* %13, %struct.ice_vsi** %7, align 8
  %14 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 132, label %17
    i32 128, label %19
    i32 131, label %21
    i32 129, label %23
    i32 130, label %23
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @ICE_FEC_AUTO, align 4
  store i32 %18, i32* %8, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @ICE_FEC_RS, align 4
  store i32 %20, i32* %8, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* @ICE_FEC_BASER, align 4
  store i32 %22, i32* %8, align 4
  br label %38

23:                                               ; preds = %2, %2
  %24 = load i32, i32* @ICE_FEC_NONE, align 4
  store i32 %24, i32* %8, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %27 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %23, %21, %19, %17
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ice_set_fec_cfg(%struct.net_device* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ice_set_fec_cfg(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
