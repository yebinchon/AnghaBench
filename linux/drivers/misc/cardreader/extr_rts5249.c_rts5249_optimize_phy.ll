; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_optimize_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_optimize_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@PM_CTRL3 = common dso_local global i32 0, align 4
@D3_DELINK_MODE_EN = common dso_local global i32 0, align 4
@PHY_REV = common dso_local global i32 0, align 4
@PHY_REV_RESV = common dso_local global i32 0, align 4
@PHY_REV_RXIDLE_LATCHED = common dso_local global i32 0, align 4
@PHY_REV_P1_EN = common dso_local global i32 0, align 4
@PHY_REV_RXIDLE_EN = common dso_local global i32 0, align 4
@PHY_REV_CLKREQ_TX_EN = common dso_local global i32 0, align 4
@PHY_REV_RX_PWST = common dso_local global i32 0, align 4
@PHY_REV_CLKREQ_DT_1_0 = common dso_local global i32 0, align 4
@PHY_REV_STOP_CLKRD = common dso_local global i32 0, align 4
@PHY_REV_STOP_CLKWR = common dso_local global i32 0, align 4
@PHY_BPCR = common dso_local global i32 0, align 4
@PHY_BPCR_IBRXSEL = common dso_local global i32 0, align 4
@PHY_BPCR_IBTXSEL = common dso_local global i32 0, align 4
@PHY_BPCR_IB_FILTER = common dso_local global i32 0, align 4
@PHY_BPCR_CMIRROR_EN = common dso_local global i32 0, align 4
@PHY_PCR = common dso_local global i32 0, align 4
@PHY_PCR_FORCE_CODE = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_CALI_50 = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_VCM_08 = common dso_local global i32 0, align 4
@PHY_PCR_OOBS_SEN_90 = common dso_local global i32 0, align 4
@PHY_PCR_RSSI_EN = common dso_local global i32 0, align 4
@PHY_PCR_RX10K = common dso_local global i32 0, align 4
@PHY_RCR2 = common dso_local global i32 0, align 4
@PHY_RCR2_EMPHASE_EN = common dso_local global i32 0, align 4
@PHY_RCR2_NADJR = common dso_local global i32 0, align 4
@PHY_RCR2_CDR_SR_2 = common dso_local global i32 0, align 4
@PHY_RCR2_FREQSEL_12 = common dso_local global i32 0, align 4
@PHY_RCR2_CDR_SC_12P = common dso_local global i32 0, align 4
@PHY_RCR2_CALIB_LATE = common dso_local global i32 0, align 4
@PHY_FLD4 = common dso_local global i32 0, align 4
@PHY_FLD4_FLDEN_SEL = common dso_local global i32 0, align 4
@PHY_FLD4_REQ_REF = common dso_local global i32 0, align 4
@PHY_FLD4_RXAMP_OFF = common dso_local global i32 0, align 4
@PHY_FLD4_REQ_ADDA = common dso_local global i32 0, align 4
@PHY_FLD4_BER_COUNT = common dso_local global i32 0, align 4
@PHY_FLD4_BER_TIMER = common dso_local global i32 0, align 4
@PHY_FLD4_BER_CHK_EN = common dso_local global i32 0, align 4
@PHY_RDR = common dso_local global i32 0, align 4
@PHY_RDR_RXDSEL_1_9 = common dso_local global i32 0, align 4
@PHY_SSC_AUTO_PWD = common dso_local global i32 0, align 4
@PHY_RCR1 = common dso_local global i32 0, align 4
@PHY_RCR1_ADP_TIME_4 = common dso_local global i32 0, align 4
@PHY_RCR1_VCO_COARSE = common dso_local global i32 0, align 4
@PHY_FLD3 = common dso_local global i32 0, align 4
@PHY_FLD3_TIMER_4 = common dso_local global i32 0, align 4
@PHY_FLD3_TIMER_6 = common dso_local global i32 0, align 4
@PHY_FLD3_RXDELINK = common dso_local global i32 0, align 4
@PHY_TUNE = common dso_local global i32 0, align 4
@PHY_TUNE_TUNEREF_1_0 = common dso_local global i32 0, align 4
@PHY_TUNE_VBGSEL_1252 = common dso_local global i32 0, align 4
@PHY_TUNE_SDBUS_33 = common dso_local global i32 0, align 4
@PHY_TUNE_TUNED18 = common dso_local global i32 0, align 4
@PHY_TUNE_TUNED12 = common dso_local global i32 0, align 4
@PHY_TUNE_TUNEA12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts5249_optimize_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5249_optimize_phy(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @PM_CTRL3, align 4
  %7 = load i32, i32* @D3_DELINK_MODE_EN, align 4
  %8 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %163

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @PHY_REV, align 4
  %16 = load i32, i32* @PHY_REV_RESV, align 4
  %17 = load i32, i32* @PHY_REV_RXIDLE_LATCHED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PHY_REV_P1_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PHY_REV_RXIDLE_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PHY_REV_CLKREQ_TX_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PHY_REV_RX_PWST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PHY_REV_CLKREQ_DT_1_0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PHY_REV_STOP_CLKRD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PHY_REV_STOP_CLKWR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %14, i32 %15, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %163

38:                                               ; preds = %13
  %39 = call i32 @msleep(i32 1)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %41 = load i32, i32* @PHY_BPCR, align 4
  %42 = load i32, i32* @PHY_BPCR_IBRXSEL, align 4
  %43 = load i32, i32* @PHY_BPCR_IBTXSEL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PHY_BPCR_IB_FILTER, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PHY_BPCR_CMIRROR_EN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %40, i32 %41, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %163

54:                                               ; preds = %38
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %56 = load i32, i32* @PHY_PCR, align 4
  %57 = load i32, i32* @PHY_PCR_FORCE_CODE, align 4
  %58 = load i32, i32* @PHY_PCR_OOBS_CALI_50, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PHY_PCR_OOBS_VCM_08, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PHY_PCR_OOBS_SEN_90, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PHY_PCR_RSSI_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @PHY_PCR_RX10K, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %55, i32 %56, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %54
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %163

73:                                               ; preds = %54
  %74 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %75 = load i32, i32* @PHY_RCR2, align 4
  %76 = load i32, i32* @PHY_RCR2_EMPHASE_EN, align 4
  %77 = load i32, i32* @PHY_RCR2_NADJR, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PHY_RCR2_CDR_SR_2, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @PHY_RCR2_FREQSEL_12, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @PHY_RCR2_CDR_SC_12P, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @PHY_RCR2_CALIB_LATE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %74, i32 %75, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %163

92:                                               ; preds = %73
  %93 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %94 = load i32, i32* @PHY_FLD4, align 4
  %95 = load i32, i32* @PHY_FLD4_FLDEN_SEL, align 4
  %96 = load i32, i32* @PHY_FLD4_REQ_REF, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PHY_FLD4_RXAMP_OFF, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PHY_FLD4_REQ_ADDA, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PHY_FLD4_BER_COUNT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @PHY_FLD4_BER_TIMER, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @PHY_FLD4_BER_CHK_EN, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %93, i32 %94, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %92
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %163

113:                                              ; preds = %92
  %114 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %115 = load i32, i32* @PHY_RDR, align 4
  %116 = load i32, i32* @PHY_RDR_RXDSEL_1_9, align 4
  %117 = load i32, i32* @PHY_SSC_AUTO_PWD, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %114, i32 %115, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %163

124:                                              ; preds = %113
  %125 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %126 = load i32, i32* @PHY_RCR1, align 4
  %127 = load i32, i32* @PHY_RCR1_ADP_TIME_4, align 4
  %128 = load i32, i32* @PHY_RCR1_VCO_COARSE, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %125, i32 %126, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %163

135:                                              ; preds = %124
  %136 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %137 = load i32, i32* @PHY_FLD3, align 4
  %138 = load i32, i32* @PHY_FLD3_TIMER_4, align 4
  %139 = load i32, i32* @PHY_FLD3_TIMER_6, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PHY_FLD3_RXDELINK, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %136, i32 %137, i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %163

148:                                              ; preds = %135
  %149 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %150 = load i32, i32* @PHY_TUNE, align 4
  %151 = load i32, i32* @PHY_TUNE_TUNEREF_1_0, align 4
  %152 = load i32, i32* @PHY_TUNE_VBGSEL_1252, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @PHY_TUNE_SDBUS_33, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @PHY_TUNE_TUNED18, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @PHY_TUNE_TUNED12, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @PHY_TUNE_TUNEA12, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr* %149, i32 %150, i32 %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %148, %146, %133, %122, %111, %90, %71, %52, %36, %11
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_phy_register(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
