; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32, i32 }

@SK_PHY_BCOM = common dso_local global i32 0, align 4
@PHY_BCOM_P_EXT_CTRL = common dso_local global i32 0, align 4
@PHY_B_PEC_LED_OFF = common dso_local global i32 0, align 4
@TX_LED_VAL = common dso_local global i32 0, align 4
@TX_LED_CTRL = common dso_local global i32 0, align 4
@LED_T_OFF = common dso_local global i32 0, align 4
@LNK_LED_REG = common dso_local global i32 0, align 4
@LINKLED_OFF = common dso_local global i32 0, align 4
@RX_LED_VAL = common dso_local global i32 0, align 4
@RX_LED_CTRL = common dso_local global i32 0, align 4
@LINKLED_ON = common dso_local global i32 0, align 4
@LINKLED_LINKSYNC_ON = common dso_local global i32 0, align 4
@LED_START = common dso_local global i32 0, align 4
@RX_LED_TST = common dso_local global i32 0, align 4
@LED_T_ON = common dso_local global i32 0, align 4
@PHY_B_PEC_LED_ON = common dso_local global i32 0, align 4
@TX_LED_TST = common dso_local global i32 0, align 4
@PHY_MARV_LED_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_LED_OVER = common dso_local global i32 0, align 4
@MO_LED_OFF = common dso_local global i32 0, align 4
@PULS_170MS = common dso_local global i32 0, align 4
@BLINK_84MS = common dso_local global i32 0, align 4
@PHY_M_LEDC_TX_CTRL = common dso_local global i32 0, align 4
@PHY_M_LEDC_DP_CTRL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@MO_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, i32)* @skge_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_led(%struct.skge_port* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %8 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %7, i32 0, i32 2
  %9 = load %struct.skge_hw*, %struct.skge_hw** %8, align 8
  store %struct.skge_hw* %9, %struct.skge_hw** %5, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %14 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %17 = call i64 @is_genesis(%struct.skge_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %137

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %136 [
    i32 130, label %21
    i32 129, label %63
    i32 128, label %88
  ]

21:                                               ; preds = %19
  %22 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %23 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SK_PHY_BCOM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PHY_BCOM_P_EXT_CTRL, align 4
  %31 = load i32, i32* @PHY_B_PEC_LED_OFF, align 4
  %32 = call i32 @xm_phy_write(%struct.skge_hw* %28, i32 %29, i32 %30, i32 %31)
  br label %45

33:                                               ; preds = %21
  %34 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @TX_LED_VAL, align 4
  %37 = call i32 @SK_REG(i32 %35, i32 %36)
  %38 = call i32 @skge_write32(%struct.skge_hw* %34, i32 %37, i32 0)
  %39 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TX_LED_CTRL, align 4
  %42 = call i32 @SK_REG(i32 %40, i32 %41)
  %43 = load i32, i32* @LED_T_OFF, align 4
  %44 = call i32 @skge_write8(%struct.skge_hw* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %27
  %46 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LNK_LED_REG, align 4
  %49 = call i32 @SK_REG(i32 %47, i32 %48)
  %50 = load i32, i32* @LINKLED_OFF, align 4
  %51 = call i32 @skge_write8(%struct.skge_hw* %46, i32 %49, i32 %50)
  %52 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RX_LED_VAL, align 4
  %55 = call i32 @SK_REG(i32 %53, i32 %54)
  %56 = call i32 @skge_write32(%struct.skge_hw* %52, i32 %55, i32 0)
  %57 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @RX_LED_CTRL, align 4
  %60 = call i32 @SK_REG(i32 %58, i32 %59)
  %61 = load i32, i32* @LED_T_OFF, align 4
  %62 = call i32 @skge_write8(%struct.skge_hw* %57, i32 %60, i32 %61)
  br label %136

63:                                               ; preds = %19
  %64 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @LNK_LED_REG, align 4
  %67 = call i32 @SK_REG(i32 %65, i32 %66)
  %68 = load i32, i32* @LINKLED_ON, align 4
  %69 = call i32 @skge_write8(%struct.skge_hw* %64, i32 %67, i32 %68)
  %70 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @LNK_LED_REG, align 4
  %73 = call i32 @SK_REG(i32 %71, i32 %72)
  %74 = load i32, i32* @LINKLED_LINKSYNC_ON, align 4
  %75 = call i32 @skge_write8(%struct.skge_hw* %70, i32 %73, i32 %74)
  %76 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @RX_LED_CTRL, align 4
  %79 = call i32 @SK_REG(i32 %77, i32 %78)
  %80 = load i32, i32* @LED_START, align 4
  %81 = call i32 @skge_write8(%struct.skge_hw* %76, i32 %79, i32 %80)
  %82 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @TX_LED_CTRL, align 4
  %85 = call i32 @SK_REG(i32 %83, i32 %84)
  %86 = load i32, i32* @LED_START, align 4
  %87 = call i32 @skge_write8(%struct.skge_hw* %82, i32 %85, i32 %86)
  br label %136

88:                                               ; preds = %19
  %89 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RX_LED_TST, align 4
  %92 = call i32 @SK_REG(i32 %90, i32 %91)
  %93 = load i32, i32* @LED_T_ON, align 4
  %94 = call i32 @skge_write8(%struct.skge_hw* %89, i32 %92, i32 %93)
  %95 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @RX_LED_VAL, align 4
  %98 = call i32 @SK_REG(i32 %96, i32 %97)
  %99 = call i32 @skge_write32(%struct.skge_hw* %95, i32 %98, i32 100)
  %100 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @RX_LED_CTRL, align 4
  %103 = call i32 @SK_REG(i32 %101, i32 %102)
  %104 = load i32, i32* @LED_START, align 4
  %105 = call i32 @skge_write8(%struct.skge_hw* %100, i32 %103, i32 %104)
  %106 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %107 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SK_PHY_BCOM, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %88
  %112 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PHY_BCOM_P_EXT_CTRL, align 4
  %115 = load i32, i32* @PHY_B_PEC_LED_ON, align 4
  %116 = call i32 @xm_phy_write(%struct.skge_hw* %112, i32 %113, i32 %114, i32 %115)
  br label %135

117:                                              ; preds = %88
  %118 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @TX_LED_TST, align 4
  %121 = call i32 @SK_REG(i32 %119, i32 %120)
  %122 = load i32, i32* @LED_T_ON, align 4
  %123 = call i32 @skge_write8(%struct.skge_hw* %118, i32 %121, i32 %122)
  %124 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @TX_LED_VAL, align 4
  %127 = call i32 @SK_REG(i32 %125, i32 %126)
  %128 = call i32 @skge_write32(%struct.skge_hw* %124, i32 %127, i32 100)
  %129 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @TX_LED_CTRL, align 4
  %132 = call i32 @SK_REG(i32 %130, i32 %131)
  %133 = load i32, i32* @LED_START, align 4
  %134 = call i32 @skge_write8(%struct.skge_hw* %129, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %117, %111
  br label %136

136:                                              ; preds = %135, %19, %63, %45
  br label %218

137:                                              ; preds = %2
  %138 = load i32, i32* %4, align 4
  switch i32 %138, label %217 [
    i32 130, label %139
    i32 129, label %162
    i32 128, label %194
  ]

139:                                              ; preds = %137
  %140 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %143 = call i32 @gm_phy_write(%struct.skge_hw* %140, i32 %141, i32 %142, i32 0)
  %144 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %147 = load i32, i32* @MO_LED_OFF, align 4
  %148 = call i32 @PHY_M_LED_MO_DUP(i32 %147)
  %149 = load i32, i32* @MO_LED_OFF, align 4
  %150 = call i32 @PHY_M_LED_MO_10(i32 %149)
  %151 = or i32 %148, %150
  %152 = load i32, i32* @MO_LED_OFF, align 4
  %153 = call i32 @PHY_M_LED_MO_100(i32 %152)
  %154 = or i32 %151, %153
  %155 = load i32, i32* @MO_LED_OFF, align 4
  %156 = call i32 @PHY_M_LED_MO_1000(i32 %155)
  %157 = or i32 %154, %156
  %158 = load i32, i32* @MO_LED_OFF, align 4
  %159 = call i32 @PHY_M_LED_MO_RX(i32 %158)
  %160 = or i32 %157, %159
  %161 = call i32 @gm_phy_write(%struct.skge_hw* %144, i32 %145, i32 %146, i32 %160)
  br label %217

162:                                              ; preds = %137
  %163 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %166 = load i32, i32* @PULS_170MS, align 4
  %167 = call i32 @PHY_M_LED_PULS_DUR(i32 %166)
  %168 = load i32, i32* @BLINK_84MS, align 4
  %169 = call i32 @PHY_M_LED_BLINK_RT(i32 %168)
  %170 = or i32 %167, %169
  %171 = load i32, i32* @PHY_M_LEDC_TX_CTRL, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @PHY_M_LEDC_DP_CTRL, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @gm_phy_write(%struct.skge_hw* %163, i32 %164, i32 %165, i32 %174)
  %176 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %179 = load i32, i32* @MO_LED_OFF, align 4
  %180 = call i32 @PHY_M_LED_MO_RX(i32 %179)
  %181 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %182 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @SPEED_100, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %162
  %187 = load i32, i32* @MO_LED_ON, align 4
  %188 = call i32 @PHY_M_LED_MO_100(i32 %187)
  br label %190

189:                                              ; preds = %162
  br label %190

190:                                              ; preds = %189, %186
  %191 = phi i32 [ %188, %186 ], [ 0, %189 ]
  %192 = or i32 %180, %191
  %193 = call i32 @gm_phy_write(%struct.skge_hw* %176, i32 %177, i32 %178, i32 %192)
  br label %217

194:                                              ; preds = %137
  %195 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %198 = call i32 @gm_phy_write(%struct.skge_hw* %195, i32 %196, i32 %197, i32 0)
  %199 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %202 = load i32, i32* @MO_LED_ON, align 4
  %203 = call i32 @PHY_M_LED_MO_DUP(i32 %202)
  %204 = load i32, i32* @MO_LED_ON, align 4
  %205 = call i32 @PHY_M_LED_MO_10(i32 %204)
  %206 = or i32 %203, %205
  %207 = load i32, i32* @MO_LED_ON, align 4
  %208 = call i32 @PHY_M_LED_MO_100(i32 %207)
  %209 = or i32 %206, %208
  %210 = load i32, i32* @MO_LED_ON, align 4
  %211 = call i32 @PHY_M_LED_MO_1000(i32 %210)
  %212 = or i32 %209, %211
  %213 = load i32, i32* @MO_LED_ON, align 4
  %214 = call i32 @PHY_M_LED_MO_RX(i32 %213)
  %215 = or i32 %212, %214
  %216 = call i32 @gm_phy_write(%struct.skge_hw* %199, i32 %200, i32 %201, i32 %215)
  br label %217

217:                                              ; preds = %194, %137, %190, %139
  br label %218

218:                                              ; preds = %217, %136
  %219 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %220 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock_bh(i32* %220)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @PHY_M_LED_MO_DUP(i32) #1

declare dso_local i32 @PHY_M_LED_MO_10(i32) #1

declare dso_local i32 @PHY_M_LED_MO_100(i32) #1

declare dso_local i32 @PHY_M_LED_MO_1000(i32) #1

declare dso_local i32 @PHY_M_LED_MO_RX(i32) #1

declare dso_local i32 @PHY_M_LED_PULS_DUR(i32) #1

declare dso_local i32 @PHY_M_LED_BLINK_RT(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
