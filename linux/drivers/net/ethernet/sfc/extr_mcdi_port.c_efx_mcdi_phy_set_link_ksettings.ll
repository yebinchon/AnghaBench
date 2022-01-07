; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@MC_CMD_PHY_CAP_AN_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_40000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_25000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_50000FDX_LBN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10HDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100HDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000HDX_LBN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_link_ksettings*)* @efx_mcdi_phy_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_set_link_ksettings(%struct.efx_nic* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.efx_mcdi_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %10, align 8
  store %struct.efx_mcdi_phy_data* %11, %struct.efx_mcdi_phy_data** %6, align 8
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ethtool_linkset_to_mcdi_cap(i32 %21)
  %23 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  br label %84

26:                                               ; preds = %2
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %61 [
    i32 10, label %37
    i32 100, label %40
    i32 1000, label %43
    i32 10000, label %46
    i32 40000, label %49
    i32 100000, label %52
    i32 25000, label %55
    i32 50000, label %58
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @MC_CMD_PHY_CAP_10FDX_LBN, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %7, align 4
  br label %64

40:                                               ; preds = %32
  %41 = load i32, i32* @MC_CMD_PHY_CAP_100FDX_LBN, align 4
  %42 = shl i32 1, %41
  store i32 %42, i32* %7, align 4
  br label %64

43:                                               ; preds = %32
  %44 = load i32, i32* @MC_CMD_PHY_CAP_1000FDX_LBN, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %7, align 4
  br label %64

46:                                               ; preds = %32
  %47 = load i32, i32* @MC_CMD_PHY_CAP_10000FDX_LBN, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %7, align 4
  br label %64

49:                                               ; preds = %32
  %50 = load i32, i32* @MC_CMD_PHY_CAP_40000FDX_LBN, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %7, align 4
  br label %64

52:                                               ; preds = %32
  %53 = load i32, i32* @MC_CMD_PHY_CAP_100000FDX_LBN, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %7, align 4
  br label %64

55:                                               ; preds = %32
  %56 = load i32, i32* @MC_CMD_PHY_CAP_25000FDX_LBN, align 4
  %57 = shl i32 1, %56
  store i32 %57, i32* %7, align 4
  br label %64

58:                                               ; preds = %32
  %59 = load i32, i32* @MC_CMD_PHY_CAP_50000FDX_LBN, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %32
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %125

64:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37
  br label %83

65:                                               ; preds = %26
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %79 [
    i32 10, label %70
    i32 100, label %73
    i32 1000, label %76
  ]

70:                                               ; preds = %65
  %71 = load i32, i32* @MC_CMD_PHY_CAP_10HDX_LBN, align 4
  %72 = shl i32 1, %71
  store i32 %72, i32* %7, align 4
  br label %82

73:                                               ; preds = %65
  %74 = load i32, i32* @MC_CMD_PHY_CAP_100HDX_LBN, align 4
  %75 = shl i32 1, %74
  store i32 %75, i32* %7, align 4
  br label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @MC_CMD_PHY_CAP_1000HDX_LBN, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %7, align 4
  br label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %125

82:                                               ; preds = %76, %73, %70
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %17
  %85 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ethtool_fec_caps_to_mcdi(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %94 = call i32 @efx_get_mcdi_phy_flags(%struct.efx_nic* %93)
  %95 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @efx_mcdi_set_link(%struct.efx_nic* %91, i32 %92, i32 %94, i32 %97, i32 0)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %125

103:                                              ; preds = %84
  %104 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @efx_link_set_advertising(%struct.efx_nic* %110, i32 %114)
  %116 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %117 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %124

118:                                              ; preds = %103
  %119 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %120 = call i32 @efx_link_clear_advertising(%struct.efx_nic* %119)
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %123 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %109
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %101, %79, %61
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @ethtool_linkset_to_mcdi_cap(i32) #1

declare dso_local i32 @ethtool_fec_caps_to_mcdi(i32) #1

declare dso_local i32 @efx_mcdi_set_link(%struct.efx_nic*, i32, i32, i32, i32) #1

declare dso_local i32 @efx_get_mcdi_phy_flags(%struct.efx_nic*) #1

declare dso_local i32 @efx_link_set_advertising(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_link_clear_advertising(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
