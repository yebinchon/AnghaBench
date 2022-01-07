; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_gen10_set_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_gen10_set_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_dwmac = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i64, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII = common dso_local global i32 0, align 4
@SYSMGR_EMACGRP_CTRL_PHYSEL_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK = common dso_local global i32 0, align 4
@SYSMGR_FPGAINTF_EMAC_REG = common dso_local global i32 0, align 4
@SYSMGR_FPGAINTF_EMAC_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to initialize TSE PCS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_dwmac*)* @socfpga_gen10_set_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_gen10_set_phy_mode(%struct.socfpga_dwmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socfpga_dwmac*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.socfpga_dwmac* %0, %struct.socfpga_dwmac** %3, align 8
  %11 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %12 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %11, i32 0, i32 8
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %4, align 8
  %14 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %15 = call i32 @socfpga_get_plat_phymode(%struct.socfpga_dwmac* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %17 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %20 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @socfpga_set_phy_mode_common(i32 %22, i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %125

28:                                               ; preds = %1
  %29 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %30 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %37 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reset_control_assert(i32 %38)
  %40 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %41 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @reset_control_assert(i32 %42)
  %44 = load %struct.regmap*, %struct.regmap** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @regmap_read(%struct.regmap* %44, i32 %45, i32* %8)
  %47 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PHYSEL_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %55 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %66, %62, %58, %35
  %71 = load i32, i32* @SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.regmap*, %struct.regmap** %4, align 8
  %75 = load i32, i32* @SYSMGR_FPGAINTF_EMAC_REG, align 4
  %76 = call i32 @regmap_read(%struct.regmap* %74, i32 %75, i32* %10)
  %77 = load i32, i32* @SYSMGR_FPGAINTF_EMAC_BIT, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load %struct.regmap*, %struct.regmap** %4, align 8
  %83 = load i32, i32* @SYSMGR_FPGAINTF_EMAC_REG, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @regmap_write(%struct.regmap* %82, i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %66
  %87 = load i32, i32* @SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %70
  %92 = load %struct.regmap*, %struct.regmap** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @regmap_write(%struct.regmap* %92, i32 %93, i32 %94)
  %96 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %97 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @reset_control_deassert(i32 %98)
  %100 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %101 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @reset_control_deassert(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %91
  %108 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %109 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %113 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %112, i32 0, i32 3
  %114 = call i64 @tse_pcs_init(i32 %111, %struct.TYPE_2__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %118 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %125

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %91
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %116, %25
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @socfpga_get_plat_phymode(%struct.socfpga_dwmac*) #1

declare dso_local i64 @socfpga_set_phy_mode_common(i32, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i64 @tse_pcs_init(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
