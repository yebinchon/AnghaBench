; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_wol_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_wol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.sky2_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.sky2_hw = type { i64 }

@B0_CTST = common dso_local global i64 0, align 8
@CS_RST_CLR = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@FC_NONE = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_FC_TX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_DUP_FULL = common dso_local global i32 0, align 4
@GM_GPCR_FC_RX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_FCT_DIS = common dso_local global i32 0, align 4
@WOL_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WOL_CTRL_STAT = common dso_local global i32 0, align 4
@WOL_CTL_CLEAR_RESULT = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WOL_CTL_ENA_PME_ON_LINK_CHG = common dso_local global i32 0, align 4
@WOL_CTL_ENA_LINK_CHG_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_LINK_CHG = common dso_local global i32 0, align 4
@WOL_CTL_DIS_LINK_CHG_UNIT = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WOL_CTL_ENA_PME_ON_MAGIC_PKT = common dso_local global i32 0, align 4
@WOL_CTL_ENA_MAGIC_PKT_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_MAGIC_PKT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_MAGIC_PKT_UNIT = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PME_ON_PATTERN = common dso_local global i32 0, align 4
@WOL_CTL_DIS_PATTERN_UNIT = common dso_local global i32 0, align 4
@Y2_HW_WOL_OFF = common dso_local global i32 0, align 4
@legacy_pme = common dso_local global i64 0, align 8
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@PCI_Y2_PME_LEGACY = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_wol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_wol_init(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 6
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %9, align 8
  store %struct.sky2_hw* %10, %struct.sky2_hw** %3, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %15 = load i64, i64* @B0_CTST, align 8
  %16 = load i32, i32* @CS_RST_CLR, align 4
  %17 = call i32 @sky2_write16(%struct.sky2_hw* %14, i64 %15, i32 %16)
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %21 = call i64 @SK_REG(i32 %19, i32 %20)
  %22 = load i32, i32* @GMLC_RST_CLR, align 4
  %23 = call i32 @sky2_write16(%struct.sky2_hw* %18, i64 %21, i32 %22)
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GPHY_CTRL, align 4
  %27 = call i64 @SK_REG(i32 %25, i32 %26)
  %28 = load i32, i32* @GPC_RST_CLR, align 4
  %29 = call i32 @sky2_write8(%struct.sky2_hw* %24, i64 %27, i32 %28)
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @GMAC_CTRL, align 4
  %33 = call i64 @SK_REG(i32 %31, i32 %32)
  %34 = load i32, i32* @GMC_RST_CLR, align 4
  %35 = call i32 @sky2_write8(%struct.sky2_hw* %30, i64 %33, i32 %34)
  %36 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %37 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %40 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %43 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %47 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @FC_NONE, align 4
  %51 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %52 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %54 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %53, i32 0, i32 5
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @sky2_phy_power_up(%struct.sky2_hw* %56, i32 %57)
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @sky2_phy_init(%struct.sky2_hw* %59, i32 %60)
  %62 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %63 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %62, i32 0, i32 5
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %67 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %70 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @GM_GP_CTRL, align 4
  %74 = load i32, i32* @GM_GPCR_FC_TX_DIS, align 4
  %75 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @gma_write16(%struct.sky2_hw* %71, i32 %72, i32 %73, i32 %84)
  %86 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %87 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @WOL_MAC_ADDR, align 4
  %91 = call i64 @WOL_REGS(i32 %89, i32 %90)
  %92 = add nsw i64 %88, %91
  %93 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %94 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy_toio(i64 %92, i32 %97, i32 %98)
  %100 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @WOL_CTRL_STAT, align 4
  %103 = call i64 @WOL_REGS(i32 %101, i32 %102)
  %104 = load i32, i32* @WOL_CTL_CLEAR_RESULT, align 4
  %105 = call i32 @sky2_write16(%struct.sky2_hw* %100, i64 %103, i32 %104)
  store i32 0, i32* %6, align 4
  %106 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %107 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WAKE_PHY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %1
  %113 = load i32, i32* @WOL_CTL_ENA_PME_ON_LINK_CHG, align 4
  %114 = load i32, i32* @WOL_CTL_ENA_LINK_CHG_UNIT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %124

118:                                              ; preds = %1
  %119 = load i32, i32* @WOL_CTL_DIS_PME_ON_LINK_CHG, align 4
  %120 = load i32, i32* @WOL_CTL_DIS_LINK_CHG_UNIT, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %126 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WAKE_MAGIC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* @WOL_CTL_ENA_PME_ON_MAGIC_PKT, align 4
  %133 = load i32, i32* @WOL_CTL_ENA_MAGIC_PKT_UNIT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %143

137:                                              ; preds = %124
  %138 = load i32, i32* @WOL_CTL_DIS_PME_ON_MAGIC_PKT, align 4
  %139 = load i32, i32* @WOL_CTL_DIS_MAGIC_PKT_UNIT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %137, %131
  %144 = load i32, i32* @WOL_CTL_DIS_PME_ON_PATTERN, align 4
  %145 = load i32, i32* @WOL_CTL_DIS_PATTERN_UNIT, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  %149 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @WOL_CTRL_STAT, align 4
  %152 = call i64 @WOL_REGS(i32 %150, i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @sky2_write16(%struct.sky2_hw* %149, i64 %152, i32 %153)
  %155 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %156 = load i64, i64* @B0_CTST, align 8
  %157 = load i32, i32* @Y2_HW_WOL_OFF, align 4
  %158 = call i32 @sky2_write16(%struct.sky2_hw* %155, i64 %156, i32 %157)
  %159 = load i64, i64* @legacy_pme, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %143
  %162 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %163 = load i32, i32* @PCI_DEV_REG1, align 4
  %164 = call i32 @sky2_pci_read32(%struct.sky2_hw* %162, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @PCI_Y2_PME_LEGACY, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %169 = load i32, i32* @PCI_DEV_REG1, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @sky2_pci_write32(%struct.sky2_hw* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %161, %143
  %173 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %176 = call i64 @SK_REG(i32 %174, i32 %175)
  %177 = load i32, i32* @GMF_RST_SET, align 4
  %178 = call i32 @sky2_write8(%struct.sky2_hw* %173, i64 %176, i32 %177)
  %179 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %180 = load i64, i64* @B0_CTST, align 8
  %181 = call i32 @sky2_read32(%struct.sky2_hw* %179, i64 %180)
  ret void
}

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i64, i32) #1

declare dso_local i64 @SK_REG(i32, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sky2_phy_power_up(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_phy_init(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i64 @WOL_REGS(i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
