; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MTK_HW_INIT = common dso_local global i32 0, align 4
@MTK_SOC_MT7628 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAC reset failed!\0A\00", align 1
@MTK_PDMA_DELAY_RX_DELAY = common dso_local global i32 0, align 4
@MTK_PDMA_DELAY_INT = common dso_local global i32 0, align 4
@RSTCTRL_FE = common dso_local global i32 0, align 4
@RSTCTRL_PPE = common dso_local global i32 0, align 4
@GPIO_DRV_SEL10 = common dso_local global i32 0, align 4
@GPIO_OD33_CTRL8 = common dso_local global i32 0, align 4
@GPIO_BIAS_CTRL = common dso_local global i32 0, align 4
@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@MAC_MCR_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MTK_CDMQ_IG_CTRL = common dso_local global i32 0, align 4
@MTK_CDMQ_STAG_EN = common dso_local global i32 0, align 4
@MTK_CDMP_EG_CTRL = common dso_local global i32 0, align 4
@MTK_QDMA_DELAY_INT = common dso_local global i32 0, align 4
@RST_GL_PSE = common dso_local global i32 0, align 4
@MTK_RST_GL = common dso_local global i32 0, align 4
@MTK_TX_DONE_INT = common dso_local global i32 0, align 4
@MTK_PDMA_INT_GRP1 = common dso_local global i32 0, align 4
@MTK_RX_DONE_INT = common dso_local global i32 0, align 4
@MTK_PDMA_INT_GRP2 = common dso_local global i32 0, align 4
@MTK_QDMA_INT_GRP1 = common dso_local global i32 0, align 4
@MTK_QDMA_INT_GRP2 = common dso_local global i32 0, align 4
@MTK_FE_INT_GRP = common dso_local global i32 0, align 4
@MTK_GDMA_ICS_EN = common dso_local global i32 0, align 4
@MTK_GDMA_TCS_EN = common dso_local global i32 0, align 4
@MTK_GDMA_UCS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hw_init(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %8 = load i32, i32* @MTK_HW_INIT, align 4
  %9 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %9, i32 0, i32 3
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %186

14:                                               ; preds = %1
  %15 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_enable(i32 %17)
  %19 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  %23 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %24 = call i32 @mtk_clk_enable(%struct.mtk_eth* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %176

28:                                               ; preds = %14
  %29 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MTK_SOC_MT7628, align 4
  %35 = call i64 @MTK_HAS_CAPS(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %28
  %38 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_reset(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %176

49:                                               ; preds = %37
  %50 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %51 = load i32, i32* @MTK_PDMA_DELAY_RX_DELAY, align 4
  %52 = load i32, i32* @MTK_PDMA_DELAY_INT, align 4
  %53 = call i32 @mtk_w32(%struct.mtk_eth* %50, i32 %51, i32 %52)
  %54 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %55 = call i32 @mtk_tx_irq_disable(%struct.mtk_eth* %54, i32 -1)
  %56 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %57 = call i32 @mtk_rx_irq_disable(%struct.mtk_eth* %56, i32 -1)
  store i32 0, i32* %2, align 4
  br label %186

58:                                               ; preds = %28
  %59 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %60 = load i32, i32* @RSTCTRL_FE, align 4
  %61 = call i32 @ethsys_reset(%struct.mtk_eth* %59, i32 %60)
  %62 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %63 = load i32, i32* @RSTCTRL_PPE, align 4
  %64 = call i32 @ethsys_reset(%struct.mtk_eth* %62, i32 %63)
  %65 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %66 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %58
  %70 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @GPIO_DRV_SEL10, align 4
  %74 = call i32 @regmap_write(i64 %72, i32 %73, i32 2560)
  %75 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %76 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @GPIO_OD33_CTRL8, align 4
  %79 = call i32 @regmap_write(i64 %77, i32 %78, i32 5)
  %80 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %81 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @GPIO_BIAS_CTRL, align 4
  %84 = call i32 @regmap_write(i64 %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %69, %58
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %96, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @MTK_MAC_COUNT, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %92 = load i32, i32* @MAC_MCR_FORCE_LINK_DOWN, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @MTK_MAC_MCR(i32 %93)
  %95 = call i32 @mtk_w32(%struct.mtk_eth* %91, i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %86

99:                                               ; preds = %86
  %100 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %101 = load i32, i32* @MTK_CDMQ_IG_CTRL, align 4
  %102 = call i32 @mtk_r32(%struct.mtk_eth* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @MTK_CDMQ_STAG_EN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MTK_CDMQ_IG_CTRL, align 4
  %108 = call i32 @mtk_w32(%struct.mtk_eth* %103, i32 %106, i32 %107)
  %109 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %110 = load i32, i32* @MTK_CDMP_EG_CTRL, align 4
  %111 = call i32 @mtk_w32(%struct.mtk_eth* %109, i32 1, i32 %110)
  %112 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %113 = load i32, i32* @MTK_PDMA_DELAY_RX_DELAY, align 4
  %114 = load i32, i32* @MTK_PDMA_DELAY_INT, align 4
  %115 = call i32 @mtk_w32(%struct.mtk_eth* %112, i32 %113, i32 %114)
  %116 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %117 = load i32, i32* @MTK_QDMA_DELAY_INT, align 4
  %118 = call i32 @mtk_w32(%struct.mtk_eth* %116, i32 0, i32 %117)
  %119 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %120 = call i32 @mtk_tx_irq_disable(%struct.mtk_eth* %119, i32 -1)
  %121 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %122 = call i32 @mtk_rx_irq_disable(%struct.mtk_eth* %121, i32 -1)
  %123 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %124 = load i32, i32* @RST_GL_PSE, align 4
  %125 = load i32, i32* @MTK_RST_GL, align 4
  %126 = call i32 @mtk_w32(%struct.mtk_eth* %123, i32 %124, i32 %125)
  %127 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %128 = load i32, i32* @MTK_RST_GL, align 4
  %129 = call i32 @mtk_w32(%struct.mtk_eth* %127, i32 0, i32 %128)
  %130 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %131 = load i32, i32* @MTK_TX_DONE_INT, align 4
  %132 = load i32, i32* @MTK_PDMA_INT_GRP1, align 4
  %133 = call i32 @mtk_w32(%struct.mtk_eth* %130, i32 %131, i32 %132)
  %134 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %135 = load i32, i32* @MTK_RX_DONE_INT, align 4
  %136 = load i32, i32* @MTK_PDMA_INT_GRP2, align 4
  %137 = call i32 @mtk_w32(%struct.mtk_eth* %134, i32 %135, i32 %136)
  %138 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %139 = load i32, i32* @MTK_TX_DONE_INT, align 4
  %140 = load i32, i32* @MTK_QDMA_INT_GRP1, align 4
  %141 = call i32 @mtk_w32(%struct.mtk_eth* %138, i32 %139, i32 %140)
  %142 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %143 = load i32, i32* @MTK_RX_DONE_INT, align 4
  %144 = load i32, i32* @MTK_QDMA_INT_GRP2, align 4
  %145 = call i32 @mtk_w32(%struct.mtk_eth* %142, i32 %143, i32 %144)
  %146 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %147 = load i32, i32* @MTK_FE_INT_GRP, align 4
  %148 = call i32 @mtk_w32(%struct.mtk_eth* %146, i32 553783296, i32 %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %172, %99
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @MTK_MAC_COUNT, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %175

153:                                              ; preds = %149
  %154 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @MTK_GDMA_FWD_CFG(i32 %155)
  %157 = call i32 @mtk_r32(%struct.mtk_eth* %154, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = and i32 %158, -65536
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* @MTK_GDMA_ICS_EN, align 4
  %161 = load i32, i32* @MTK_GDMA_TCS_EN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @MTK_GDMA_UCS_EN, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @MTK_GDMA_FWD_CFG(i32 %169)
  %171 = call i32 @mtk_w32(%struct.mtk_eth* %167, i32 %168, i32 %170)
  br label %172

172:                                              ; preds = %153
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %149

175:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %186

176:                                              ; preds = %44, %27
  %177 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %178 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @pm_runtime_put_sync(i32 %179)
  %181 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %182 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @pm_runtime_disable(i32 %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %176, %175, %49, %13
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mtk_clk_enable(%struct.mtk_eth*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @device_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @mtk_tx_irq_disable(%struct.mtk_eth*, i32) #1

declare dso_local i32 @mtk_rx_irq_disable(%struct.mtk_eth*, i32) #1

declare dso_local i32 @ethsys_reset(%struct.mtk_eth*, i32) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @MTK_MAC_MCR(i32) #1

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @MTK_GDMA_FWD_CFG(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
