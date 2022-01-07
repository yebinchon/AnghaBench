; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_board_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.TYPE_4__, %struct.modal_eep_header* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.modal_eep_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_OB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_DB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_DB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_OB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_DB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_DB_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_OB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_DB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_DB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_OB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_DB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_DB5_S = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AR_AN_TOP2_XPABIAS_LVL_S = common dso_local global i32 0, align 4
@AR_AN_TOP2_LOCALBIAS = common dso_local global i32 0, align 4
@AR_AN_TOP2_LOCALBIAS_S = common dso_local global i32 0, align 4
@LNA_CTL_LOCAL_BIAS = common dso_local global i32 0, align 4
@AR_PHY_XPA_CFG = common dso_local global i32 0, align 4
@AR_PHY_FORCE_XPA_CFG = common dso_local global i32 0, align 4
@LNA_CTL_FORCE_XPA = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_PGA = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i32 0, align 4
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@AR5416_EEP_MINOR_VER_19 = common dso_local global i64 0, align 8
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_20 = common dso_local global i64 0, align 8
@AR_AN_TOP1 = common dso_local global i32 0, align 4
@AR_AN_TOP1_DACIPMODE = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL_TX_CLIP = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_TX_DESIRED_SCALE_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_def_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.modal_eep_header*, align 8
  %6 = alloca %struct.ar5416_eeprom_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %13, %struct.ar5416_eeprom_def** %6, align 8
  %14 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %15 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %14, i32 0, i32 1
  %16 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %18 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %16, i64 %19
  store %struct.modal_eep_header* %20, %struct.modal_eep_header** %5, align 8
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %22 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %21)
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 23, i32 44
  store i32 %25, i32* %9, align 4
  %26 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %27 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %30, i64 %31, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %128, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %131

39:                                               ; preds = %35
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = call i64 @AR_SREV_9280(%struct.ath_hw* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %131

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 5
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 8192, i32 4096
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %58, %53
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 4096
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %76 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %75, i32 0, i32 19
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = call i32 @REG_WRITE(%struct.ath_hw* %70, i64 %74, i32 %82)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @REG_READ(%struct.ath_hw* %89, i64 %93)
  %95 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %96 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  %100 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %101 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %100, i32 0, i32 18
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %108 = call i32 @SM(i32 %106, i32 %107)
  %109 = or i32 %99, %108
  %110 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %111 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %110, i32 0, i32 17
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %118 = call i32 @SM(i32 %116, i32 %117)
  %119 = or i32 %109, %118
  %120 = call i32 @REG_WRITE(%struct.ath_hw* %84, i64 %88, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %123 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ath9k_hw_def_set_gain(%struct.ath_hw* %121, %struct.modal_eep_header* %122, %struct.ar5416_eeprom_def* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %69
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %35

131:                                              ; preds = %46, %35
  %132 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %133 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %241

135:                                              ; preds = %131
  %136 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %137 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %135
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %142 = load i32, i32* @AR_AN_RF2G1_CH0_OB, align 4
  %143 = load i32, i32* @AR_AN_RF2G1_CH0_OB_S, align 4
  %144 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %145 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %140, i32 %141, i32 %142, i32 %143, i32 %146)
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %150 = load i32, i32* @AR_AN_RF2G1_CH0_DB, align 4
  %151 = load i32, i32* @AR_AN_RF2G1_CH0_DB_S, align 4
  %152 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %153 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %148, i32 %149, i32 %150, i32 %151, i32 %154)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %158 = load i32, i32* @AR_AN_RF2G1_CH1_OB, align 4
  %159 = load i32, i32* @AR_AN_RF2G1_CH1_OB_S, align 4
  %160 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %161 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %156, i32 %157, i32 %158, i32 %159, i32 %162)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %166 = load i32, i32* @AR_AN_RF2G1_CH1_DB, align 4
  %167 = load i32, i32* @AR_AN_RF2G1_CH1_DB_S, align 4
  %168 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %169 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %164, i32 %165, i32 %166, i32 %167, i32 %170)
  br label %205

172:                                              ; preds = %135
  %173 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %174 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %175 = load i32, i32* @AR_AN_RF5G1_CH0_OB5, align 4
  %176 = load i32, i32* @AR_AN_RF5G1_CH0_OB5_S, align 4
  %177 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %178 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %173, i32 %174, i32 %175, i32 %176, i32 %179)
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %183 = load i32, i32* @AR_AN_RF5G1_CH0_DB5, align 4
  %184 = load i32, i32* @AR_AN_RF5G1_CH0_DB5_S, align 4
  %185 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %186 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %181, i32 %182, i32 %183, i32 %184, i32 %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %190 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %191 = load i32, i32* @AR_AN_RF5G1_CH1_OB5, align 4
  %192 = load i32, i32* @AR_AN_RF5G1_CH1_OB5_S, align 4
  %193 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %194 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %189, i32 %190, i32 %191, i32 %192, i32 %195)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %199 = load i32, i32* @AR_AN_RF5G1_CH1_DB5, align 4
  %200 = load i32, i32* @AR_AN_RF5G1_CH1_DB5_S, align 4
  %201 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %202 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %197, i32 %198, i32 %199, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %172, %139
  %206 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %207 = load i32, i32* @AR_AN_TOP2, align 4
  %208 = load i32, i32* @AR_AN_TOP2_XPABIAS_LVL, align 4
  %209 = load i32, i32* @AR_AN_TOP2_XPABIAS_LVL_S, align 4
  %210 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %211 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %206, i32 %207, i32 %208, i32 %209, i32 %212)
  %214 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %215 = load i32, i32* @AR_AN_TOP2, align 4
  %216 = load i32, i32* @AR_AN_TOP2_LOCALBIAS, align 4
  %217 = load i32, i32* @AR_AN_TOP2_LOCALBIAS_S, align 4
  %218 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %219 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @LNA_CTL_LOCAL_BIAS, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %214, i32 %215, i32 %216, i32 %217, i32 %226)
  %228 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %229 = load i32, i32* @AR_PHY_XPA_CFG, align 4
  %230 = load i32, i32* @AR_PHY_FORCE_XPA_CFG, align 4
  %231 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %232 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @LNA_CTL_FORCE_XPA, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %228, i32 %229, i32 %230, i32 %239)
  br label %241

241:                                              ; preds = %205, %131
  %242 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %243 = load i32, i32* @AR_PHY_SETTLING, align 4
  %244 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %245 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %246 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %242, i32 %243, i32 %244, i32 %247)
  %249 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %250 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %251 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %252 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %253 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %249, i32 %250, i32 %251, i32 %254)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %257 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %241
  %260 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %261 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %262 = load i32, i32* @AR_PHY_DESIRED_SZ_PGA, align 4
  %263 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %264 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %260, i32 %261, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %259, %241
  %268 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %269 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %270 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %271 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %270, i32 0, i32 16
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %274 = call i32 @SM(i32 %272, i32 %273)
  %275 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %276 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %275, i32 0, i32 16
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %279 = call i32 @SM(i32 %277, i32 %278)
  %280 = or i32 %274, %279
  %281 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %282 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %281, i32 0, i32 15
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %285 = call i32 @SM(i32 %283, i32 %284)
  %286 = or i32 %280, %285
  %287 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %288 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %287, i32 0, i32 15
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %291 = call i32 @SM(i32 %289, i32 %290)
  %292 = or i32 %286, %291
  %293 = call i32 @REG_WRITE(%struct.ath_hw* %268, i64 %269, i32 %292)
  %294 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %295 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %296 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %297 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %298 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %294, i32 %295, i32 %296, i32 %299)
  %301 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %302 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %319

304:                                              ; preds = %267
  %305 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %306 = load i32, i32* @AR_PHY_CCA, align 4
  %307 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %308 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %309 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %305, i32 %306, i32 %307, i32 %310)
  %312 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %313 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %314 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %315 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %316 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %312, i32 %313, i32 %314, i32 %317)
  br label %334

319:                                              ; preds = %267
  %320 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %321 = load i32, i32* @AR_PHY_CCA, align 4
  %322 = load i32, i32* @AR_PHY_CCA_THRESH62, align 4
  %323 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %324 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %323, i32 0, i32 10
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %320, i32 %321, i32 %322, i32 %325)
  %327 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %328 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %329 = load i32, i32* @AR_PHY_EXT_CCA_THRESH62, align 4
  %330 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %331 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %330, i32 0, i32 10
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %327, i32 %328, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %319, %304
  %335 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %336 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %335)
  %337 = load i64, i64* @AR5416_EEP_MINOR_VER_2, align 8
  %338 = icmp sge i64 %336, %337
  br i1 %338, label %339, label %354

339:                                              ; preds = %334
  %340 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %341 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %342 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %343 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %344 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %343, i32 0, i32 11
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %340, i32 %341, i32 %342, i32 %345)
  %347 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %348 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %349 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %350 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %351 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %350, i32 0, i32 12
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %347, i32 %348, i32 %349, i32 %352)
  br label %354

354:                                              ; preds = %339, %334
  %355 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %356 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %355)
  %357 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %358 = icmp sge i64 %356, %357
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %361 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %359
  %364 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %365 = load i32, i32* @AR_PHY_SETTLING, align 4
  %366 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %367 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %368 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %367, i32 0, i32 13
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %364, i32 %365, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %363, %359
  br label %372

372:                                              ; preds = %371, %354
  %373 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %374 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %389

376:                                              ; preds = %372
  %377 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %378 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %377)
  %379 = load i64, i64* @AR5416_EEP_MINOR_VER_19, align 8
  %380 = icmp sge i64 %378, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %376
  %382 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %383 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %384 = load i32, i32* @AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK, align 4
  %385 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %386 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %385, i32 0, i32 14
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %382, i32 %383, i32 %384, i32 %387)
  br label %389

389:                                              ; preds = %381, %376, %372
  %390 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %391 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %450

393:                                              ; preds = %389
  %394 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %395 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %394)
  %396 = load i64, i64* @AR5416_EEP_MINOR_VER_20, align 8
  %397 = icmp sge i64 %395, %396
  br i1 %397, label %398, label %450

398:                                              ; preds = %393
  %399 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %400 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %404 = load i32, i32* @AR_AN_TOP1, align 4
  %405 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %406 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %407 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %403, i32 %404, i32 %405, i32 %409)
  br label %432

411:                                              ; preds = %398
  %412 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %413 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %411
  %418 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %419 = load i32, i32* @AR_AN_TOP1, align 4
  %420 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %421 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %418, i32 %419, i32 %420, i32 0)
  br label %431

422:                                              ; preds = %411
  %423 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %424 = load i32, i32* @AR_AN_TOP1, align 4
  %425 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %426 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %427 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %423, i32 %424, i32 %425, i32 %429)
  br label %431

431:                                              ; preds = %422, %417
  br label %432

432:                                              ; preds = %431, %402
  %433 = call i32 @udelay(i32 100)
  %434 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %435 = load i32, i32* @AR_PHY_FRAME_CTL, align 4
  %436 = load i32, i32* @AR_PHY_FRAME_CTL_TX_CLIP, align 4
  %437 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %438 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %437, i32 0, i32 14
  %439 = load i32, i32* %438, align 8
  %440 = ashr i32 %439, 2
  %441 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %434, i32 %435, i32 %436, i32 %440)
  %442 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %443 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %444 = load i32, i32* @AR_PHY_TX_DESIRED_SCALE_CCK, align 4
  %445 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %446 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %442, i32 %443, i32 %444, i32 %448)
  br label %450

450:                                              ; preds = %432, %393, %389
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath9k_hw_def_set_gain(%struct.ath_hw*, %struct.modal_eep_header*, %struct.ar5416_eeprom_def*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
