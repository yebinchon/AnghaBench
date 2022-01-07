; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_autoneg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_autoneg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@CHIPREV_ID_5701_A0 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_B0 = common dso_local global i64 0, align 8
@CTL1000_AS_MASTER = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_MODE = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_LPI_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV_100TX = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV_1000T = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP26_ALNOKO = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP26_RMRXSTO = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP26_OPCSINPT = common dso_local global i32 0, align 4
@MII_TG3_DSP_TAP26 = common dso_local global i32 0, align 4
@MII_TG3_DSP_CH34TP2 = common dso_local global i32 0, align 4
@MII_TG3_DSP_CH34TP2_HIBW01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32)* @tg3_phy_autoneg_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_autoneg_cfg(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ADVERTISE_CSMA, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ethtool_adv_to_mii_adv_t(i32 %12)
  %14 = load i32, i32* @ADVERTISE_ALL, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mii_advertise_flowctrl(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.tg3*, %struct.tg3** %4, align 8
  %23 = load i32, i32* @MII_ADVERTISE, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @tg3_writephy(%struct.tg3* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %168

29:                                               ; preds = %3
  %30 = load %struct.tg3*, %struct.tg3** %4, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ethtool_adv_to_mii_ctrl1000_t(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.tg3*, %struct.tg3** %4, align 8
  %40 = call i64 @tg3_chip_rev_id(%struct.tg3* %39)
  %41 = load i64, i64* @CHIPREV_ID_5701_A0, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.tg3*, %struct.tg3** %4, align 8
  %45 = call i64 @tg3_chip_rev_id(%struct.tg3* %44)
  %46 = load i64, i64* @CHIPREV_ID_5701_B0, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %36
  %49 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %50 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.tg3*, %struct.tg3** %4, align 8
  %56 = load i32, i32* @MII_CTRL1000, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @tg3_writephy(%struct.tg3* %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %168

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.tg3*, %struct.tg3** %4, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %168

71:                                               ; preds = %63
  %72 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %73 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %74 = call i32 @tr32(i32 %73)
  %75 = load i32, i32* @TG3_CPMU_EEEMD_LPI_ENABLE, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @tw32(i32 %72, i32 %77)
  %79 = load %struct.tg3*, %struct.tg3** %4, align 8
  %80 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %79, i32 1)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %167, label %83

83:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @MDIO_AN_EEE_ADV_100TX, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @MDIO_AN_EEE_ADV_1000T, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.tg3*, %struct.tg3** %4, align 8
  %103 = getelementptr inbounds %struct.tg3, %struct.tg3* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  %108 = load %struct.tg3*, %struct.tg3** %4, align 8
  %109 = getelementptr inbounds %struct.tg3, %struct.tg3* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %120

111:                                              ; preds = %101
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %114 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = load %struct.tg3*, %struct.tg3** %4, align 8
  %118 = getelementptr inbounds %struct.tg3, %struct.tg3* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %111, %107
  %121 = load %struct.tg3*, %struct.tg3** %4, align 8
  %122 = load i32, i32* @MDIO_MMD_AN, align 4
  %123 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @tg3_phy_cl45_write(%struct.tg3* %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %120
  %130 = load %struct.tg3*, %struct.tg3** %4, align 8
  %131 = call i32 @tg3_asic_rev(%struct.tg3* %130)
  switch i32 %131, label %159 [
    i32 133, label %132
    i32 129, label %132
    i32 128, label %132
    i32 132, label %132
    i32 131, label %146
    i32 130, label %146
  ]

132:                                              ; preds = %129, %129, %129, %129
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @MII_TG3_DSP_TAP26_ALNOKO, align 4
  %137 = load i32, i32* @MII_TG3_DSP_TAP26_RMRXSTO, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MII_TG3_DSP_TAP26_OPCSINPT, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %135, %132
  %142 = load %struct.tg3*, %struct.tg3** %4, align 8
  %143 = load i32, i32* @MII_TG3_DSP_TAP26, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @tg3_phydsp_write(%struct.tg3* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %129, %129, %141
  %147 = load %struct.tg3*, %struct.tg3** %4, align 8
  %148 = load i32, i32* @MII_TG3_DSP_CH34TP2, align 4
  %149 = call i32 @tg3_phydsp_read(%struct.tg3* %147, i32 %148, i32* %8)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load %struct.tg3*, %struct.tg3** %4, align 8
  %153 = load i32, i32* @MII_TG3_DSP_CH34TP2, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @MII_TG3_DSP_CH34TP2_HIBW01, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @tg3_phydsp_write(%struct.tg3* %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.tg3*, %struct.tg3** %4, align 8
  %161 = call i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3* %160, i32 0)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %71
  br label %168

168:                                              ; preds = %167, %70, %61, %28
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_phy_toggle_auxctl_smdsp(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_cl45_write(%struct.tg3*, i32, i32, i32) #1

declare dso_local i32 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_phydsp_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phydsp_read(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
