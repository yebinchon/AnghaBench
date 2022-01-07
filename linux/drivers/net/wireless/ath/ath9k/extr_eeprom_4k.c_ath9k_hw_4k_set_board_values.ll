; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_board_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, %struct.ath9k_hw_capabilities }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.modal_eep_4k_header, %struct.base_eep_header_4k }
%struct.modal_eep_4k_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.base_eep_header_4k = type { i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@AR_PHY_MULTICHAIN_GAIN_CTL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_CTL_ALL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_CTL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_9285_FAST_DIV_BIAS = common dso_local global i32 0, align 4
@AR_PHY_9285_FAST_DIV_BIAS_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_cck = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_cck_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_psk = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_psk_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_qam = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_qam_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_DB_1 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_DB_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G4_DB_2 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G4_DB_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_4_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_4_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_4_S = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i32 0, align 4
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
@AR5416_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@EEP_4K_BB_DESIRED_SCALE_MASK = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL8 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL10 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL12 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL11 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_4k_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath9k_hw_capabilities*, align 8
  %6 = alloca %struct.modal_eep_4k_header*, align 8
  %7 = alloca %struct.ar5416_eeprom_4k*, align 8
  %8 = alloca %struct.base_eep_header_4k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca [5 x i32], align 16
  %12 = alloca [5 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  store %struct.ath9k_hw_capabilities* %22, %struct.ath9k_hw_capabilities** %5, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.ar5416_eeprom_4k* %25, %struct.ar5416_eeprom_4k** %7, align 8
  %26 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %7, align 8
  %27 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %26, i32 0, i32 1
  store %struct.base_eep_header_4k* %27, %struct.base_eep_header_4k** %8, align 8
  %28 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %7, align 8
  %29 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %28, i32 0, i32 0
  store %struct.modal_eep_4k_header* %29, %struct.modal_eep_4k_header** %6, align 8
  store i32 23, i32* %9, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %32 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %33 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %32, i32 0, i32 28
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %30, i32 %31, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %39 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ath9k_hw_4k_set_gain(%struct.ath_hw* %37, %struct.modal_eep_4k_header* %38, %struct.ar5416_eeprom_4k* %39, i32 %40)
  %42 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %43 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %154

46:                                               ; preds = %2
  %47 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %48 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %51 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %55 = call i32 @REG_READ(%struct.ath_hw* %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @AR_PHY_9285_ANT_DIV_CTL_ALL, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @AR_PHY_9285_ANT_DIV_CTL, align 4
  %62 = call i32 @SM(i32 %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF, align 4
  %67 = call i32 @SM(i32 %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %14, align 4
  %71 = ashr i32 %70, 2
  %72 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF, align 4
  %73 = call i32 @SM(i32 %71, i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %13, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_GAINTB, align 4
  %79 = call i32 @SM(i32 %77, i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 2
  %84 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_GAINTB, align 4
  %85 = call i32 @SM(i32 %83, i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @REG_WRITE(%struct.ath_hw* %88, i32 %89, i32 %90)
  %92 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %93 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %94 = call i32 @REG_READ(%struct.ath_hw* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %96 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %97 = call i32 @REG_READ(%struct.ath_hw* %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %13, align 4
  %103 = ashr i32 %102, 3
  %104 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %105 = call i32 @SM(i32 %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @REG_WRITE(%struct.ath_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %114 = call i32 @REG_READ(%struct.ath_hw* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %5, align 8
  %116 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %46
  %122 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %123 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %124 = call i32 @REG_READ(%struct.ath_hw* %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF, align 4
  %126 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %16, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %132 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %137 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF_S, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %16, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* @AR_PHY_9285_FAST_DIV_BIAS, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* @AR_PHY_9285_FAST_DIV_BIAS_S, align 4
  %146 = shl i32 0, %145
  %147 = load i32, i32* %16, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %16, align 4
  %149 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %150 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @REG_WRITE(%struct.ath_hw* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %121, %46
  br label %154

154:                                              ; preds = %153, %2
  %155 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %156 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %157, 2
  br i1 %158, label %159, label %220

159:                                              ; preds = %154
  %160 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %161 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 %162, i32* %163, align 16
  %164 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %165 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 %166, i32* %167, align 4
  %168 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %169 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 %170, i32* %171, align 8
  %172 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %173 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 %174, i32* %175, align 4
  %176 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %177 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 %178, i32* %179, align 16
  %180 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %181 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %182, i32* %183, align 16
  %184 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %185 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %186, i32* %187, align 4
  %188 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %189 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %190, i32* %191, align 8
  %192 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %193 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %194, i32* %195, align 4
  %196 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %197 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %198, i32* %199, align 16
  %200 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %201 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %202, i32* %203, align 16
  %204 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %205 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %204, i32 0, i32 14
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 %206, i32* %207, align 4
  %208 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %209 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  store i32 %210, i32* %211, align 8
  %212 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %213 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %212, i32 0, i32 16
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3
  store i32 %214, i32* %215, align 4
  %216 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %217 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %216, i32 0, i32 17
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4
  store i32 %218, i32* %219, align 16
  br label %287

220:                                              ; preds = %154
  %221 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %222 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %259

225:                                              ; preds = %220
  %226 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %227 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 %228, i32* %229, align 16
  %230 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %231 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 %232, i32* %233, align 16
  %234 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 %232, i32* %234, align 4
  %235 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 %232, i32* %235, align 8
  %236 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 %232, i32* %236, align 4
  %237 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %238 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %239, i32* %240, align 16
  %241 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %242 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %241, i32 0, i32 9
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %243, i32* %244, align 16
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %243, i32* %245, align 4
  %246 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %243, i32* %246, align 8
  %247 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %243, i32* %247, align 4
  %248 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %249 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %248, i32 0, i32 13
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %250, i32* %251, align 16
  %252 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %253 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %252, i32 0, i32 14
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4
  store i32 %254, i32* %255, align 16
  %256 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3
  store i32 %254, i32* %256, align 4
  %257 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  store i32 %254, i32* %257, align 8
  %258 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 %254, i32* %258, align 4
  br label %286

259:                                              ; preds = %220
  store i32 0, i32* %17, align 4
  br label %260

260:                                              ; preds = %282, %259
  %261 = load i32, i32* %17, align 4
  %262 = icmp slt i32 %261, 5
  br i1 %262, label %263, label %285

263:                                              ; preds = %260
  %264 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %265 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %268
  store i32 %266, i32* %269, align 4
  %270 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %271 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %274
  store i32 %272, i32* %275, align 4
  %276 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %277 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %280
  store i32 %278, i32* %281, align 4
  br label %282

282:                                              ; preds = %263
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  br label %260

285:                                              ; preds = %260
  br label %286

286:                                              ; preds = %285, %225
  br label %287

287:                                              ; preds = %286, %159
  %288 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %289 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %288)
  %290 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %291 = call i64 @AR_SREV_9271(%struct.ath_hw* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %329

293:                                              ; preds = %287
  %294 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %295 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %296 = load i32, i32* @AR9271_AN_RF2G3_OB_cck, align 4
  %297 = load i32, i32* @AR9271_AN_RF2G3_OB_cck_S, align 4
  %298 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %299 = load i32, i32* %298, align 16
  %300 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %294, i32 %295, i32 %296, i32 %297, i32 %299)
  %301 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %302 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %303 = load i32, i32* @AR9271_AN_RF2G3_OB_psk, align 4
  %304 = load i32, i32* @AR9271_AN_RF2G3_OB_psk_S, align 4
  %305 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %301, i32 %302, i32 %303, i32 %304, i32 %306)
  %308 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %309 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %310 = load i32, i32* @AR9271_AN_RF2G3_OB_qam, align 4
  %311 = load i32, i32* @AR9271_AN_RF2G3_OB_qam_S, align 4
  %312 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %308, i32 %309, i32 %310, i32 %311, i32 %313)
  %315 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %316 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %317 = load i32, i32* @AR9271_AN_RF2G3_DB_1, align 4
  %318 = load i32, i32* @AR9271_AN_RF2G3_DB_1_S, align 4
  %319 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %320 = load i32, i32* %319, align 16
  %321 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %315, i32 %316, i32 %317, i32 %318, i32 %320)
  %322 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %323 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %324 = load i32, i32* @AR9271_AN_RF2G4_DB_2, align 4
  %325 = load i32, i32* @AR9271_AN_RF2G4_DB_2_S, align 4
  %326 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %327 = load i32, i32* %326, align 16
  %328 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %322, i32 %323, i32 %324, i32 %325, i32 %327)
  br label %435

329:                                              ; preds = %287
  %330 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %331 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %332 = load i32, i32* @AR9285_AN_RF2G3_OB_0, align 4
  %333 = load i32, i32* @AR9285_AN_RF2G3_OB_0_S, align 4
  %334 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %335 = load i32, i32* %334, align 16
  %336 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %330, i32 %331, i32 %332, i32 %333, i32 %335)
  %337 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %338 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %339 = load i32, i32* @AR9285_AN_RF2G3_OB_1, align 4
  %340 = load i32, i32* @AR9285_AN_RF2G3_OB_1_S, align 4
  %341 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %337, i32 %338, i32 %339, i32 %340, i32 %342)
  %344 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %345 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %346 = load i32, i32* @AR9285_AN_RF2G3_OB_2, align 4
  %347 = load i32, i32* @AR9285_AN_RF2G3_OB_2_S, align 4
  %348 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %344, i32 %345, i32 %346, i32 %347, i32 %349)
  %351 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %352 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %353 = load i32, i32* @AR9285_AN_RF2G3_OB_3, align 4
  %354 = load i32, i32* @AR9285_AN_RF2G3_OB_3_S, align 4
  %355 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %351, i32 %352, i32 %353, i32 %354, i32 %356)
  %358 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %359 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %360 = load i32, i32* @AR9285_AN_RF2G3_OB_4, align 4
  %361 = load i32, i32* @AR9285_AN_RF2G3_OB_4_S, align 4
  %362 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %363 = load i32, i32* %362, align 16
  %364 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %358, i32 %359, i32 %360, i32 %361, i32 %363)
  %365 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %366 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %367 = load i32, i32* @AR9285_AN_RF2G3_DB1_0, align 4
  %368 = load i32, i32* @AR9285_AN_RF2G3_DB1_0_S, align 4
  %369 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %370 = load i32, i32* %369, align 16
  %371 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %365, i32 %366, i32 %367, i32 %368, i32 %370)
  %372 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %373 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %374 = load i32, i32* @AR9285_AN_RF2G3_DB1_1, align 4
  %375 = load i32, i32* @AR9285_AN_RF2G3_DB1_1_S, align 4
  %376 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %372, i32 %373, i32 %374, i32 %375, i32 %377)
  %379 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %380 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %381 = load i32, i32* @AR9285_AN_RF2G3_DB1_2, align 4
  %382 = load i32, i32* @AR9285_AN_RF2G3_DB1_2_S, align 4
  %383 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %379, i32 %380, i32 %381, i32 %382, i32 %384)
  %386 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %387 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %388 = load i32, i32* @AR9285_AN_RF2G4_DB1_3, align 4
  %389 = load i32, i32* @AR9285_AN_RF2G4_DB1_3_S, align 4
  %390 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %386, i32 %387, i32 %388, i32 %389, i32 %391)
  %393 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %394 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %395 = load i32, i32* @AR9285_AN_RF2G4_DB1_4, align 4
  %396 = load i32, i32* @AR9285_AN_RF2G4_DB1_4_S, align 4
  %397 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %398 = load i32, i32* %397, align 16
  %399 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %393, i32 %394, i32 %395, i32 %396, i32 %398)
  %400 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %401 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %402 = load i32, i32* @AR9285_AN_RF2G4_DB2_0, align 4
  %403 = load i32, i32* @AR9285_AN_RF2G4_DB2_0_S, align 4
  %404 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %405 = load i32, i32* %404, align 16
  %406 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %400, i32 %401, i32 %402, i32 %403, i32 %405)
  %407 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %408 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %409 = load i32, i32* @AR9285_AN_RF2G4_DB2_1, align 4
  %410 = load i32, i32* @AR9285_AN_RF2G4_DB2_1_S, align 4
  %411 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %407, i32 %408, i32 %409, i32 %410, i32 %412)
  %414 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %415 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %416 = load i32, i32* @AR9285_AN_RF2G4_DB2_2, align 4
  %417 = load i32, i32* @AR9285_AN_RF2G4_DB2_2_S, align 4
  %418 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %414, i32 %415, i32 %416, i32 %417, i32 %419)
  %421 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %422 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %423 = load i32, i32* @AR9285_AN_RF2G4_DB2_3, align 4
  %424 = load i32, i32* @AR9285_AN_RF2G4_DB2_3_S, align 4
  %425 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %421, i32 %422, i32 %423, i32 %424, i32 %426)
  %428 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %429 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %430 = load i32, i32* @AR9285_AN_RF2G4_DB2_4, align 4
  %431 = load i32, i32* @AR9285_AN_RF2G4_DB2_4_S, align 4
  %432 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4
  %433 = load i32, i32* %432, align 16
  %434 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %428, i32 %429, i32 %430, i32 %431, i32 %433)
  br label %435

435:                                              ; preds = %329, %293
  %436 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %437 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %436)
  %438 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %439 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %438)
  %440 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %441 = load i32, i32* @AR_PHY_SETTLING, align 4
  %442 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %443 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %444 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %443, i32 0, i32 27
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %440, i32 %441, i32 %442, i32 %445)
  %447 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %448 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %449 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %450 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %451 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %450, i32 0, i32 26
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %447, i32 %448, i32 %449, i32 %452)
  %454 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %455 = load i32, i32* @AR_PHY_RF_CTL4, align 4
  %456 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %457 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %456, i32 0, i32 18
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %460 = call i32 @SM(i32 %458, i32 %459)
  %461 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %462 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %461, i32 0, i32 18
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %465 = call i32 @SM(i32 %463, i32 %464)
  %466 = or i32 %460, %465
  %467 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %468 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %467, i32 0, i32 19
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %471 = call i32 @SM(i32 %469, i32 %470)
  %472 = or i32 %466, %471
  %473 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %474 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %473, i32 0, i32 19
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %477 = call i32 @SM(i32 %475, i32 %476)
  %478 = or i32 %472, %477
  %479 = call i32 @REG_RMW(%struct.ath_hw* %454, i32 %455, i32 %478, i32 0)
  %480 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %481 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %482 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %483 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %484 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %483, i32 0, i32 25
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %480, i32 %481, i32 %482, i32 %485)
  %487 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %488 = call i64 @AR_SREV_9271_10(%struct.ath_hw* %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %435
  %491 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %492 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %493 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %494 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %495 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %494, i32 0, i32 25
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %491, i32 %492, i32 %493, i32 %496)
  br label %498

498:                                              ; preds = %490, %435
  %499 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %500 = load i32, i32* @AR_PHY_CCA, align 4
  %501 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %502 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %503 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %502, i32 0, i32 24
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %499, i32 %500, i32 %501, i32 %504)
  %506 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %507 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %508 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %509 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %510 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %509, i32 0, i32 24
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %506, i32 %507, i32 %508, i32 %511)
  %513 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %514 = call i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw* %513)
  %515 = load i64, i64* @AR5416_EEP_MINOR_VER_2, align 8
  %516 = icmp sge i64 %514, %515
  br i1 %516, label %517, label %532

517:                                              ; preds = %498
  %518 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %519 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %520 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %521 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %522 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %521, i32 0, i32 23
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %518, i32 %519, i32 %520, i32 %523)
  %525 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %526 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %527 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %528 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %529 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %528, i32 0, i32 22
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %525, i32 %526, i32 %527, i32 %530)
  br label %532

532:                                              ; preds = %517, %498
  %533 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %534 = call i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw* %533)
  %535 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %536 = icmp sge i64 %534, %535
  br i1 %536, label %537, label %550

537:                                              ; preds = %532
  %538 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %539 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %537
  %542 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %543 = load i32, i32* @AR_PHY_SETTLING, align 4
  %544 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %545 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %546 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %545, i32 0, i32 21
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %542, i32 %543, i32 %544, i32 %547)
  br label %549

549:                                              ; preds = %541, %537
  br label %550

550:                                              ; preds = %549, %532
  %551 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %552 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %551)
  %553 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %554 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %553, i32 0, i32 20
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* @EEP_4K_BB_DESIRED_SCALE_MASK, align 4
  %557 = and i32 %555, %556
  store i32 %557, i32* %15, align 4
  %558 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %559 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %634

562:                                              ; preds = %550
  %563 = load i32, i32* %15, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %634

565:                                              ; preds = %562
  %566 = call i32 @BIT(i32 0)
  %567 = call i32 @BIT(i32 5)
  %568 = or i32 %566, %567
  %569 = call i32 @BIT(i32 10)
  %570 = or i32 %568, %569
  %571 = call i32 @BIT(i32 15)
  %572 = or i32 %570, %571
  %573 = call i32 @BIT(i32 20)
  %574 = or i32 %572, %573
  %575 = call i32 @BIT(i32 25)
  %576 = or i32 %574, %575
  store i32 %576, i32* %19, align 4
  %577 = load i32, i32* %19, align 4
  %578 = load i32, i32* %15, align 4
  %579 = mul nsw i32 %577, %578
  store i32 %579, i32* %18, align 4
  %580 = load i32, i32* %19, align 4
  %581 = mul nsw i32 %580, 31
  store i32 %581, i32* %20, align 4
  %582 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %583 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %582)
  %584 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %585 = load i32, i32* @AR_PHY_TX_PWRCTRL8, align 4
  %586 = load i32, i32* %18, align 4
  %587 = load i32, i32* %20, align 4
  %588 = call i32 @REG_RMW(%struct.ath_hw* %584, i32 %585, i32 %586, i32 %587)
  %589 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %590 = load i32, i32* @AR_PHY_TX_PWRCTRL10, align 4
  %591 = load i32, i32* %18, align 4
  %592 = load i32, i32* %20, align 4
  %593 = call i32 @REG_RMW(%struct.ath_hw* %589, i32 %590, i32 %591, i32 %592)
  %594 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %595 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL12, align 4
  %596 = load i32, i32* %18, align 4
  %597 = load i32, i32* %20, align 4
  %598 = call i32 @REG_RMW(%struct.ath_hw* %594, i32 %595, i32 %596, i32 %597)
  %599 = call i32 @BIT(i32 0)
  %600 = call i32 @BIT(i32 5)
  %601 = or i32 %599, %600
  %602 = call i32 @BIT(i32 15)
  %603 = or i32 %601, %602
  store i32 %603, i32* %19, align 4
  %604 = load i32, i32* %19, align 4
  %605 = load i32, i32* %15, align 4
  %606 = mul nsw i32 %604, %605
  store i32 %606, i32* %18, align 4
  %607 = load i32, i32* %19, align 4
  %608 = mul nsw i32 %607, 31
  store i32 %608, i32* %20, align 4
  %609 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %610 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %611 = load i32, i32* %18, align 4
  %612 = load i32, i32* %20, align 4
  %613 = call i32 @REG_RMW(%struct.ath_hw* %609, i32 %610, i32 %611, i32 %612)
  %614 = call i32 @BIT(i32 0)
  %615 = call i32 @BIT(i32 5)
  %616 = or i32 %614, %615
  store i32 %616, i32* %19, align 4
  %617 = load i32, i32* %19, align 4
  %618 = load i32, i32* %15, align 4
  %619 = mul nsw i32 %617, %618
  store i32 %619, i32* %18, align 4
  %620 = load i32, i32* %19, align 4
  %621 = mul nsw i32 %620, 31
  store i32 %621, i32* %20, align 4
  %622 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %623 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL11, align 4
  %624 = load i32, i32* %18, align 4
  %625 = load i32, i32* %20, align 4
  %626 = call i32 @REG_RMW(%struct.ath_hw* %622, i32 %623, i32 %624, i32 %625)
  %627 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %628 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL13, align 4
  %629 = load i32, i32* %18, align 4
  %630 = load i32, i32* %20, align 4
  %631 = call i32 @REG_RMW(%struct.ath_hw* %627, i32 %628, i32 %629, i32 %630)
  %632 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %633 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %632)
  br label %634

634:                                              ; preds = %565, %562, %550
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath9k_hw_4k_set_gain(%struct.ath_hw*, %struct.modal_eep_4k_header*, %struct.ar5416_eeprom_4k*, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9271_10(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
