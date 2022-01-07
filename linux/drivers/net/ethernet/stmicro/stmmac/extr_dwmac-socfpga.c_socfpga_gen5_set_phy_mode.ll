; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_gen5_set_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-socfpga.c_socfpga_gen5_set_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_dwmac = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i64, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad phy mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII = common dso_local global i32 0, align 4
@SYSMGR_EMACGRP_CTRL_PHYSEL_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK = common dso_local global i32 0, align 4
@SYSMGR_FPGAGRP_MODULE_REG = common dso_local global i32 0, align 4
@SYSMGR_FPGAGRP_MODULE_EMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to initialize TSE PCS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_dwmac*)* @socfpga_gen5_set_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_gen5_set_phy_mode(%struct.socfpga_dwmac* %0) #0 {
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
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %27 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %141

33:                                               ; preds = %1
  %34 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %35 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %42 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @reset_control_assert(i32 %43)
  %45 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %46 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @reset_control_assert(i32 %47)
  %49 = load %struct.regmap*, %struct.regmap** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @regmap_read(%struct.regmap* %49, i32 %50, i32* %8)
  %52 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PHYSEL_MASK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %64 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %40
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75, %71, %67, %40
  %80 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 2
  %83 = shl i32 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.regmap*, %struct.regmap** %4, align 8
  %87 = load i32, i32* @SYSMGR_FPGAGRP_MODULE_REG, align 4
  %88 = call i32 @regmap_read(%struct.regmap* %86, i32 %87, i32* %10)
  %89 = load i32, i32* @SYSMGR_FPGAGRP_MODULE_EMAC, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sdiv i32 %90, 2
  %92 = shl i32 %89, %91
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load %struct.regmap*, %struct.regmap** %4, align 8
  %96 = load i32, i32* @SYSMGR_FPGAGRP_MODULE_REG, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @regmap_write(%struct.regmap* %95, i32 %96, i32 %97)
  br label %107

99:                                               ; preds = %75
  %100 = load i32, i32* @SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sdiv i32 %101, 2
  %103 = shl i32 %100, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %99, %79
  %108 = load %struct.regmap*, %struct.regmap** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @regmap_write(%struct.regmap* %108, i32 %109, i32 %110)
  %112 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %113 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @reset_control_deassert(i32 %114)
  %116 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %117 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @reset_control_deassert(i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %107
  %124 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %125 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %129 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %128, i32 0, i32 3
  %130 = call i64 @tse_pcs_init(i32 %127, %struct.TYPE_2__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.socfpga_dwmac*, %struct.socfpga_dwmac** %3, align 8
  %134 = getelementptr inbounds %struct.socfpga_dwmac, %struct.socfpga_dwmac* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, ...) @dev_err(i32 %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %107
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %132, %25
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @socfpga_get_plat_phymode(%struct.socfpga_dwmac*) #1

declare dso_local i64 @socfpga_set_phy_mode_common(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i64 @tse_pcs_init(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
