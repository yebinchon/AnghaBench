; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_phy_from_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_phy_from_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ar9170_eeprom_modal* }
%struct.ar9170_eeprom_modal = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32 }

@carl9170_init_phy_from_eeprom.xpd2pd = internal constant [16 x i32] [i32 2, i32 2, i32 2, i32 1, i32 2, i32 2, i32 6, i32 2, i32 2, i32 3, i32 7, i32 2, i32 11, i32 2, i32 2, i32 2], align 16
@AR9170_PHY_REG_SWITCH_COM = common dso_local global i32 0, align 4
@AR9170_PHY_REG_SWITCH_CHAIN_0 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_SWITCH_CHAIN_2 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_SETTLING = common dso_local global i32 0, align 4
@AR9170_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR9170_PHY_REG_DESIRED_SZ = common dso_local global i32 0, align 4
@AR9170_PHY_DESIRED_SZ_PGA = common dso_local global i32 0, align 4
@AR9170_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR9170_PHY_REG_RF_CTL4 = common dso_local global i32 0, align 4
@AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR9170_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR9170_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR9170_PHY_REG_RF_CTL3 = common dso_local global i32 0, align 4
@AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR9170_PHY_REG_RXGAIN = common dso_local global i32 0, align 4
@AR9170_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9170_PHY_REG_RXGAIN_CHAIN_2 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_GAIN_2GHZ = common dso_local global i32 0, align 4
@AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN = common dso_local global i32 0, align 4
@AR9170_PHY_GAIN_2GHZ_BSW_MARGIN = common dso_local global i32 0, align 4
@AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2 = common dso_local global i32 0, align 4
@AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR9170_PHY_REG_TPCRG1 = common dso_local global i32 0, align 4
@AR9170_PHY_TPCRG1_PD_GAIN_1 = common dso_local global i32 0, align 4
@AR9170_PHY_TPCRG1_PD_GAIN_2 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_RX_CHAINMASK = common dso_local global i32 0, align 4
@AR9170_PHY_REG_CAL_CHAINMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32, i32)* @carl9170_init_phy_from_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_phy_from_eeprom(%struct.ar9170* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar9170_eeprom_modal*, align 8
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %12, i64 %14
  store %struct.ar9170_eeprom_modal* %15, %struct.ar9170_eeprom_modal** %7, align 8
  %16 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %17 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %16)
  %18 = load i32, i32* @AR9170_PHY_REG_SWITCH_COM, align 4
  %19 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %20 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = call i32 @carl9170_regwrite(i32 %18, i32 %22)
  %24 = load i32, i32* @AR9170_PHY_REG_SWITCH_CHAIN_0, align 4
  %25 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %26 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %25, i32 0, i32 13
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = call i32 @carl9170_regwrite(i32 %24, i32 %30)
  %32 = load i32, i32* @AR9170_PHY_REG_SWITCH_CHAIN_2, align 4
  %33 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %34 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %33, i32 0, i32 13
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = call i32 @carl9170_regwrite(i32 %32, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @AR9170_PHY_REG_SETTLING, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @carl9170_def_val(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @AR9170_PHY_SETTLING_SWITCH, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %50 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SET_VAL(i32 %47, i32 %48, i32 %51)
  %53 = load i32, i32* @AR9170_PHY_REG_SETTLING, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @carl9170_regwrite(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %3
  %57 = load i32, i32* @AR9170_PHY_REG_DESIRED_SZ, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @carl9170_def_val(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @AR9170_PHY_DESIRED_SZ_PGA, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %64 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SET_VAL(i32 %61, i32 %62, i32 %65)
  %67 = load i32, i32* @AR9170_PHY_DESIRED_SZ_ADC, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %70 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SET_VAL(i32 %67, i32 %68, i32 %71)
  %73 = load i32, i32* @AR9170_PHY_REG_DESIRED_SZ, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @carl9170_regwrite(i32 %73, i32 %74)
  %76 = load i32, i32* @AR9170_PHY_REG_RF_CTL4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @carl9170_def_val(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %83 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SET_VAL(i32 %80, i32 %81, i32 %84)
  %86 = load i32, i32* @AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %89 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SET_VAL(i32 %86, i32 %87, i32 %90)
  %92 = load i32, i32* @AR9170_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %95 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @SET_VAL(i32 %92, i32 %93, i32 %96)
  %98 = load i32, i32* @AR9170_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %101 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @SET_VAL(i32 %98, i32 %99, i32 %102)
  %104 = load i32, i32* @AR9170_PHY_REG_RF_CTL4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @carl9170_regwrite(i32 %104, i32 %105)
  %107 = load i32, i32* @AR9170_PHY_REG_RF_CTL3, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @carl9170_def_val(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %114 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SET_VAL(i32 %111, i32 %112, i32 %115)
  %117 = load i32, i32* @AR9170_PHY_REG_RF_CTL3, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @carl9170_regwrite(i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @carl9170_def_val(i32 1869924, i32 %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, -520193
  %125 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %126 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 12
  %129 = or i32 %124, %128
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @carl9170_regwrite(i32 1869924, i32 %130)
  %132 = load i32, i32* @AR9170_PHY_REG_RXGAIN, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @carl9170_def_val(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @AR9170_PHY_RXGAIN_TXRX_ATTEN, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %139 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @SET_VAL(i32 %136, i32 %137, i32 %142)
  %144 = load i32, i32* @AR9170_PHY_REG_RXGAIN, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @carl9170_regwrite(i32 %144, i32 %145)
  %147 = load i32, i32* @AR9170_PHY_REG_RXGAIN_CHAIN_2, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @carl9170_def_val(i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @AR9170_PHY_RXGAIN_TXRX_ATTEN, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %154 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @SET_VAL(i32 %151, i32 %152, i32 %157)
  %159 = load i32, i32* @AR9170_PHY_REG_RXGAIN_CHAIN_2, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @carl9170_regwrite(i32 %159, i32 %160)
  %162 = load i32, i32* @AR9170_PHY_REG_GAIN_2GHZ, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @carl9170_def_val(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* @AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %169 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @SET_VAL(i32 %166, i32 %167, i32 %172)
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %56
  %177 = load i32, i32* @AR9170_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %180 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %179, i32 0, i32 9
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @SET_VAL(i32 %177, i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %176, %56
  %186 = load i32, i32* @AR9170_PHY_REG_GAIN_2GHZ, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @carl9170_regwrite(i32 %186, i32 %187)
  %189 = load i32, i32* @AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @carl9170_def_val(i32 %189, i32 %190, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* @AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %196 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %195, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @SET_VAL(i32 %193, i32 %194, i32 %199)
  %201 = load i32, i32* @AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @carl9170_regwrite(i32 %201, i32 %202)
  %204 = call i32 @AR9170_PHY_REG_TIMING_CTRL4(i32 0)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @carl9170_def_val(i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %211 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %210, i32 0, i32 10
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @SET_VAL(i32 %208, i32 %209, i32 %214)
  %216 = load i32, i32* @AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %219 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %218, i32 0, i32 11
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @SET_VAL(i32 %216, i32 %217, i32 %222)
  %224 = call i32 @AR9170_PHY_REG_TIMING_CTRL4(i32 0)
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @carl9170_regwrite(i32 %224, i32 %225)
  %227 = call i32 @AR9170_PHY_REG_TIMING_CTRL4(i32 2)
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @carl9170_def_val(i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* @AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %234 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %233, i32 0, i32 10
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @SET_VAL(i32 %231, i32 %232, i32 %237)
  %239 = load i32, i32* @AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %242 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %241, i32 0, i32 11
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @SET_VAL(i32 %239, i32 %240, i32 %245)
  %247 = call i32 @AR9170_PHY_REG_TIMING_CTRL4(i32 2)
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @carl9170_regwrite(i32 %247, i32 %248)
  %250 = load i32, i32* @AR9170_PHY_REG_TPCRG1, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @carl9170_def_val(i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* @AR9170_PHY_TPCRG1_PD_GAIN_1, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %257 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 15
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* @carl9170_init_phy_from_eeprom.xpd2pd, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 3
  %264 = call i32 @SET_VAL(i32 %254, i32 %255, i32 %263)
  %265 = load i32, i32* @AR9170_PHY_TPCRG1_PD_GAIN_2, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.ar9170_eeprom_modal*, %struct.ar9170_eeprom_modal** %7, align 8
  %268 = getelementptr inbounds %struct.ar9170_eeprom_modal, %struct.ar9170_eeprom_modal* %267, i32 0, i32 12
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, 15
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* @carl9170_init_phy_from_eeprom.xpd2pd, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 2
  %275 = call i32 @SET_VAL(i32 %265, i32 %266, i32 %274)
  %276 = load i32, i32* @AR9170_PHY_REG_TPCRG1, align 4
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @carl9170_regwrite(i32 %276, i32 %277)
  %279 = load i32, i32* @AR9170_PHY_REG_RX_CHAINMASK, align 4
  %280 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %281 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @carl9170_regwrite(i32 %279, i32 %283)
  %285 = load i32, i32* @AR9170_PHY_REG_CAL_CHAINMASK, align 4
  %286 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %287 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @carl9170_regwrite(i32 %285, i32 %289)
  %291 = call i32 (...) @carl9170_regwrite_finish()
  %292 = call i32 (...) @carl9170_regwrite_result()
  ret i32 %292
}

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @carl9170_def_val(i32, i32, i32) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

declare dso_local i32 @AR9170_PHY_REG_TIMING_CTRL4(i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
