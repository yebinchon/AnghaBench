; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { i32, i32, %struct.atl1e_hw, i32 }
%struct.atl1e_hw = type { i32, i64 }

@__AT_RESETTING = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set phy register failed\0A\00", align 1
@AT_WUFC_MAG = common dso_local global i32 0, align 4
@WOL_MAGIC_EN = common dso_local global i32 0, align 4
@WOL_MAGIC_PME_EN = common dso_local global i32 0, align 4
@AT_WUFC_LNKC = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@AT_SUSPEND_LINK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Link may change when suspend\0A\00", align 1
@WOL_LINK_CHG_EN = common dso_local global i32 0, align 4
@WOL_LINK_CHG_PME_EN = common dso_local global i32 0, align 4
@MII_INT_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"read write phy register failed\0A\00", align 1
@MII_INT_STATUS = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED_10_100 = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED_SHIFT = common dso_local global i32 0, align 4
@MAC_CTRL_PRMLEN_MASK = common dso_local global i32 0, align 4
@MAC_CTRL_PRMLEN_SHIFT = common dso_local global i32 0, align 4
@MAC_CTRL_BC_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"suspend MAC=0x%x\0A\00", align 1
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@REG_PCIE_PHYMISC = common dso_local global i32 0, align 4
@PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @atl1e_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl1e_adapter*, align 8
  %7 = alloca %struct.atl1e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %16)
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.atl1e_adapter* %19, %struct.atl1e_adapter** %6, align 8
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 2
  store %struct.atl1e_hw* %21, %struct.atl1e_hw** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @__AT_RESETTING, align 4
  %30 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %30, i32 0, i32 3
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %35 = call i32 @atl1e_down(%struct.atl1e_adapter* %34)
  br label %36

36:                                               ; preds = %28, %2
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_device_detach(%struct.net_device* %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %199

41:                                               ; preds = %36
  %42 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %43 = load i32, i32* @MII_BMSR, align 4
  %44 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %42, i32 %43, i32* %12)
  %45 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %46 = load i32, i32* @MII_BMSR, align 4
  %47 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %45, i32 %46, i32* %12)
  %48 = load i32, i32* @ADVERTISE_10HALF, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %50 = load i32, i32* @MII_CTRL1000, align 4
  %51 = call i64 @atl1e_write_phy_reg(%struct.atl1e_hw* %49, i32 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %41
  %54 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %55 = load i32, i32* @MII_ADVERTISE, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @atl1e_write_phy_reg(%struct.atl1e_hw* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %61 = call i64 @atl1e_phy_commit(%struct.atl1e_hw* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %53, %41
  %64 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %200

68:                                               ; preds = %59
  %69 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %70 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @AT_WUFC_MAG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @WOL_MAGIC_EN, align 4
  %77 = load i32, i32* @WOL_MAGIC_PME_EN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @AT_WUFC_LNKC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %137

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @BMSR_LSTATUS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %86
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @AT_SUSPEND_LINK_TIMEOUT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = call i32 @msleep(i32 100)
  %98 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %99 = load i32, i32* @MII_BMSR, align 4
  %100 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %98, i32 %99, i32* %12)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @BMSR_LSTATUS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %92

110:                                              ; preds = %105, %92
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @BMSR_LSTATUS, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* @WOL_LINK_CHG_EN, align 4
  %123 = load i32, i32* @WOL_LINK_CHG_PME_EN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %128 = load i32, i32* @MII_INT_CTRL, align 4
  %129 = call i64 @atl1e_write_phy_reg(%struct.atl1e_hw* %127, i32 %128, i32 1024)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %200

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %81
  %138 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %139 = load i32, i32* @MII_INT_STATUS, align 4
  %140 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %138, i32 %139, i32* %13)
  %141 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @MAC_CTRL_SPEED_10_100, align 4
  %143 = load i32, i32* @MAC_CTRL_SPEED_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* @MAC_CTRL_PRMLEN_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @MAC_CTRL_PRMLEN_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @__atl1e_vlan_mode(i32 %160, i32* %9)
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @AT_WUFC_MAG, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %137
  %167 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %166, %137
  %171 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %177 = load i32, i32* @REG_WOL_CTRL, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %176, i32 %177, i32 %178)
  %180 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %181 = load i32, i32* @REG_MAC_CTRL, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %180, i32 %181, i32 %182)
  %184 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %185 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %186 = call i32 @AT_READ_REG(%struct.atl1e_hw* %184, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %191 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %190, i32 %191, i32 %192)
  %194 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %195 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @pci_choose_state(%struct.pci_dev* %195, i32 %196)
  %198 = call i32 @pci_enable_wake(%struct.pci_dev* %194, i32 %197, i32 1)
  br label %223

199:                                              ; preds = %36
  br label %200

200:                                              ; preds = %199, %131, %63
  %201 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %202 = load i32, i32* @REG_WOL_CTRL, align 4
  %203 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %201, i32 %202, i32 0)
  %204 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %205 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %206 = call i32 @AT_READ_REG(%struct.atl1e_hw* %204, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %208 = load i32, i32* %8, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %211 = load i32, i32* @REG_PCIE_PHYMISC, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %210, i32 %211, i32 %212)
  %214 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %215 = call i32 @atl1e_force_ps(%struct.atl1e_hw* %214)
  %216 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %217 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  %218 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %219 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @pci_choose_state(%struct.pci_dev* %219, i32 %220)
  %222 = call i32 @pci_enable_wake(%struct.pci_dev* %218, i32 %221, i32 0)
  br label %223

223:                                              ; preds = %200, %170
  %224 = load %struct.net_device*, %struct.net_device** %5, align 8
  %225 = call i64 @netif_running(%struct.net_device* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %229 = call i32 @atl1e_free_irq(%struct.atl1e_adapter* %228)
  br label %230

230:                                              ; preds = %227, %223
  %231 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %232 = call i32 @pci_disable_device(%struct.pci_dev* %231)
  %233 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %234 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i32 @pci_choose_state(%struct.pci_dev* %234, i32 %235)
  %237 = call i32 @pci_set_power_state(%struct.pci_dev* %233, i32 %236)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atl1e_down(%struct.atl1e_adapter*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @atl1e_read_phy_reg(%struct.atl1e_hw*, i32, i32*) #1

declare dso_local i64 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i64 @atl1e_phy_commit(%struct.atl1e_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__atl1e_vlan_mode(i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @atl1e_force_ps(%struct.atl1e_hw*) #1

declare dso_local i32 @atl1e_free_irq(%struct.atl1e_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
