; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }

@MT_CFG_CCR = common dso_local global i32 0, align 4
@MT_CFG_CCR_MAC_D0_1X_GC_EN = common dso_local global i32 0, align 4
@MT_CFG_CCR_MAC_D0_2X_GC_EN = common dso_local global i32 0, align 4
@MT_CFG_CCR_MAC_D1_1X_GC_EN = common dso_local global i32 0, align 4
@MT_CFG_CCR_MAC_D1_2X_GC_EN = common dso_local global i32 0, align 4
@MT_TMAC_TRCR0 = common dso_local global i32 0, align 4
@MT_TMAC_TRCR_CCA_SEL = common dso_local global i32 0, align 4
@MT_TMAC_TRCR_SEC_CCA_SEL = common dso_local global i32 0, align 4
@MT_TMAC_TRCR1 = common dso_local global i32 0, align 4
@MT_AGG_ACR_PKT_TIME_EN = common dso_local global i32 0, align 4
@MT_AGG_ACR_NO_BA_AR_RULE = common dso_local global i32 0, align 4
@MT_AGG_ACR_CFEND_RATE = common dso_local global i32 0, align 4
@MT_AGG_ACR_BAR_RATE = common dso_local global i32 0, align 4
@MT_AGG_ACR0 = common dso_local global i32 0, align 4
@MT_AGG_ACR1 = common dso_local global i32 0, align 4
@MT_TMAC_CTCR0 = common dso_local global i32 0, align 4
@MT_TMAC_CTCR0_INS_DDLMT_REFTIME = common dso_local global i32 0, align 4
@MT_TMAC_CTCR0_INS_DDLMT_DENSITY = common dso_local global i32 0, align 4
@MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN = common dso_local global i32 0, align 4
@MT_TMAC_CTCR0_INS_DDLMT_EN = common dso_local global i32 0, align 4
@MT_AGG_SCR = common dso_local global i32 0, align 4
@MT_AGG_SCR_NLNAV_MID_PTEC_DIS = common dso_local global i32 0, align 4
@MT_DMA_DCR0 = common dso_local global i32 0, align 4
@MT_DMA_DCR0_RX_VEC_DROP = common dso_local global i32 0, align 4
@MT_DMA_DCR0_MAX_RX_LEN = common dso_local global i32 0, align 4
@MT_AGG_ARUCR = common dso_local global i32 0, align 4
@MT_AGG_ARDCR = common dso_local global i32 0, align 4
@MT7615_RATE_RETRY = common dso_local global i32 0, align 4
@MT_AGG_ARCR = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RTS_RATE_THR = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_DOWN_RATIO_EN = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_DOWN_RATIO = common dso_local global i32 0, align 4
@MT_AGG_ARCR_RATE_UP_EXTRA_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*)* @mt7615_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mac_init(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  %4 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %5 = load i32, i32* @MT_CFG_CCR, align 4
  %6 = load i32, i32* @MT_CFG_CCR_MAC_D0_1X_GC_EN, align 4
  %7 = load i32, i32* @MT_CFG_CCR_MAC_D0_2X_GC_EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MT_CFG_CCR_MAC_D1_1X_GC_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MT_CFG_CCR_MAC_D1_2X_GC_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mt76_set(%struct.mt7615_dev* %4, i32 %5, i32 %12)
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %15 = load i32, i32* @MT_TMAC_TRCR0, align 4
  %16 = load i32, i32* @MT_TMAC_TRCR_CCA_SEL, align 4
  %17 = load i32, i32* @MT_TMAC_TRCR_SEC_CCA_SEL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MT_TMAC_TRCR_CCA_SEL, align 4
  %20 = call i32 @FIELD_PREP(i32 %19, i32 2)
  %21 = load i32, i32* @MT_TMAC_TRCR_SEC_CCA_SEL, align 4
  %22 = call i32 @FIELD_PREP(i32 %21, i32 0)
  %23 = or i32 %20, %22
  %24 = call i32 @mt76_rmw(%struct.mt7615_dev* %14, i32 %15, i32 %18, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %26 = load i32, i32* @MT_TMAC_TRCR1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mt76_wr(%struct.mt7615_dev* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @MT_AGG_ACR_PKT_TIME_EN, align 4
  %30 = load i32, i32* @MT_AGG_ACR_NO_BA_AR_RULE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MT_AGG_ACR_CFEND_RATE, align 4
  %33 = call i32 @FIELD_PREP(i32 %32, i32 73)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @MT_AGG_ACR_BAR_RATE, align 4
  %36 = call i32 @FIELD_PREP(i32 %35, i32 75)
  %37 = or i32 %34, %36
  store i32 %37, i32* %3, align 4
  %38 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %39 = load i32, i32* @MT_AGG_ACR0, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mt76_wr(%struct.mt7615_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %43 = load i32, i32* @MT_AGG_ACR1, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mt76_wr(%struct.mt7615_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %47 = load i32, i32* @MT_TMAC_CTCR0, align 4
  %48 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_REFTIME, align 4
  %49 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %46, i32 %47, i32 %48, i32 63)
  %50 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %51 = load i32, i32* @MT_TMAC_CTCR0, align 4
  %52 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_DENSITY, align 4
  %53 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %50, i32 %51, i32 %52, i32 3)
  %54 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %55 = load i32, i32* @MT_TMAC_CTCR0, align 4
  %56 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN, align 4
  %57 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN, align 4
  %60 = load i32, i32* @MT_TMAC_CTCR0_INS_DDLMT_EN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @mt76_rmw(%struct.mt7615_dev* %54, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %64 = call i32 @mt7615_mcu_set_rts_thresh(%struct.mt7615_dev* %63, i32 2347)
  %65 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %66 = call i32 @mt7615_mac_set_scs(%struct.mt7615_dev* %65, i32 0)
  %67 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %68 = load i32, i32* @MT_AGG_SCR, align 4
  %69 = load i32, i32* @MT_AGG_SCR_NLNAV_MID_PTEC_DIS, align 4
  %70 = load i32, i32* @MT_AGG_SCR_NLNAV_MID_PTEC_DIS, align 4
  %71 = call i32 @mt76_rmw(%struct.mt7615_dev* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %73 = call i32 @mt7615_mcu_init_mac(%struct.mt7615_dev* %72)
  %74 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %75 = load i32, i32* @MT_DMA_DCR0, align 4
  %76 = load i32, i32* @MT_DMA_DCR0_RX_VEC_DROP, align 4
  %77 = load i32, i32* @MT_DMA_DCR0_MAX_RX_LEN, align 4
  %78 = call i32 @FIELD_PREP(i32 %77, i32 3072)
  %79 = or i32 %76, %78
  %80 = call i32 @mt76_wr(%struct.mt7615_dev* %74, i32 %75, i32 %79)
  %81 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %82 = load i32, i32* @MT_AGG_ARUCR, align 4
  %83 = call i32 @MT_AGG_ARxCR_LIMIT(i32 0)
  %84 = call i32 @FIELD_PREP(i32 %83, i32 7)
  %85 = call i32 @MT_AGG_ARxCR_LIMIT(i32 1)
  %86 = call i32 @FIELD_PREP(i32 %85, i32 2)
  %87 = or i32 %84, %86
  %88 = call i32 @MT_AGG_ARxCR_LIMIT(i32 2)
  %89 = call i32 @FIELD_PREP(i32 %88, i32 2)
  %90 = or i32 %87, %89
  %91 = call i32 @MT_AGG_ARxCR_LIMIT(i32 3)
  %92 = call i32 @FIELD_PREP(i32 %91, i32 2)
  %93 = or i32 %90, %92
  %94 = call i32 @MT_AGG_ARxCR_LIMIT(i32 4)
  %95 = call i32 @FIELD_PREP(i32 %94, i32 1)
  %96 = or i32 %93, %95
  %97 = call i32 @MT_AGG_ARxCR_LIMIT(i32 5)
  %98 = call i32 @FIELD_PREP(i32 %97, i32 1)
  %99 = or i32 %96, %98
  %100 = call i32 @MT_AGG_ARxCR_LIMIT(i32 6)
  %101 = call i32 @FIELD_PREP(i32 %100, i32 1)
  %102 = or i32 %99, %101
  %103 = call i32 @MT_AGG_ARxCR_LIMIT(i32 7)
  %104 = call i32 @FIELD_PREP(i32 %103, i32 1)
  %105 = or i32 %102, %104
  %106 = call i32 @mt76_wr(%struct.mt7615_dev* %81, i32 %82, i32 %105)
  %107 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %108 = load i32, i32* @MT_AGG_ARDCR, align 4
  %109 = call i32 @MT_AGG_ARxCR_LIMIT(i32 0)
  %110 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @FIELD_PREP(i32 %109, i32 %111)
  %113 = call i32 @MT_AGG_ARxCR_LIMIT(i32 1)
  %114 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @FIELD_PREP(i32 %113, i32 %115)
  %117 = or i32 %112, %116
  %118 = call i32 @MT_AGG_ARxCR_LIMIT(i32 2)
  %119 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @FIELD_PREP(i32 %118, i32 %120)
  %122 = or i32 %117, %121
  %123 = call i32 @MT_AGG_ARxCR_LIMIT(i32 3)
  %124 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @FIELD_PREP(i32 %123, i32 %125)
  %127 = or i32 %122, %126
  %128 = call i32 @MT_AGG_ARxCR_LIMIT(i32 4)
  %129 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 @FIELD_PREP(i32 %128, i32 %130)
  %132 = or i32 %127, %131
  %133 = call i32 @MT_AGG_ARxCR_LIMIT(i32 5)
  %134 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @FIELD_PREP(i32 %133, i32 %135)
  %137 = or i32 %132, %136
  %138 = call i32 @MT_AGG_ARxCR_LIMIT(i32 6)
  %139 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @FIELD_PREP(i32 %138, i32 %140)
  %142 = or i32 %137, %141
  %143 = call i32 @MT_AGG_ARxCR_LIMIT(i32 7)
  %144 = load i32, i32* @MT7615_RATE_RETRY, align 4
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @FIELD_PREP(i32 %143, i32 %145)
  %147 = or i32 %142, %146
  %148 = call i32 @mt76_wr(%struct.mt7615_dev* %107, i32 %108, i32 %147)
  %149 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %150 = load i32, i32* @MT_AGG_ARCR, align 4
  %151 = load i32, i32* @MT_AGG_ARCR_RTS_RATE_THR, align 4
  %152 = call i32 @FIELD_PREP(i32 %151, i32 2)
  %153 = load i32, i32* @MT_AGG_ARCR_RATE_DOWN_RATIO_EN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @MT_AGG_ARCR_RATE_DOWN_RATIO, align 4
  %156 = call i32 @FIELD_PREP(i32 %155, i32 1)
  %157 = or i32 %154, %156
  %158 = load i32, i32* @MT_AGG_ARCR_RATE_UP_EXTRA_TH, align 4
  %159 = call i32 @FIELD_PREP(i32 %158, i32 4)
  %160 = or i32 %157, %159
  %161 = call i32 @mt76_wr(%struct.mt7615_dev* %149, i32 %150, i32 %160)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7615_mcu_set_rts_thresh(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt7615_mac_set_scs(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt7615_mcu_init_mac(%struct.mt7615_dev*) #1

declare dso_local i32 @MT_AGG_ARxCR_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
