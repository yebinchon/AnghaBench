; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_power_saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_power_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i64, i64, %struct.atl1c_adapter* }
%struct.atl1c_adapter = type { i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@MAC_CTRL_SPEED_1000 = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED_10_100 = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@REG_GPHY_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_CLK_SEL_DIS = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED = common dso_local global i32 0, align 4
@MAC_CTRL_DUPLX = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_CLS = common dso_local global i32 0, align 4
@GPHY_CTRL_SEL_ANA_RST = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CTRL_PWDOWN_HW = common dso_local global i32 0, align 4
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@AT_WUFC_MAG = common dso_local global i32 0, align 4
@MAC_CTRL_BC_EN = common dso_local global i32 0, align 4
@WOL_MAGIC_EN = common dso_local global i32 0, align 4
@WOL_MAGIC_PME_EN = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@L2CB_V11 = common dso_local global i64 0, align 8
@WOL_PATTERN_EN = common dso_local global i32 0, align 4
@WOL_PATTERN_PME_EN = common dso_local global i32 0, align 4
@AT_WUFC_LNKC = common dso_local global i32 0, align 4
@WOL_LINK_CHG_EN = common dso_local global i32 0, align 4
@WOL_LINK_CHG_PME_EN = common dso_local global i32 0, align 4
@MII_IER = common dso_local global i32 0, align 4
@IER_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: write phy MII_IER failed.\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@MII_ISR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: suspend MAC=%x,MASTER=%x,PHY=0x%x,WOL=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_power_saving(%struct.atl1c_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atl1c_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %15 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %14, i32 0, i32 3
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %15, align 8
  store %struct.atl1c_adapter* %16, %struct.atl1c_adapter** %6, align 8
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPEED_1000, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @MAC_CTRL_SPEED_1000, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MAC_CTRL_SPEED_10_100, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %12, align 4
  %31 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %32 = load i32, i32* @REG_MASTER_CTRL, align 4
  %33 = call i32 @AT_READ_REG(%struct.atl1c_hw* %31, i32 %32, i32* %8)
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %35 = load i32, i32* @REG_MAC_CTRL, align 4
  %36 = call i32 @AT_READ_REG(%struct.atl1c_hw* %34, i32 %35, i32* %9)
  %37 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %38 = load i32, i32* @REG_GPHY_CTRL, align 4
  %39 = call i32 @AT_READ_REG(%struct.atl1c_hw* %37, i32 %38, i32* %10)
  %40 = load i32, i32* @MASTER_CTRL_CLK_SEL_DIS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAC_CTRL_SPEED, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @FIELD_SETX(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %49 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FULL_DUPLEX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %29
  %66 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %67 = load i32, i32* @GPHY_CTRL_CLS, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @GPHY_CTRL_SEL_ANA_RST, align 4
  %73 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* @MASTER_CTRL_CLK_SEL_DIS, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @GPHY_CTRL_PHY_IDDQ, align 4
  %86 = load i32, i32* @GPHY_CTRL_PWDOWN_HW, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %91 = load i32, i32* @REG_MASTER_CTRL, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %95 = load i32, i32* @REG_MAC_CTRL, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %94, i32 %95, i32 %96)
  %98 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %99 = load i32, i32* @REG_GPHY_CTRL, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %98, i32 %99, i32 %100)
  %102 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %103 = load i32, i32* @REG_WOL_CTRL, align 4
  %104 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %102, i32 %103, i32 0)
  %105 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %106 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  store i32 0, i32* %3, align 4
  br label %194

107:                                              ; preds = %65
  %108 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @AT_WUFC_MAG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %107
  %116 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %117 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* @WOL_MAGIC_EN, align 4
  %122 = load i32, i32* @WOL_MAGIC_PME_EN, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %127 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @athr_l2c_b, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %115
  %132 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %133 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @L2CB_V11, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i32, i32* @WOL_PATTERN_EN, align 4
  %139 = load i32, i32* @WOL_PATTERN_PME_EN, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %137, %131, %115
  br label %144

144:                                              ; preds = %143, %107
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @AT_WUFC_LNKC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i32, i32* @WOL_LINK_CHG_EN, align 4
  %151 = load i32, i32* @WOL_LINK_CHG_PME_EN, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %156 = load i32, i32* @MII_IER, align 4
  %157 = load i32, i32* @IER_LINK_UP, align 4
  %158 = call i64 @atl1c_write_phy_reg(%struct.atl1c_hw* %155, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %149
  %161 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = load i32, i32* @atl1c_driver_name, align 4
  %164 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %160, %149
  br label %166

166:                                              ; preds = %165, %144
  %167 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %168 = load i32, i32* @MII_ISR, align 4
  %169 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %167, i32 %168, i32* %13)
  %170 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 0
  %172 = load i32, i32* @atl1c_driver_name, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %179 = load i32, i32* @REG_MASTER_CTRL, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %178, i32 %179, i32 %180)
  %182 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %183 = load i32, i32* @REG_MAC_CTRL, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %182, i32 %183, i32 %184)
  %186 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %187 = load i32, i32* @REG_GPHY_CTRL, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %186, i32 %187, i32 %188)
  %190 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %191 = load i32, i32* @REG_WOL_CTRL, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %190, i32 %191, i32 %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %166, %81
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i64 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
