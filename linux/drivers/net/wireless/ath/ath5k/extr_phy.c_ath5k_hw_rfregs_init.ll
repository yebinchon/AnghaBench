; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfregs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfregs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_gain_opt = type { %struct.ath5k_gain_opt_step* }
%struct.ath5k_gain_opt_step = type { i32* }
%struct.ath5k_hw = type { i32, i32, i32, i64, i32*, i64, i64, %struct.TYPE_4__, i32*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32**, i32**, i32*, i32*, i32*, i64**, i32* }
%struct.ieee80211_channel = type { i64, i64, i32 }
%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_ini_rfbuffer = type { i32, i32, i32* }

@rf_regs_5111 = common dso_local global i8* null, align 8
@rfb_5111 = common dso_local global i8* null, align 8
@rfgain_opt_5111 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i32 0, align 4
@rf_regs_5112a = common dso_local global i8* null, align 8
@rfb_5112a = common dso_local global i8* null, align 8
@rf_regs_5112 = common dso_local global i8* null, align 8
@rfb_5112 = common dso_local global i8* null, align 8
@rfgain_opt_5112 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@rf_regs_2413 = common dso_local global i8* null, align 8
@rfb_2413 = common dso_local global i8* null, align 8
@rf_regs_2316 = common dso_local global i8* null, align 8
@rfb_2316 = common dso_local global i8* null, align 8
@rf_regs_5413 = common dso_local global i8* null, align 8
@rfb_5413 = common dso_local global i8* null, align 8
@rf_regs_2425 = common dso_local global i8* null, align 8
@rfb_2317 = common dso_local global i8* null, align 8
@AR5K_SREV_AR2417 = common dso_local global i64 0, align 8
@rfb_2425 = common dso_local global i8* null, align 8
@rfb_2417 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AR5K_MAX_RF_BANKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid bank\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@AR5K_RF_OB_2GHZ = common dso_local global i32 0, align 4
@AR5K_RF_DB_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@AR5K_RF_OB_5GHZ = common dso_local global i32 0, align 4
@AR5K_RF_DB_5GHZ = common dso_local global i32 0, align 4
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_RF_TURBO = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL_TX_CLIP = common dso_local global i32 0, align 4
@AR5K_RF_PWD_90 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_84 = common dso_local global i32 0, align 4
@AR5K_RF_RFGAIN_SEL = common dso_local global i32 0, align 4
@AR5K_RFGAIN_ACTIVE = common dso_local global i8* null, align 8
@AR5K_RF_PWD_XPD = common dso_local global i32 0, align 4
@AR5K_RF_XPD_GAIN = common dso_local global i32 0, align 4
@AR5K_RF_GAIN_I = common dso_local global i32 0, align 4
@AR5K_RF_PLO_SEL = common dso_local global i32 0, align 4
@AR5K_BWMODE_5MHZ = common dso_local global i64 0, align 8
@AR5K_BWMODE_10MHZ = common dso_local global i64 0, align 8
@AR5K_RF_WAIT_S = common dso_local global i32 0, align 4
@AR5K_RF_WAIT_I = common dso_local global i32 0, align 4
@AR5K_RF_MAX_TIME = common dso_local global i32 0, align 4
@AR5K_RF_MIXGAIN_OVR = common dso_local global i32 0, align 4
@AR5K_RF_PWD_138 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_137 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_136 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_132 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_131 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_130 = common dso_local global i32 0, align 4
@AR5K_RF_XPD_SEL = common dso_local global i32 0, align 4
@AR5K_RF_PD_GAIN_LO = common dso_local global i32 0, align 4
@AR5K_RF_PD_GAIN_HI = common dso_local global i32 0, align 4
@AR5K_SREV_REV = common dso_local global i32 0, align 4
@AR5K_RF_HIGH_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_MID_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_LOW_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_PUSH_UP = common dso_local global i32 0, align 4
@AR5K_SREV_PHY_5212A = common dso_local global i64 0, align 8
@AR5K_RF_PAD2GND = common dso_local global i32 0, align 4
@AR5K_RF_XB2_LVL = common dso_local global i32 0, align 4
@AR5K_RF_XB5_LVL = common dso_local global i32 0, align 4
@AR5K_RF_PWD_167 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_166 = common dso_local global i32 0, align 4
@AR5K_RF_PD_PERIOD_A = common dso_local global i32 0, align 4
@AR5K_RF_PD_DELAY_A = common dso_local global i32 0, align 4
@AR5K_RF_DERBY_CHAN_SEL_MODE = common dso_local global i32 0, align 4
@AR5K_SREV_AR5424 = common dso_local global i64 0, align 8
@AR5K_SREV_AR5413 = common dso_local global i64 0, align 8
@AR5K_RF_PWD_ICLOBUF_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*, i32)* @ath5k_hw_rfregs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rfregs_init(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_rf_reg*, align 8
  %9 = alloca %struct.ath5k_ini_rfbuffer*, align 8
  %10 = alloca %struct.ath5k_gain_opt*, align 8
  %11 = alloca %struct.ath5k_gain_opt_step*, align 8
  %12 = alloca %struct.ath5k_eeprom_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath5k_gain_opt* null, %struct.ath5k_gain_opt** %10, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %23, %struct.ath5k_eeprom_info** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %161 [
    i32 130, label %27
    i32 129, label %41
    i32 132, label %76
    i32 134, label %90
    i32 128, label %104
    i32 133, label %118
    i32 131, label %132
  ]

27:                                               ; preds = %3
  %28 = load i8*, i8** @rf_regs_5111, align 8
  %29 = bitcast i8* %28 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %29, %struct.ath5k_rf_reg** %8, align 8
  %30 = load i8*, i8** @rf_regs_5111, align 8
  %31 = call i8* @ARRAY_SIZE(i8* %30)
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @rfb_5111, align 8
  %35 = bitcast i8* %34 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %35, %struct.ath5k_ini_rfbuffer** %9, align 8
  %36 = load i8*, i8** @rfb_5111, align 8
  %37 = call i8* @ARRAY_SIZE(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store %struct.ath5k_gain_opt* @rfgain_opt_5111, %struct.ath5k_gain_opt** %10, align 8
  br label %164

41:                                               ; preds = %3
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AR5K_SREV_RAD_5112A, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i8*, i8** @rf_regs_5112a, align 8
  %49 = bitcast i8* %48 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %49, %struct.ath5k_rf_reg** %8, align 8
  %50 = load i8*, i8** @rf_regs_5112a, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @rfb_5112a, align 8
  %55 = bitcast i8* %54 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %55, %struct.ath5k_ini_rfbuffer** %9, align 8
  %56 = load i8*, i8** @rfb_5112a, align 8
  %57 = call i8* @ARRAY_SIZE(i8* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %60 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %75

61:                                               ; preds = %41
  %62 = load i8*, i8** @rf_regs_5112, align 8
  %63 = bitcast i8* %62 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %63, %struct.ath5k_rf_reg** %8, align 8
  %64 = load i8*, i8** @rf_regs_5112, align 8
  %65 = call i8* @ARRAY_SIZE(i8* %64)
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @rfb_5112, align 8
  %69 = bitcast i8* %68 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %69, %struct.ath5k_ini_rfbuffer** %9, align 8
  %70 = load i8*, i8** @rfb_5112, align 8
  %71 = call i8* @ARRAY_SIZE(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %61, %47
  store %struct.ath5k_gain_opt* @rfgain_opt_5112, %struct.ath5k_gain_opt** %10, align 8
  br label %164

76:                                               ; preds = %3
  %77 = load i8*, i8** @rf_regs_2413, align 8
  %78 = bitcast i8* %77 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %78, %struct.ath5k_rf_reg** %8, align 8
  %79 = load i8*, i8** @rf_regs_2413, align 8
  %80 = call i8* @ARRAY_SIZE(i8* %79)
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 9
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @rfb_2413, align 8
  %84 = bitcast i8* %83 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %84, %struct.ath5k_ini_rfbuffer** %9, align 8
  %85 = load i8*, i8** @rfb_2413, align 8
  %86 = call i8* @ARRAY_SIZE(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %89 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %164

90:                                               ; preds = %3
  %91 = load i8*, i8** @rf_regs_2316, align 8
  %92 = bitcast i8* %91 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %92, %struct.ath5k_rf_reg** %8, align 8
  %93 = load i8*, i8** @rf_regs_2316, align 8
  %94 = call i8* @ARRAY_SIZE(i8* %93)
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @rfb_2316, align 8
  %98 = bitcast i8* %97 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %98, %struct.ath5k_ini_rfbuffer** %9, align 8
  %99 = load i8*, i8** @rfb_2316, align 8
  %100 = call i8* @ARRAY_SIZE(i8* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %164

104:                                              ; preds = %3
  %105 = load i8*, i8** @rf_regs_5413, align 8
  %106 = bitcast i8* %105 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %106, %struct.ath5k_rf_reg** %8, align 8
  %107 = load i8*, i8** @rf_regs_5413, align 8
  %108 = call i8* @ARRAY_SIZE(i8* %107)
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @rfb_5413, align 8
  %112 = bitcast i8* %111 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %112, %struct.ath5k_ini_rfbuffer** %9, align 8
  %113 = load i8*, i8** @rfb_5413, align 8
  %114 = call i8* @ARRAY_SIZE(i8* %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %117 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %164

118:                                              ; preds = %3
  %119 = load i8*, i8** @rf_regs_2425, align 8
  %120 = bitcast i8* %119 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %120, %struct.ath5k_rf_reg** %8, align 8
  %121 = load i8*, i8** @rf_regs_2425, align 8
  %122 = call i8* @ARRAY_SIZE(i8* %121)
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @rfb_2317, align 8
  %126 = bitcast i8* %125 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %126, %struct.ath5k_ini_rfbuffer** %9, align 8
  %127 = load i8*, i8** @rfb_2317, align 8
  %128 = call i8* @ARRAY_SIZE(i8* %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %164

132:                                              ; preds = %3
  %133 = load i8*, i8** @rf_regs_2425, align 8
  %134 = bitcast i8* %133 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %134, %struct.ath5k_rf_reg** %8, align 8
  %135 = load i8*, i8** @rf_regs_2425, align 8
  %136 = call i8* @ARRAY_SIZE(i8* %135)
  %137 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %138 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %140 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AR5K_SREV_AR2417, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %132
  %145 = load i8*, i8** @rfb_2425, align 8
  %146 = bitcast i8* %145 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %146, %struct.ath5k_ini_rfbuffer** %9, align 8
  %147 = load i8*, i8** @rfb_2425, align 8
  %148 = call i8* @ARRAY_SIZE(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %151 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %160

152:                                              ; preds = %132
  %153 = load i8*, i8** @rfb_2417, align 8
  %154 = bitcast i8* %153 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %154, %struct.ath5k_ini_rfbuffer** %9, align 8
  %155 = load i8*, i8** @rfb_2417, align 8
  %156 = call i8* @ARRAY_SIZE(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %159 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %144
  br label %164

161:                                              ; preds = %3
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %856

164:                                              ; preds = %160, %118, %104, %90, %76, %75, %27
  %165 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %166 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %187

169:                                              ; preds = %164
  %170 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %171 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i32* @kmalloc_array(i32 %172, i32 4, i32 %173)
  %175 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %176 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %175, i32 0, i32 8
  store i32* %174, i32** %176, align 8
  %177 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %178 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %169
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %183 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %4, align 4
  br label %856

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %186, %164
  %188 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %189 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %188, i32 0, i32 8
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %249, %187
  %192 = load i32, i32* %15, align 4
  %193 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %194 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %252

197:                                              ; preds = %191
  %198 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %198, i64 %200
  %202 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @AR5K_MAX_RF_BANKS, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %208 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %856

211:                                              ; preds = %197
  %212 = load i32, i32* %17, align 4
  %213 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %213, i64 %215
  %217 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %212, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %211
  %221 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %221, i64 %223
  %225 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %229 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  br label %234

234:                                              ; preds = %220, %211
  %235 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %235, i64 %237
  %239 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  br label %191

252:                                              ; preds = %191
  %253 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %254 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %309

258:                                              ; preds = %252
  %259 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @AR5K_MODE_11B, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  store i64 %265, i64* %13, align 8
  br label %268

266:                                              ; preds = %258
  %267 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  store i64 %267, i64* %13, align 8
  br label %268

268:                                              ; preds = %266, %264
  %269 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %270 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 130
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %275 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 129
  br i1 %277, label %278, label %279

278:                                              ; preds = %273, %268
  store i32 0, i32* %16, align 4
  br label %280

279:                                              ; preds = %273
  store i32 1, i32* %16, align 4
  br label %280

280:                                              ; preds = %279, %278
  %281 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %282 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %283 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %284 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %283, i32 0, i32 0
  %285 = load i32**, i32*** %284, align 8
  %286 = load i64, i64* %13, align 8
  %287 = getelementptr inbounds i32*, i32** %285, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %16, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @AR5K_RF_OB_2GHZ, align 4
  %294 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %281, %struct.ath5k_rf_reg* %282, i32 %292, i32 %293, i32 1)
  %295 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %296 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %297 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %298 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %297, i32 0, i32 1
  %299 = load i32**, i32*** %298, align 8
  %300 = load i64, i64* %13, align 8
  %301 = getelementptr inbounds i32*, i32** %299, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %16, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @AR5K_RF_DB_2GHZ, align 4
  %308 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %295, %struct.ath5k_rf_reg* %296, i32 %306, i32 %307, i32 1)
  br label %387

309:                                              ; preds = %252
  %310 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %311 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %320, label %315

315:                                              ; preds = %309
  %316 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %317 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 130
  br i1 %319, label %320, label %386

320:                                              ; preds = %315, %309
  %321 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  store i64 %321, i64* %13, align 8
  %322 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %323 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp sge i32 %324, 5725
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  br label %350

327:                                              ; preds = %320
  %328 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %329 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp sge i32 %330, 5500
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  br label %348

333:                                              ; preds = %327
  %334 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %335 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = icmp sge i32 %336, 5260
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  br label %346

339:                                              ; preds = %333
  %340 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %341 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = icmp sgt i32 %342, 4000
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i32 0, i32 -1
  br label %346

346:                                              ; preds = %339, %338
  %347 = phi i32 [ 1, %338 ], [ %345, %339 ]
  br label %348

348:                                              ; preds = %346, %332
  %349 = phi i32 [ 2, %332 ], [ %347, %346 ]
  br label %350

350:                                              ; preds = %348, %326
  %351 = phi i32 [ 3, %326 ], [ %349, %348 ]
  store i32 %351, i32* %16, align 4
  %352 = load i32, i32* %16, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %350
  %355 = load i32, i32* @EINVAL, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %4, align 4
  br label %856

357:                                              ; preds = %350
  %358 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %359 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %360 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %361 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %360, i32 0, i32 0
  %362 = load i32**, i32*** %361, align 8
  %363 = load i64, i64* %13, align 8
  %364 = getelementptr inbounds i32*, i32** %362, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @AR5K_RF_OB_5GHZ, align 4
  %371 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %358, %struct.ath5k_rf_reg* %359, i32 %369, i32 %370, i32 1)
  %372 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %373 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %374 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %375 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %374, i32 0, i32 1
  %376 = load i32**, i32*** %375, align 8
  %377 = load i64, i64* %13, align 8
  %378 = getelementptr inbounds i32*, i32** %376, i64 %377
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %16, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @AR5K_RF_DB_5GHZ, align 4
  %385 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %372, %struct.ath5k_rf_reg* %373, i32 %383, i32 %384, i32 1)
  br label %386

386:                                              ; preds = %357, %315
  br label %387

387:                                              ; preds = %386, %280
  %388 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %10, align 8
  %389 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %388, i32 0, i32 0
  %390 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %389, align 8
  %391 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %392 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %390, i64 %394
  store %struct.ath5k_gain_opt_step* %395, %struct.ath5k_gain_opt_step** %11, align 8
  %396 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %397 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %411

401:                                              ; preds = %387
  %402 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %403 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 128
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %408 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %409 = load i32, i32* @AR5K_RF_TURBO, align 4
  %410 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %407, %struct.ath5k_rf_reg* %408, i32 1, i32 %409, i32 0)
  br label %411

411:                                              ; preds = %406, %401, %387
  %412 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %413 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, 130
  br i1 %415, label %416, label %542

416:                                              ; preds = %411
  %417 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %418 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @AR5K_MODE_11B, align 8
  %421 = icmp ne i64 %419, %420
  br i1 %421, label %422, label %463

422:                                              ; preds = %416
  %423 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %424 = load i32, i32* @AR5K_PHY_FRAME_CTL, align 4
  %425 = load i32, i32* @AR5K_PHY_FRAME_CTL_TX_CLIP, align 4
  %426 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %427 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %423, i32 %424, i32 %425, i32 %430)
  %432 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %433 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %434 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %435 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @AR5K_RF_PWD_90, align 4
  %440 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %432, %struct.ath5k_rf_reg* %433, i32 %438, i32 %439, i32 1)
  %441 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %442 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %443 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %444 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 2
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @AR5K_RF_PWD_84, align 4
  %449 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %441, %struct.ath5k_rf_reg* %442, i32 %447, i32 %448, i32 1)
  %450 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %451 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %452 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %453 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %452, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 3
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @AR5K_RF_RFGAIN_SEL, align 4
  %458 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %450, %struct.ath5k_rf_reg* %451, i32 %456, i32 %457, i32 1)
  %459 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %460 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %461 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %460, i32 0, i32 7
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 1
  store i8* %459, i8** %462, align 8
  br label %463

463:                                              ; preds = %422, %416
  %464 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %465 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %466 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %467 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %466, i32 0, i32 2
  %468 = load i32*, i32** %467, align 8
  %469 = load i64, i64* %13, align 8
  %470 = getelementptr inbounds i32, i32* %468, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = icmp ne i32 %471, 0
  %473 = xor i1 %472, true
  %474 = zext i1 %473 to i32
  %475 = load i32, i32* @AR5K_RF_PWD_XPD, align 4
  %476 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %464, %struct.ath5k_rf_reg* %465, i32 %474, i32 %475, i32 1)
  %477 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %478 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %479 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %480 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %479, i32 0, i32 3
  %481 = load i32*, i32** %480, align 8
  %482 = load i64, i64* %13, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @AR5K_RF_XPD_GAIN, align 4
  %486 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %477, %struct.ath5k_rf_reg* %478, i32 %484, i32 %485, i32 1)
  %487 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %488 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %489 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %490 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %489, i32 0, i32 4
  %491 = load i32*, i32** %490, align 8
  %492 = load i64, i64* %13, align 8
  %493 = getelementptr inbounds i32, i32* %491, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @AR5K_RF_GAIN_I, align 4
  %496 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %487, %struct.ath5k_rf_reg* %488, i32 %494, i32 %495, i32 1)
  %497 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %498 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %499 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %500 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = load i64, i64* %13, align 8
  %503 = getelementptr inbounds i32, i32* %501, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @AR5K_RF_PLO_SEL, align 4
  %506 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %497, %struct.ath5k_rf_reg* %498, i32 %504, i32 %505, i32 1)
  %507 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %508 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %518, label %512

512:                                              ; preds = %463
  %513 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %514 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %513, i32 0, i32 5
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %541

518:                                              ; preds = %512, %463
  %519 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %520 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %521 = load i32, i32* @AR5K_RF_WAIT_S, align 4
  %522 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %519, %struct.ath5k_rf_reg* %520, i32 31, i32 %521, i32 1)
  %523 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %524 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %523, i32 0, i32 5
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %527 = icmp eq i64 %525, %526
  %528 = zext i1 %527 to i64
  %529 = select i1 %527, i32 31, i32 16
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %18, align 8
  %531 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %532 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %533 = load i64, i64* %18, align 8
  %534 = trunc i64 %533 to i32
  %535 = load i32, i32* @AR5K_RF_WAIT_I, align 4
  %536 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %531, %struct.ath5k_rf_reg* %532, i32 %534, i32 %535, i32 1)
  %537 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %538 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %539 = load i32, i32* @AR5K_RF_MAX_TIME, align 4
  %540 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %537, %struct.ath5k_rf_reg* %538, i32 3, i32 %539, i32 1)
  br label %541

541:                                              ; preds = %518, %512
  br label %542

542:                                              ; preds = %541, %411
  %543 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %544 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp eq i32 %545, 129
  br i1 %546, label %547, label %795

547:                                              ; preds = %542
  %548 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %549 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %548, i32 0, i32 1
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @AR5K_MODE_11B, align 8
  %552 = icmp ne i64 %550, %551
  br i1 %552, label %553, label %621

553:                                              ; preds = %547
  %554 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %555 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %556 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %557 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %556, i32 0, i32 0
  %558 = load i32*, i32** %557, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 0
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* @AR5K_RF_MIXGAIN_OVR, align 4
  %562 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %554, %struct.ath5k_rf_reg* %555, i32 %560, i32 %561, i32 1)
  %563 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %564 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %565 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %566 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %565, i32 0, i32 0
  %567 = load i32*, i32** %566, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @AR5K_RF_PWD_138, align 4
  %571 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %563, %struct.ath5k_rf_reg* %564, i32 %569, i32 %570, i32 1)
  %572 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %573 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %574 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %575 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 2
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* @AR5K_RF_PWD_137, align 4
  %580 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %572, %struct.ath5k_rf_reg* %573, i32 %578, i32 %579, i32 1)
  %581 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %582 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %583 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %584 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %583, i32 0, i32 0
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 3
  %587 = load i32, i32* %586, align 4
  %588 = load i32, i32* @AR5K_RF_PWD_136, align 4
  %589 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %581, %struct.ath5k_rf_reg* %582, i32 %587, i32 %588, i32 1)
  %590 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %591 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %592 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %593 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %592, i32 0, i32 0
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 4
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @AR5K_RF_PWD_132, align 4
  %598 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %590, %struct.ath5k_rf_reg* %591, i32 %596, i32 %597, i32 1)
  %599 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %600 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %601 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %602 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 5
  %605 = load i32, i32* %604, align 4
  %606 = load i32, i32* @AR5K_RF_PWD_131, align 4
  %607 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %599, %struct.ath5k_rf_reg* %600, i32 %605, i32 %606, i32 1)
  %608 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %609 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %610 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %611 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %610, i32 0, i32 0
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 6
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* @AR5K_RF_PWD_130, align 4
  %616 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %608, %struct.ath5k_rf_reg* %609, i32 %614, i32 %615, i32 1)
  %617 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %618 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %619 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %619, i32 0, i32 1
  store i8* %617, i8** %620, align 8
  br label %621

621:                                              ; preds = %553, %547
  %622 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %623 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %624 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %625 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %624, i32 0, i32 2
  %626 = load i32*, i32** %625, align 8
  %627 = load i64, i64* %13, align 8
  %628 = getelementptr inbounds i32, i32* %626, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @AR5K_RF_XPD_SEL, align 4
  %631 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %622, %struct.ath5k_rf_reg* %623, i32 %629, i32 %630, i32 1)
  %632 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %633 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 8
  %635 = load i32, i32* @AR5K_SREV_RAD_5112A, align 4
  %636 = icmp slt i32 %634, %635
  br i1 %636, label %637, label %648

637:                                              ; preds = %621
  %638 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %639 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %640 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %641 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %640, i32 0, i32 3
  %642 = load i32*, i32** %641, align 8
  %643 = load i64, i64* %13, align 8
  %644 = getelementptr inbounds i32, i32* %642, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @AR5K_RF_XPD_GAIN, align 4
  %647 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %638, %struct.ath5k_rf_reg* %639, i32 %645, i32 %646, i32 1)
  br label %753

648:                                              ; preds = %621
  %649 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %650 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %649, i32 0, i32 5
  %651 = load i64**, i64*** %650, align 8
  %652 = load i64, i64* %13, align 8
  %653 = getelementptr inbounds i64*, i64** %651, i64 %652
  %654 = load i64*, i64** %653, align 8
  store i64* %654, i64** %19, align 8
  %655 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %656 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %655, i32 0, i32 6
  %657 = load i32*, i32** %656, align 8
  %658 = load i64, i64* %13, align 8
  %659 = getelementptr inbounds i32, i32* %657, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = icmp sgt i32 %660, 1
  br i1 %661, label %662, label %679

662:                                              ; preds = %648
  %663 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %664 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %665 = load i64*, i64** %19, align 8
  %666 = getelementptr inbounds i64, i64* %665, i64 0
  %667 = load i64, i64* %666, align 8
  %668 = trunc i64 %667 to i32
  %669 = load i32, i32* @AR5K_RF_PD_GAIN_LO, align 4
  %670 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %663, %struct.ath5k_rf_reg* %664, i32 %668, i32 %669, i32 1)
  %671 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %672 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %673 = load i64*, i64** %19, align 8
  %674 = getelementptr inbounds i64, i64* %673, i64 1
  %675 = load i64, i64* %674, align 8
  %676 = trunc i64 %675 to i32
  %677 = load i32, i32* @AR5K_RF_PD_GAIN_HI, align 4
  %678 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %671, %struct.ath5k_rf_reg* %672, i32 %676, i32 %677, i32 1)
  br label %696

679:                                              ; preds = %648
  %680 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %681 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %682 = load i64*, i64** %19, align 8
  %683 = getelementptr inbounds i64, i64* %682, i64 0
  %684 = load i64, i64* %683, align 8
  %685 = trunc i64 %684 to i32
  %686 = load i32, i32* @AR5K_RF_PD_GAIN_LO, align 4
  %687 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %680, %struct.ath5k_rf_reg* %681, i32 %685, i32 %686, i32 1)
  %688 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %689 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %690 = load i64*, i64** %19, align 8
  %691 = getelementptr inbounds i64, i64* %690, i64 0
  %692 = load i64, i64* %691, align 8
  %693 = trunc i64 %692 to i32
  %694 = load i32, i32* @AR5K_RF_PD_GAIN_HI, align 4
  %695 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %688, %struct.ath5k_rf_reg* %689, i32 %693, i32 %694, i32 1)
  br label %696

696:                                              ; preds = %679, %662
  %697 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %698 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = icmp eq i32 %699, 129
  br i1 %700, label %701, label %725

701:                                              ; preds = %696
  %702 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %703 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %702, i32 0, i32 2
  %704 = load i32, i32* %703, align 8
  %705 = load i32, i32* @AR5K_SREV_REV, align 4
  %706 = and i32 %704, %705
  %707 = icmp sgt i32 %706, 0
  br i1 %707, label %708, label %725

708:                                              ; preds = %701
  %709 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %710 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %711 = load i32, i32* @AR5K_RF_HIGH_VC_CP, align 4
  %712 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %709, %struct.ath5k_rf_reg* %710, i32 2, i32 %711, i32 1)
  %713 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %714 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %715 = load i32, i32* @AR5K_RF_MID_VC_CP, align 4
  %716 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %713, %struct.ath5k_rf_reg* %714, i32 2, i32 %715, i32 1)
  %717 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %718 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %719 = load i32, i32* @AR5K_RF_LOW_VC_CP, align 4
  %720 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %717, %struct.ath5k_rf_reg* %718, i32 2, i32 %719, i32 1)
  %721 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %722 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %723 = load i32, i32* @AR5K_RF_PUSH_UP, align 4
  %724 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %721, %struct.ath5k_rf_reg* %722, i32 2, i32 %723, i32 1)
  br label %725

725:                                              ; preds = %708, %701, %696
  %726 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %727 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %726, i32 0, i32 6
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @AR5K_SREV_PHY_5212A, align 8
  %730 = icmp sge i64 %728, %729
  br i1 %730, label %731, label %752

731:                                              ; preds = %725
  %732 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %733 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %734 = load i32, i32* @AR5K_RF_PAD2GND, align 4
  %735 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %732, %struct.ath5k_rf_reg* %733, i32 1, i32 %734, i32 1)
  %736 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %737 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %738 = load i32, i32* @AR5K_RF_XB2_LVL, align 4
  %739 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %736, %struct.ath5k_rf_reg* %737, i32 1, i32 %738, i32 1)
  %740 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %741 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %742 = load i32, i32* @AR5K_RF_XB5_LVL, align 4
  %743 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %740, %struct.ath5k_rf_reg* %741, i32 1, i32 %742, i32 1)
  %744 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %745 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %746 = load i32, i32* @AR5K_RF_PWD_167, align 4
  %747 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %744, %struct.ath5k_rf_reg* %745, i32 1, i32 %746, i32 1)
  %748 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %749 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %750 = load i32, i32* @AR5K_RF_PWD_166, align 4
  %751 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %748, %struct.ath5k_rf_reg* %749, i32 1, i32 %750, i32 1)
  br label %752

752:                                              ; preds = %731, %725
  br label %753

753:                                              ; preds = %752, %637
  %754 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %755 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %756 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %757 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %756, i32 0, i32 4
  %758 = load i32*, i32** %757, align 8
  %759 = load i64, i64* %13, align 8
  %760 = getelementptr inbounds i32, i32* %758, i64 %759
  %761 = load i32, i32* %760, align 4
  %762 = load i32, i32* @AR5K_RF_GAIN_I, align 4
  %763 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %754, %struct.ath5k_rf_reg* %755, i32 %761, i32 %762, i32 1)
  %764 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %765 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %764, i32 0, i32 5
  %766 = load i64, i64* %765, align 8
  %767 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %768 = icmp eq i64 %766, %767
  br i1 %768, label %775, label %769

769:                                              ; preds = %753
  %770 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %771 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %770, i32 0, i32 5
  %772 = load i64, i64* %771, align 8
  %773 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %774 = icmp eq i64 %772, %773
  br i1 %774, label %775, label %794

775:                                              ; preds = %769, %753
  %776 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %777 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %776, i32 0, i32 5
  %778 = load i64, i64* %777, align 8
  %779 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %780 = icmp eq i64 %778, %779
  %781 = zext i1 %780 to i64
  %782 = select i1 %780, i32 15, i32 8
  %783 = sext i32 %782 to i64
  store i64 %783, i64* %20, align 8
  %784 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %785 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %786 = load i64, i64* %20, align 8
  %787 = trunc i64 %786 to i32
  %788 = load i32, i32* @AR5K_RF_PD_PERIOD_A, align 4
  %789 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %784, %struct.ath5k_rf_reg* %785, i32 %787, i32 %788, i32 1)
  %790 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %791 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %792 = load i32, i32* @AR5K_RF_PD_DELAY_A, align 4
  %793 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %790, %struct.ath5k_rf_reg* %791, i32 15, i32 %792, i32 1)
  br label %794

794:                                              ; preds = %775, %769
  br label %795

795:                                              ; preds = %794, %542
  %796 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %797 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 8
  %799 = icmp eq i32 %798, 128
  br i1 %799, label %800, label %829

800:                                              ; preds = %795
  %801 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %802 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %801, i32 0, i32 0
  %803 = load i64, i64* %802, align 8
  %804 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %805 = icmp eq i64 %803, %804
  br i1 %805, label %806, label %829

806:                                              ; preds = %800
  %807 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %808 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %809 = load i32, i32* @AR5K_RF_DERBY_CHAN_SEL_MODE, align 4
  %810 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %807, %struct.ath5k_rf_reg* %808, i32 1, i32 %809, i32 1)
  %811 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %812 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %811, i32 0, i32 3
  %813 = load i64, i64* %812, align 8
  %814 = load i64, i64* @AR5K_SREV_AR5424, align 8
  %815 = icmp sge i64 %813, %814
  br i1 %815, label %816, label %828

816:                                              ; preds = %806
  %817 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %818 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %817, i32 0, i32 3
  %819 = load i64, i64* %818, align 8
  %820 = load i64, i64* @AR5K_SREV_AR5413, align 8
  %821 = icmp slt i64 %819, %820
  br i1 %821, label %822, label %828

822:                                              ; preds = %816
  %823 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %824 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %825 = call i32 @ath5k_hw_bitswap(i32 6, i32 3)
  %826 = load i32, i32* @AR5K_RF_PWD_ICLOBUF_2G, align 4
  %827 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %823, %struct.ath5k_rf_reg* %824, i32 %825, i32 %826, i32 1)
  br label %828

828:                                              ; preds = %822, %816, %806
  br label %829

829:                                              ; preds = %828, %800, %795
  store i32 0, i32* %15, align 4
  br label %830

830:                                              ; preds = %852, %829
  %831 = load i32, i32* %15, align 4
  %832 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %833 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %832, i32 0, i32 1
  %834 = load i32, i32* %833, align 4
  %835 = icmp slt i32 %831, %834
  br i1 %835, label %836, label %855

836:                                              ; preds = %830
  %837 = load i32, i32* %15, align 4
  %838 = call i32 @AR5K_REG_WAIT(i32 %837)
  %839 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %840 = load i32*, i32** %14, align 8
  %841 = load i32, i32* %15, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i32, i32* %840, i64 %842
  %844 = load i32, i32* %843, align 4
  %845 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %846 = load i32, i32* %15, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %845, i64 %847
  %849 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %848, i32 0, i32 1
  %850 = load i32, i32* %849, align 4
  %851 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %839, i32 %844, i32 %850)
  br label %852

852:                                              ; preds = %836
  %853 = load i32, i32* %15, align 4
  %854 = add nsw i32 %853, 1
  store i32 %854, i32* %15, align 4
  br label %830

855:                                              ; preds = %830
  store i32 0, i32* %4, align 4
  br label %856

856:                                              ; preds = %855, %354, %206, %181, %161
  %857 = load i32, i32* %4, align 4
  ret i32 %857
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_bitswap(i32, i32) #1

declare dso_local i32 @AR5K_REG_WAIT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
