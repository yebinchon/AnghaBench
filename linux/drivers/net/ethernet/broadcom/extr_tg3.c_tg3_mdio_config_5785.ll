; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mdio_config_5785.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mdio_config_5785.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }
%struct.phy_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_PHYCFG2_50610_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_AC131_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_RTL8211C_LED_MODES = common dso_local global i32 0, align 4
@MAC_PHYCFG2_RTL8201E_LED_MODES = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@MAC_PHYCFG2 = common dso_local global i32 0, align 4
@MAC_PHYCFG1 = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_INT = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RXCLK_TO_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXCLK_TO_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RXCLK_TIMEOUT = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXCLK_TIMEOUT = common dso_local global i32 0, align 4
@RGMII_INBAND_DISABLE = common dso_local global i32 0, align 4
@MAC_PHYCFG2_EMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_FMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_GMODE_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_ACT_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_QUAL_MASK_MASK = common dso_local global i32 0, align 4
@MAC_PHYCFG2_INBAND_ENABLE = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_EXT_RX_DEC = common dso_local global i32 0, align 4
@MAC_PHYCFG1_RGMII_SND_STAT_EN = common dso_local global i32 0, align 4
@RGMII_EXT_IBND_RX_EN = common dso_local global i32 0, align 4
@RGMII_EXT_IBND_TX_EN = common dso_local global i32 0, align 4
@MAC_PHYCFG1_TXC_DRV = common dso_local global i32 0, align 4
@MAC_EXT_RGMII_MODE = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_INT_B = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_QUALITY = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_ACTIVITY = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_RX_ENG_DET = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_ENABLE = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_LOWPWR = common dso_local global i32 0, align 4
@MAC_RGMII_MODE_TX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_mdio_config_5785 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_mdio_config_5785(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.tg3*, %struct.tg3** %2, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.phy_device* @mdiobus_get_phy(i32 %7, i32 %10)
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %16, %21
  switch i32 %22, label %31 [
    i32 132, label %23
    i32 131, label %23
    i32 130, label %25
    i32 128, label %27
    i32 129, label %29
  ]

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @MAC_PHYCFG2_50610_LED_MODES, align 4
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @MAC_PHYCFG2_AC131_LED_MODES, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @MAC_PHYCFG2_RTL8211C_LED_MODES, align 4
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @MAC_PHYCFG2_RTL8201E_LED_MODES, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %1
  br label %186

32:                                               ; preds = %29, %27, %25, %23
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i32, i32* @MAC_PHYCFG2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @tw32(i32 %39, i32 %40)
  %42 = load i32, i32* @MAC_PHYCFG1, align 4
  %43 = call i32 @tr32(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @MAC_PHYCFG1_RGMII_INT, align 4
  %45 = load i32, i32* @MAC_PHYCFG1_RXCLK_TO_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAC_PHYCFG1_TXCLK_TO_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @MAC_PHYCFG1_RXCLK_TIMEOUT, align 4
  %53 = load i32, i32* @MAC_PHYCFG1_TXCLK_TIMEOUT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @MAC_PHYCFG1, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @tw32(i32 %57, i32 %58)
  br label %186

60:                                               ; preds = %32
  %61 = load %struct.tg3*, %struct.tg3** %2, align 8
  %62 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %63 = call i64 @tg3_flag(%struct.tg3* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @MAC_PHYCFG2_EMODE_MASK_MASK, align 4
  %67 = load i32, i32* @MAC_PHYCFG2_FMODE_MASK_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MAC_PHYCFG2_GMODE_MASK_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MAC_PHYCFG2_ACT_MASK_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MAC_PHYCFG2_QUAL_MASK_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MAC_PHYCFG2_INBAND_ENABLE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %65, %60
  %80 = load i32, i32* @MAC_PHYCFG2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @tw32(i32 %80, i32 %81)
  %83 = load i32, i32* @MAC_PHYCFG1, align 4
  %84 = call i32 @tr32(i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @MAC_PHYCFG1_RXCLK_TO_MASK, align 4
  %86 = load i32, i32* @MAC_PHYCFG1_TXCLK_TO_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MAC_PHYCFG1_RGMII_EXT_RX_DEC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @MAC_PHYCFG1_RGMII_SND_STAT_EN, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load %struct.tg3*, %struct.tg3** %2, align 8
  %96 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %97 = call i64 @tg3_flag(%struct.tg3* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %79
  %100 = load %struct.tg3*, %struct.tg3** %2, align 8
  %101 = load i32, i32* @RGMII_EXT_IBND_RX_EN, align 4
  %102 = call i64 @tg3_flag(%struct.tg3* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @MAC_PHYCFG1_RGMII_EXT_RX_DEC, align 4
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.tg3*, %struct.tg3** %2, align 8
  %110 = load i32, i32* @RGMII_EXT_IBND_TX_EN, align 4
  %111 = call i64 @tg3_flag(%struct.tg3* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @MAC_PHYCFG1_RGMII_SND_STAT_EN, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %79
  %119 = load i32, i32* @MAC_PHYCFG1_RXCLK_TIMEOUT, align 4
  %120 = load i32, i32* @MAC_PHYCFG1_TXCLK_TIMEOUT, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MAC_PHYCFG1_RGMII_INT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MAC_PHYCFG1_TXC_DRV, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @MAC_PHYCFG1, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @tw32(i32 %128, i32 %129)
  %131 = load i32, i32* @MAC_EXT_RGMII_MODE, align 4
  %132 = call i32 @tr32(i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* @MAC_RGMII_MODE_RX_INT_B, align 4
  %134 = load i32, i32* @MAC_RGMII_MODE_RX_QUALITY, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MAC_RGMII_MODE_RX_ACTIVITY, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MAC_RGMII_MODE_RX_ENG_DET, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @MAC_RGMII_MODE_TX_ENABLE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MAC_RGMII_MODE_TX_LOWPWR, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MAC_RGMII_MODE_TX_RESET, align 4
  %145 = or i32 %143, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %3, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = load %struct.tg3*, %struct.tg3** %2, align 8
  %150 = load i32, i32* @RGMII_INBAND_DISABLE, align 4
  %151 = call i64 @tg3_flag(%struct.tg3* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %182, label %153

153:                                              ; preds = %118
  %154 = load %struct.tg3*, %struct.tg3** %2, align 8
  %155 = load i32, i32* @RGMII_EXT_IBND_RX_EN, align 4
  %156 = call i64 @tg3_flag(%struct.tg3* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32, i32* @MAC_RGMII_MODE_RX_INT_B, align 4
  %160 = load i32, i32* @MAC_RGMII_MODE_RX_QUALITY, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MAC_RGMII_MODE_RX_ACTIVITY, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @MAC_RGMII_MODE_RX_ENG_DET, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %158, %153
  %169 = load %struct.tg3*, %struct.tg3** %2, align 8
  %170 = load i32, i32* @RGMII_EXT_IBND_TX_EN, align 4
  %171 = call i64 @tg3_flag(%struct.tg3* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i32, i32* @MAC_RGMII_MODE_TX_ENABLE, align 4
  %175 = load i32, i32* @MAC_RGMII_MODE_TX_LOWPWR, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @MAC_RGMII_MODE_TX_RESET, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %3, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %173, %168
  br label %182

182:                                              ; preds = %181, %118
  %183 = load i32, i32* @MAC_EXT_RGMII_MODE, align 4
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @tw32(i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %38, %31
  ret void
}

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
