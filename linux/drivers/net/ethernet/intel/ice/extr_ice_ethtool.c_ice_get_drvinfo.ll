; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@ice_drv_ver = common dso_local global i32 0, align 4
@ICE_PRIV_FLAG_ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ice_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ice_netdev_priv*, align 8
  %6 = alloca %struct.ice_vsi*, align 8
  %7 = alloca %struct.ice_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ice_netdev_priv* %9, %struct.ice_netdev_priv** %5, align 8
  %10 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  store %struct.ice_vsi* %12, %struct.ice_vsi** %6, align 8
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 0
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %7, align 8
  %16 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KBUILD_MODNAME, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ice_drv_ver, align 4
  %25 = call i32 @strlcpy(i32 %23, i32 %24, i32 4)
  %26 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 1
  %31 = call i32 @ice_nvm_version_str(i32* %30)
  %32 = call i32 @strlcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_name(i32 %38)
  %40 = call i32 @strlcpy(i32 %35, i32 %39, i32 4)
  %41 = load i32, i32* @ICE_PRIV_FLAG_ARRAY_SIZE, align 4
  %42 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ice_nvm_version_str(i32*) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
