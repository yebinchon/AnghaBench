; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i32 }
%struct.pci_dev = type { i32 }

@AQ_CFG_DRV_NAME = common dso_local global i32 0, align 4
@AQ_CFG_DRV_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aq_ethtool_stat_names = common dso_local global i32 0, align 4
@aq_ethtool_queue_stat_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @aq_ethtool_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_ethtool_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.aq_nic_s*, align 8
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %10)
  store %struct.aq_nic_s* %11, %struct.aq_nic_s** %5, align 8
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %13 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %12)
  store %struct.aq_nic_cfg_s* %13, %struct.aq_nic_cfg_s** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %20 = call i32 @aq_nic_get_fw_version(%struct.aq_nic_s* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %22 = call i32 @aq_nic_get_regs_count(%struct.aq_nic_s* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AQ_CFG_DRV_NAME, align 4
  %27 = call i32 @strlcat(i32 %25, i32 %26, i32 4)
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AQ_CFG_DRV_VERSION, align 4
  %32 = call i32 @strlcat(i32 %30, i32 %31, i32 4)
  %33 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 24
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %42)
  %44 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = call i8* @pci_name(%struct.pci_dev* %50)
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %52 ]
  %55 = call i32 @strlcpy(i32 %46, i8* %54, i32 4)
  %56 = load i32, i32* @aq_ethtool_stat_names, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %59 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @aq_ethtool_queue_stat_names, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 %57, %63
  %65 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @aq_nic_get_fw_version(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_get_regs_count(%struct.aq_nic_s*) #1

declare dso_local i32 @strlcat(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
