; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.efx_nic = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EFX_DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @efx_ethtool_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ethtool_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KBUILD_MODNAME, align 4
  %12 = call i32 @strlcpy(i32 %10, i32 %11, i32 4)
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EFX_DRIVER_VERSION, align 4
  %17 = call i32 @strlcpy(i32 %15, i32 %16, i32 4)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @efx_mcdi_print_fwver(%struct.efx_nic* %18, i32 %21, i32 4)
  %23 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_name(i32 %28)
  %30 = call i32 @strlcpy(i32 %25, i32 %29, i32 4)
  ret void
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @efx_mcdi_print_fwver(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
