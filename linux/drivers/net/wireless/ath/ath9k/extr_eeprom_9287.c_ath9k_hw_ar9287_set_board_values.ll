; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_board_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.modal_eep_ar9287_header }
%struct.modal_eep_ar9287_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR9287_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i64 0, align 8
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i64 0, align 8
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i64 0, align 8
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i64 0, align 8
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i64 0, align 8
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH0 = common dso_local global i64 0, align 8
@AR9287_AN_RF2G3_DB1 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_DB2 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_CCK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PSK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_QAM = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PAL_OFF = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH1 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i64 0, align 8
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR9287_AN_TOP2 = common dso_local global i32 0, align 4
@AR9287_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AR9287_AN_TOP2_XPABIAS_LVL_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_ar9287_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ar9287_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ar9287_eeprom*, align 8
  %6 = alloca %struct.modal_eep_ar9287_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ar9287_eeprom* %13, %struct.ar9287_eeprom** %5, align 8
  %14 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %5, align 8
  %15 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %14, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %15, %struct.modal_eep_ar9287_header** %6, align 8
  %16 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %5, align 8
  %17 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %16, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %17, %struct.modal_eep_ar9287_header** %6, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %20 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %21 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %20, i32 0, i32 23
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = call i32 @REG_WRITE(%struct.ath_hw* %18, i64 %19, i32 %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %140, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @AR9287_MAX_CHAINS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %143

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, 4096
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %38 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %37, i32 0, i32 22
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 @REG_WRITE(%struct.ath_hw* %32, i64 %36, i32 %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @REG_READ(%struct.ath_hw* %51, i64 %55)
  %57 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %58 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %63 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %62, i32 0, i32 21
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %70 = call i32 @SM(i32 %68, i32 %69)
  %71 = or i32 %61, %70
  %72 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %73 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %72, i32 0, i32 20
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %80 = call i32 @SM(i32 %78, i32 %79)
  %81 = or i32 %71, %80
  %82 = call i32 @REG_WRITE(%struct.ath_hw* %46, i64 %50, i32 %81)
  %83 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %84 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %83, i32 0, i32 19
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %96 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %97 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %96, i32 0, i32 18
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %90, i64 %94, i32 %95, i32 %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %110 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %111 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %110, i32 0, i32 17
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i64 %108, i32 %109, i32 %116)
  %118 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %119 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %118, i64 %122, i32 %123, i32 %124)
  %126 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %127 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %132 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %133 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %132, i32 0, i32 16
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %126, i64 %130, i32 %131, i32 %138)
  br label %140

140:                                              ; preds = %29
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %25

143:                                              ; preds = %25
  %144 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %145 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = load i64, i64* @AR_PHY_SETTLING, align 8
  %150 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %151 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %152 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %151, i32 0, i32 15
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %148, i64 %149, i32 %150, i32 %153)
  br label %163

155:                                              ; preds = %143
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = load i64, i64* @AR_PHY_SETTLING, align 8
  %158 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %159 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %160 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %159, i32 0, i32 14
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %156, i64 %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %155, %147
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i64, i64* @AR_PHY_DESIRED_SZ, align 8
  %166 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %167 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %168 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %164, i64 %165, i32 %166, i32 %169)
  %171 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %172 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %173 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %174 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %177 = call i32 @SM(i32 %175, i32 %176)
  %178 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %179 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %182 = call i32 @SM(i32 %180, i32 %181)
  %183 = or i32 %177, %182
  %184 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %185 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %184, i32 0, i32 11
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %188 = call i32 @SM(i32 %186, i32 %187)
  %189 = or i32 %183, %188
  %190 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %191 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %190, i32 0, i32 11
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %194 = call i32 @SM(i32 %192, i32 %193)
  %195 = or i32 %189, %194
  %196 = call i32 @REG_WRITE(%struct.ath_hw* %171, i64 %172, i32 %195)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i64, i64* @AR_PHY_RF_CTL3, align 8
  %199 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %200 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %201 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %197, i64 %198, i32 %199, i32 %202)
  %204 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %205 = load i64, i64* @AR_PHY_CCA, align 8
  %206 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %207 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %208 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %204, i64 %205, i32 %206, i32 %209)
  %211 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %212 = load i64, i64* @AR_PHY_EXT_CCA0, align 8
  %213 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %214 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %215 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %211, i64 %212, i32 %213, i32 %216)
  %218 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %219 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %220 = call i32 @REG_READ(%struct.ath_hw* %218, i64 %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %222 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %231 = or i32 %229, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %8, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %236 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %239 = call i32 @SM(i32 %237, i32 %238)
  %240 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %241 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %244 = call i32 @SM(i32 %242, i32 %243)
  %245 = or i32 %239, %244
  %246 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %247 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %250 = call i32 @SM(i32 %248, i32 %249)
  %251 = or i32 %245, %250
  %252 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %253 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %256 = call i32 @SM(i32 %254, i32 %255)
  %257 = or i32 %251, %256
  %258 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %259 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %262 = call i32 @SM(i32 %260, i32 %261)
  %263 = or i32 %257, %262
  %264 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %265 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %268 = call i32 @SM(i32 %266, i32 %267)
  %269 = or i32 %263, %268
  %270 = load i32, i32* %8, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %8, align 4
  %272 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %273 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw* %272, i64 %273, i32 %274)
  %276 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %277 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %278 = call i32 @REG_READ(%struct.ath_hw* %276, i64 %277)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %280 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %289 = or i32 %287, %288
  %290 = xor i32 %289, -1
  %291 = load i32, i32* %8, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %8, align 4
  %293 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %294 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %297 = call i32 @SM(i32 %295, i32 %296)
  %298 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %299 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %302 = call i32 @SM(i32 %300, i32 %301)
  %303 = or i32 %297, %302
  %304 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %305 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %308 = call i32 @SM(i32 %306, i32 %307)
  %309 = or i32 %303, %308
  %310 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %311 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %314 = call i32 @SM(i32 %312, i32 %313)
  %315 = or i32 %309, %314
  %316 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %317 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %320 = call i32 @SM(i32 %318, i32 %319)
  %321 = or i32 %315, %320
  %322 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %323 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %326 = call i32 @SM(i32 %324, i32 %325)
  %327 = or i32 %321, %326
  %328 = load i32, i32* %8, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %8, align 4
  %330 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %331 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %332 = load i32, i32* %8, align 4
  %333 = call i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw* %330, i64 %331, i32 %332)
  %334 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %335 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %336 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %337 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %338 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %334, i64 %335, i32 %336, i32 %339)
  %341 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %342 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %343 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %344 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %345 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %341, i64 %342, i32 %343, i32 %346)
  %348 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %349 = load i32, i32* @AR9287_AN_TOP2, align 4
  %350 = load i32, i32* @AR9287_AN_TOP2_XPABIAS_LVL, align 4
  %351 = load i32, i32* @AR9287_AN_TOP2_XPABIAS_LVL_S, align 4
  %352 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %353 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %348, i32 %349, i32 %350, i32 %351, i32 %354)
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
