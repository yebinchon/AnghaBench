; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_rgmii_macro_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_rgmii_macro_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_ethqos = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN = common dso_local global i32 0, align 4
@RGMII_IO_MACRO_CONFIG2 = common dso_local global i32 0, align 4
@RGMII_CONFIG_INTF_SEL = common dso_local global i32 0, align 4
@RGMII_IO_MACRO_CONFIG = common dso_local global i32 0, align 4
@RGMII_CONFIG_DDR_MODE = common dso_local global i32 0, align 4
@RGMII_CONFIG_BYPASS_TX_ID_EN = common dso_local global i32 0, align 4
@RGMII_CONFIG_POS_NEG_DATA_SEL = common dso_local global i32 0, align 4
@RGMII_CONFIG_PROG_SWAP = common dso_local global i32 0, align 4
@RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL = common dso_local global i32 0, align 4
@RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN = common dso_local global i32 0, align 4
@RGMII_CONFIG2_RSVD_CONFIG15 = common dso_local global i32 0, align 4
@RGMII_CONFIG2_RX_PROG_SWAP = common dso_local global i32 0, align 4
@SDCC_DDR_CONFIG_PRG_RCLK_DLY = common dso_local global i32 0, align 4
@SDCC_HC_REG_DDR_CONFIG = common dso_local global i32 0, align 4
@SDCC_DDR_CONFIG_PRG_DLY_EN = common dso_local global i32 0, align 4
@RGMII_CONFIG_LOOPBACK_EN = common dso_local global i32 0, align 4
@RGMII_CONFIG_MAX_SPD_PRG_2 = common dso_local global i32 0, align 4
@SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE = common dso_local global i32 0, align 4
@SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY = common dso_local global i32 0, align 4
@SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN = common dso_local global i32 0, align 4
@RGMII_CONFIG_MAX_SPD_PRG_9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid speed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_ethqos*)* @ethqos_rgmii_macro_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethqos_rgmii_macro_init(%struct.qcom_ethqos* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_ethqos*, align 8
  store %struct.qcom_ethqos* %0, %struct.qcom_ethqos** %3, align 8
  %4 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %5 = load i32, i32* @RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN, align 4
  %6 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %7 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %4, i32 %5, i32 0, i32 %6)
  %8 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %9 = load i32, i32* @RGMII_CONFIG_INTF_SEL, align 4
  %10 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %11 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %8, i32 %9, i32 0, i32 %10)
  %12 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %194 [
    i32 128, label %15
    i32 129, label %67
    i32 130, label %130
  ]

15:                                               ; preds = %1
  %16 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %17 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %18 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %19 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %20 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %22 = load i32, i32* @RGMII_CONFIG_BYPASS_TX_ID_EN, align 4
  %23 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %24 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %21, i32 %22, i32 0, i32 %23)
  %25 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %26 = load i32, i32* @RGMII_CONFIG_POS_NEG_DATA_SEL, align 4
  %27 = load i32, i32* @RGMII_CONFIG_POS_NEG_DATA_SEL, align 4
  %28 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %29 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %31 = load i32, i32* @RGMII_CONFIG_PROG_SWAP, align 4
  %32 = load i32, i32* @RGMII_CONFIG_PROG_SWAP, align 4
  %33 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %34 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %36 = load i32, i32* @RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL, align 4
  %37 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %38 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %35, i32 %36, i32 0, i32 %37)
  %39 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %40 = load i32, i32* @RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN, align 4
  %41 = load i32, i32* @RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN, align 4
  %42 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %43 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %45 = load i32, i32* @RGMII_CONFIG2_RSVD_CONFIG15, align 4
  %46 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %47 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %44, i32 %45, i32 0, i32 %46)
  %48 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %49 = load i32, i32* @RGMII_CONFIG2_RX_PROG_SWAP, align 4
  %50 = load i32, i32* @RGMII_CONFIG2_RX_PROG_SWAP, align 4
  %51 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %52 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %54 = load i32, i32* @SDCC_DDR_CONFIG_PRG_RCLK_DLY, align 4
  %55 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %56 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %53, i32 %54, i32 57, i32 %55)
  %57 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %58 = load i32, i32* @SDCC_DDR_CONFIG_PRG_DLY_EN, align 4
  %59 = load i32, i32* @SDCC_DDR_CONFIG_PRG_DLY_EN, align 4
  %60 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %61 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %63 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %64 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %65 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %66 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %62, i32 %63, i32 %64, i32 %65)
  br label %205

67:                                               ; preds = %1
  %68 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %69 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %70 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %71 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %72 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %74 = load i32, i32* @RGMII_CONFIG_BYPASS_TX_ID_EN, align 4
  %75 = load i32, i32* @RGMII_CONFIG_BYPASS_TX_ID_EN, align 4
  %76 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %77 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %79 = load i32, i32* @RGMII_CONFIG_POS_NEG_DATA_SEL, align 4
  %80 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %81 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %78, i32 %79, i32 0, i32 %80)
  %82 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %83 = load i32, i32* @RGMII_CONFIG_PROG_SWAP, align 4
  %84 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %85 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %82, i32 %83, i32 0, i32 %84)
  %86 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %87 = load i32, i32* @RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL, align 4
  %88 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %89 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %86, i32 %87, i32 0, i32 %88)
  %90 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %91 = load i32, i32* @RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN, align 4
  %92 = load i32, i32* @RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN, align 4
  %93 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %94 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %96 = load i32, i32* @RGMII_CONFIG_MAX_SPD_PRG_2, align 4
  %97 = call i32 @BIT(i32 6)
  %98 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %99 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %101 = load i32, i32* @RGMII_CONFIG2_RSVD_CONFIG15, align 4
  %102 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %103 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %100, i32 %101, i32 0, i32 %102)
  %104 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %105 = load i32, i32* @RGMII_CONFIG2_RX_PROG_SWAP, align 4
  %106 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %107 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %104, i32 %105, i32 0, i32 %106)
  %108 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %109 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE, align 4
  %110 = call i32 @BIT(i32 29)
  %111 = call i32 @BIT(i32 27)
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %114 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %108, i32 %109, i32 %112, i32 %113)
  %115 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %116 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY, align 4
  %117 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY, align 4
  %118 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %119 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %121 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN, align 4
  %122 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN, align 4
  %123 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %124 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %126 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %127 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %128 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %129 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %125, i32 %126, i32 %127, i32 %128)
  br label %205

130:                                              ; preds = %1
  %131 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %132 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %133 = load i32, i32* @RGMII_CONFIG_DDR_MODE, align 4
  %134 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %135 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %137 = load i32, i32* @RGMII_CONFIG_BYPASS_TX_ID_EN, align 4
  %138 = load i32, i32* @RGMII_CONFIG_BYPASS_TX_ID_EN, align 4
  %139 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %140 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %142 = load i32, i32* @RGMII_CONFIG_POS_NEG_DATA_SEL, align 4
  %143 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %144 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %141, i32 %142, i32 0, i32 %143)
  %145 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %146 = load i32, i32* @RGMII_CONFIG_PROG_SWAP, align 4
  %147 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %148 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %145, i32 %146, i32 0, i32 %147)
  %149 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %150 = load i32, i32* @RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL, align 4
  %151 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %152 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %149, i32 %150, i32 0, i32 %151)
  %153 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %154 = load i32, i32* @RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN, align 4
  %155 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %156 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %153, i32 %154, i32 0, i32 %155)
  %157 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %158 = load i32, i32* @RGMII_CONFIG_MAX_SPD_PRG_9, align 4
  %159 = call i32 @BIT(i32 12)
  %160 = call i32 @GENMASK(i32 9, i32 8)
  %161 = or i32 %159, %160
  %162 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %163 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %157, i32 %158, i32 %161, i32 %162)
  %164 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %165 = load i32, i32* @RGMII_CONFIG2_RSVD_CONFIG15, align 4
  %166 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %167 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %164, i32 %165, i32 0, i32 %166)
  %168 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %169 = load i32, i32* @RGMII_CONFIG2_RX_PROG_SWAP, align 4
  %170 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %171 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %168, i32 %169, i32 0, i32 %170)
  %172 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %173 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE, align 4
  %174 = call i32 @BIT(i32 29)
  %175 = call i32 @BIT(i32 27)
  %176 = or i32 %174, %175
  %177 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %178 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %172, i32 %173, i32 %176, i32 %177)
  %179 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %180 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY, align 4
  %181 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY, align 4
  %182 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %183 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %185 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN, align 4
  %186 = load i32, i32* @SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN, align 4
  %187 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %188 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %190 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %191 = load i32, i32* @RGMII_CONFIG_LOOPBACK_EN, align 4
  %192 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %193 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %189, i32 %190, i32 %191, i32 %192)
  br label %205

194:                                              ; preds = %1
  %195 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %196 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %195, i32 0, i32 1
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %200 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @dev_err(i32* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %2, align 4
  br label %206

205:                                              ; preds = %130, %67, %15
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %194
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @rgmii_updatel(%struct.qcom_ethqos*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
