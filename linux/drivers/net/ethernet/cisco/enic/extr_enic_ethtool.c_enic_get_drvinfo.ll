; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.enic = type { i32 }
%struct.vnic_devcmd_fw_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @enic_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca %struct.vnic_devcmd_fw_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enic* @netdev_priv(%struct.net_device* %8)
  store %struct.enic* %9, %struct.enic** %5, align 8
  %10 = load %struct.enic*, %struct.enic** %5, align 8
  %11 = call i32 @enic_dev_fw_info(%struct.enic* %10, %struct.vnic_devcmd_fw_info** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = call i32 @strlcpy(i32 %20, i32 %21, i32 4)
  %23 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRV_VERSION, align 4
  %27 = call i32 @strlcpy(i32 %25, i32 %26, i32 4)
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vnic_devcmd_fw_info*, %struct.vnic_devcmd_fw_info** %6, align 8
  %32 = getelementptr inbounds %struct.vnic_devcmd_fw_info, %struct.vnic_devcmd_fw_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlcpy(i32 %30, i32 %33, i32 4)
  %35 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.enic*, %struct.enic** %5, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_name(i32 %40)
  %42 = call i32 @strlcpy(i32 %37, i32 %41, i32 4)
  br label %43

43:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_dev_fw_info(%struct.enic*, %struct.vnic_devcmd_fw_info**) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
