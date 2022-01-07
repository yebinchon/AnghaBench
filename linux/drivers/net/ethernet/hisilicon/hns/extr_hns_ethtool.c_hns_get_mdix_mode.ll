; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_mdix_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_mdix_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@ETH_TP_MDI_INVALID = common dso_local global i8* null, align 8
@HNS_PHY_PAGE_REG = common dso_local global i32 0, align 4
@HNS_PHY_PAGE_MDIX = common dso_local global i32 0, align 4
@HNS_PHY_CSC_REG = common dso_local global i32 0, align 4
@PHY_MDIX_CTRL_M = common dso_local global i32 0, align 4
@PHY_MDIX_CTRL_S = common dso_local global i32 0, align 4
@HNS_PHY_CSS_REG = common dso_local global i32 0, align 4
@PHY_MDIX_STATUS_B = common dso_local global i32 0, align 4
@PHY_SPEED_DUP_RESOLVE_B = common dso_local global i32 0, align 4
@HNS_PHY_PAGE_COPPER = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i8* null, align 8
@ETH_TP_MDI_X = common dso_local global i8* null, align 8
@ETH_TP_MDI_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_link_ksettings*)* @hns_get_mdix_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_get_mdix_mode(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %9, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %15, %2
  %22 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  br label %98

30:                                               ; preds = %15
  %31 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %32 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %33 = load i32, i32* @HNS_PHY_PAGE_MDIX, align 4
  %34 = call i32 @phy_write(%struct.phy_device* %31, i32 %32, i32 %33)
  %35 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %36 = load i32, i32* @HNS_PHY_CSC_REG, align 4
  %37 = call i32 @phy_read(%struct.phy_device* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PHY_MDIX_CTRL_M, align 4
  %40 = load i32, i32* @PHY_MDIX_CTRL_S, align 4
  %41 = call i32 @hnae_get_field(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %43 = load i32, i32* @HNS_PHY_CSS_REG, align 4
  %44 = call i32 @phy_read(%struct.phy_device* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PHY_MDIX_STATUS_B, align 4
  %47 = call i32 @hnae_get_bit(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PHY_SPEED_DUP_RESOLVE_B, align 4
  %50 = call i32 @hnae_get_bit(i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %52 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %53 = load i32, i32* @HNS_PHY_PAGE_COPPER, align 4
  %54 = call i32 @phy_write(%struct.phy_device* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  switch i32 %55, label %71 [
    i32 0, label %56
    i32 1, label %61
    i32 3, label %66
  ]

56:                                               ; preds = %30
  %57 = load i8*, i8** @ETH_TP_MDI, align 8
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  br label %76

61:                                               ; preds = %30
  %62 = load i8*, i8** @ETH_TP_MDI_X, align 8
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  br label %76

66:                                               ; preds = %30
  %67 = load i8*, i8** @ETH_TP_MDI_AUTO, align 8
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  br label %76

71:                                               ; preds = %30
  %72 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %66, %61, %56
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %98

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i8*, i8** @ETH_TP_MDI_X, align 8
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %97

92:                                               ; preds = %84
  %93 = load i8*, i8** @ETH_TP_MDI, align 8
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %21, %97, %79
  ret void
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @hnae_get_field(i32, i32, i32) #1

declare dso_local i32 @hnae_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
