; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.TYPE_3__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.modal_eep_header* }
%struct.modal_eep_header = type { i64, i64, i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@EEP_PWR_TABLE_OFFSET = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE1 = common dso_local global i32 0, align 4
@rate18mb = common dso_local global i64 0, align 8
@rate12mb = common dso_local global i64 0, align 8
@rate9mb = common dso_local global i64 0, align 8
@rate6mb = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE2 = common dso_local global i32 0, align 4
@rate54mb = common dso_local global i64 0, align 8
@rate48mb = common dso_local global i64 0, align 8
@rate36mb = common dso_local global i64 0, align 8
@rate24mb = common dso_local global i64 0, align 8
@OLC_FOR_AR9280_20_LATER = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE3 = common dso_local global i32 0, align 4
@rate2s = common dso_local global i64 0, align 8
@rate2l = common dso_local global i64 0, align 8
@rateXr = common dso_local global i64 0, align 8
@rate1l = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE4 = common dso_local global i32 0, align 4
@rate11s = common dso_local global i64 0, align 8
@rate11l = common dso_local global i64 0, align 8
@rate5_5s = common dso_local global i64 0, align 8
@rate5_5l = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE5 = common dso_local global i32 0, align 4
@rateHt20_3 = common dso_local global i64 0, align 8
@rateHt20_2 = common dso_local global i64 0, align 8
@rateHt20_1 = common dso_local global i64 0, align 8
@rateHt20_0 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE6 = common dso_local global i32 0, align 4
@rateHt20_7 = common dso_local global i64 0, align 8
@rateHt20_6 = common dso_local global i64 0, align 8
@rateHt20_5 = common dso_local global i64 0, align 8
@rateHt20_4 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE7 = common dso_local global i32 0, align 4
@rateHt40_3 = common dso_local global i64 0, align 8
@rateHt40_2 = common dso_local global i64 0, align 8
@rateHt40_1 = common dso_local global i64 0, align 8
@rateHt40_0 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE8 = common dso_local global i32 0, align 4
@rateHt40_7 = common dso_local global i64 0, align 8
@rateHt40_6 = common dso_local global i64 0, align 8
@rateHt40_5 = common dso_local global i64 0, align 8
@rateHt40_4 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE9 = common dso_local global i32 0, align 4
@rateExtOfdm = common dso_local global i64 0, align 8
@rateExtCck = common dso_local global i64 0, align 8
@rateDupOfdm = common dso_local global i64 0, align 8
@rateDupCck = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_SUB = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE_MAX = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE_MAX_TPC_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_def_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar5416_eeprom_def*, align 8
  %15 = alloca %struct.modal_eep_header*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %25 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %24)
  store %struct.ath_regulatory* %25, %struct.ath_regulatory** %13, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %28, %struct.ar5416_eeprom_def** %14, align 8
  %29 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %14, align 8
  %30 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %29, i32 0, i32 0
  %31 = load %struct.modal_eep_header*, %struct.modal_eep_header** %30, align 8
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %33 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %31, i64 %34
  store %struct.modal_eep_header* %35, %struct.modal_eep_header** %15, align 8
  %36 = load i32, i32* @Ar5416RateSize, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %16, align 8
  %39 = alloca i64, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  store i64 2, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %40 = mul nuw i64 8, %37
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i64* %39, i32 0, i32 %41)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %44 = call i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %43)
  %45 = load i64, i64* @AR5416_EEP_MINOR_VER_2, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %6
  %48 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %49 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %18, align 8
  br label %51

51:                                               ; preds = %47, %6
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %54 = getelementptr inbounds i64, i64* %39, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @ath9k_hw_set_def_power_per_rate_table(%struct.ath_hw* %52, %struct.ath9k_channel* %53, i64* %54, i32 %55, i64 %56, i64 %57)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %60 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %61 = call i32 @ath9k_hw_set_def_power_cal_table(%struct.ath_hw* %59, %struct.ath9k_channel* %60)
  %62 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %63 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %97, %51
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @ARRAY_SIZE(i64* %39)
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %64
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %39, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MAX_RATE_POWER, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i64, i64* @MAX_RATE_POWER, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %39, i64 %78
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %39, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %86 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %39, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %95 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %80
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %64

100:                                              ; preds = %64
  %101 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %102 = call i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw* %101)
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %21, align 4
  br label %510

106:                                              ; preds = %100
  %107 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %108 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %132, %110
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* @Ar5416RateSize, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %117 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %119, align 8
  %121 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %122 = load i32, i32* @EEP_PWR_TABLE_OFFSET, align 4
  %123 = call i32 %120(%struct.ath_hw* %121, i32 %122)
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = mul nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %39, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, %126
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %111

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %138 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %137)
  %139 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %140 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %141 = load i64, i64* @rate18mb, align 8
  %142 = getelementptr inbounds i64, i64* %39, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @ATH9K_POW_SM(i64 %143, i32 24)
  %145 = load i64, i64* @rate12mb, align 8
  %146 = getelementptr inbounds i64, i64* %39, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @ATH9K_POW_SM(i64 %147, i32 16)
  %149 = or i64 %144, %148
  %150 = load i64, i64* @rate9mb, align 8
  %151 = getelementptr inbounds i64, i64* %39, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @ATH9K_POW_SM(i64 %152, i32 8)
  %154 = or i64 %149, %153
  %155 = load i64, i64* @rate6mb, align 8
  %156 = getelementptr inbounds i64, i64* %39, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ATH9K_POW_SM(i64 %157, i32 0)
  %159 = or i64 %154, %158
  %160 = call i32 @REG_WRITE(%struct.ath_hw* %139, i32 %140, i64 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %162 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %163 = load i64, i64* @rate54mb, align 8
  %164 = getelementptr inbounds i64, i64* %39, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @ATH9K_POW_SM(i64 %165, i32 24)
  %167 = load i64, i64* @rate48mb, align 8
  %168 = getelementptr inbounds i64, i64* %39, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ATH9K_POW_SM(i64 %169, i32 16)
  %171 = or i64 %166, %170
  %172 = load i64, i64* @rate36mb, align 8
  %173 = getelementptr inbounds i64, i64* %39, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @ATH9K_POW_SM(i64 %174, i32 8)
  %176 = or i64 %171, %175
  %177 = load i64, i64* @rate24mb, align 8
  %178 = getelementptr inbounds i64, i64* %39, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @ATH9K_POW_SM(i64 %179, i32 0)
  %181 = or i64 %176, %180
  %182 = call i32 @REG_WRITE(%struct.ath_hw* %161, i32 %162, i64 %181)
  %183 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %184 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %301

186:                                              ; preds = %136
  %187 = load i64, i64* @OLC_FOR_AR9280_20_LATER, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %255

189:                                              ; preds = %186
  store i32 2, i32* %20, align 4
  %190 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %191 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %192 = load i64, i64* @rate2s, align 8
  %193 = getelementptr inbounds i64, i64* %39, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = call i64 @ATH9K_POW_SM(i64 %197, i32 24)
  %199 = load i64, i64* @rate2l, align 8
  %200 = getelementptr inbounds i64, i64* %39, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %201, %203
  %205 = call i64 @ATH9K_POW_SM(i64 %204, i32 16)
  %206 = or i64 %198, %205
  %207 = load i64, i64* @rateXr, align 8
  %208 = getelementptr inbounds i64, i64* %39, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @ATH9K_POW_SM(i64 %209, i32 8)
  %211 = or i64 %206, %210
  %212 = load i64, i64* @rate1l, align 8
  %213 = getelementptr inbounds i64, i64* %39, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = sub nsw i64 %214, %216
  %218 = call i64 @ATH9K_POW_SM(i64 %217, i32 0)
  %219 = or i64 %211, %218
  %220 = call i32 @REG_WRITE(%struct.ath_hw* %190, i32 %191, i64 %219)
  %221 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %222 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %223 = load i64, i64* @rate11s, align 8
  %224 = getelementptr inbounds i64, i64* %39, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %225, %227
  %229 = call i64 @ATH9K_POW_SM(i64 %228, i32 24)
  %230 = load i64, i64* @rate11l, align 8
  %231 = getelementptr inbounds i64, i64* %39, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %20, align 4
  %234 = sext i32 %233 to i64
  %235 = sub nsw i64 %232, %234
  %236 = call i64 @ATH9K_POW_SM(i64 %235, i32 16)
  %237 = or i64 %229, %236
  %238 = load i64, i64* @rate5_5s, align 8
  %239 = getelementptr inbounds i64, i64* %39, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = sub nsw i64 %240, %242
  %244 = call i64 @ATH9K_POW_SM(i64 %243, i32 8)
  %245 = or i64 %237, %244
  %246 = load i64, i64* @rate5_5l, align 8
  %247 = getelementptr inbounds i64, i64* %39, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = sub nsw i64 %248, %250
  %252 = call i64 @ATH9K_POW_SM(i64 %251, i32 0)
  %253 = or i64 %245, %252
  %254 = call i32 @REG_WRITE(%struct.ath_hw* %221, i32 %222, i64 %253)
  br label %300

255:                                              ; preds = %186
  %256 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %257 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %258 = load i64, i64* @rate2s, align 8
  %259 = getelementptr inbounds i64, i64* %39, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @ATH9K_POW_SM(i64 %260, i32 24)
  %262 = load i64, i64* @rate2l, align 8
  %263 = getelementptr inbounds i64, i64* %39, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @ATH9K_POW_SM(i64 %264, i32 16)
  %266 = or i64 %261, %265
  %267 = load i64, i64* @rateXr, align 8
  %268 = getelementptr inbounds i64, i64* %39, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @ATH9K_POW_SM(i64 %269, i32 8)
  %271 = or i64 %266, %270
  %272 = load i64, i64* @rate1l, align 8
  %273 = getelementptr inbounds i64, i64* %39, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i64 @ATH9K_POW_SM(i64 %274, i32 0)
  %276 = or i64 %271, %275
  %277 = call i32 @REG_WRITE(%struct.ath_hw* %256, i32 %257, i64 %276)
  %278 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %279 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %280 = load i64, i64* @rate11s, align 8
  %281 = getelementptr inbounds i64, i64* %39, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @ATH9K_POW_SM(i64 %282, i32 24)
  %284 = load i64, i64* @rate11l, align 8
  %285 = getelementptr inbounds i64, i64* %39, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = call i64 @ATH9K_POW_SM(i64 %286, i32 16)
  %288 = or i64 %283, %287
  %289 = load i64, i64* @rate5_5s, align 8
  %290 = getelementptr inbounds i64, i64* %39, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @ATH9K_POW_SM(i64 %291, i32 8)
  %293 = or i64 %288, %292
  %294 = load i64, i64* @rate5_5l, align 8
  %295 = getelementptr inbounds i64, i64* %39, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @ATH9K_POW_SM(i64 %296, i32 0)
  %298 = or i64 %293, %297
  %299 = call i32 @REG_WRITE(%struct.ath_hw* %278, i32 %279, i64 %298)
  br label %300

300:                                              ; preds = %255, %189
  br label %301

301:                                              ; preds = %300, %136
  %302 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %303 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %304 = load i64, i64* @rateHt20_3, align 8
  %305 = getelementptr inbounds i64, i64* %39, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = call i64 @ATH9K_POW_SM(i64 %306, i32 24)
  %308 = load i64, i64* @rateHt20_2, align 8
  %309 = getelementptr inbounds i64, i64* %39, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = call i64 @ATH9K_POW_SM(i64 %310, i32 16)
  %312 = or i64 %307, %311
  %313 = load i64, i64* @rateHt20_1, align 8
  %314 = getelementptr inbounds i64, i64* %39, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = call i64 @ATH9K_POW_SM(i64 %315, i32 8)
  %317 = or i64 %312, %316
  %318 = load i64, i64* @rateHt20_0, align 8
  %319 = getelementptr inbounds i64, i64* %39, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @ATH9K_POW_SM(i64 %320, i32 0)
  %322 = or i64 %317, %321
  %323 = call i32 @REG_WRITE(%struct.ath_hw* %302, i32 %303, i64 %322)
  %324 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %325 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %326 = load i64, i64* @rateHt20_7, align 8
  %327 = getelementptr inbounds i64, i64* %39, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = call i64 @ATH9K_POW_SM(i64 %328, i32 24)
  %330 = load i64, i64* @rateHt20_6, align 8
  %331 = getelementptr inbounds i64, i64* %39, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @ATH9K_POW_SM(i64 %332, i32 16)
  %334 = or i64 %329, %333
  %335 = load i64, i64* @rateHt20_5, align 8
  %336 = getelementptr inbounds i64, i64* %39, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i64 @ATH9K_POW_SM(i64 %337, i32 8)
  %339 = or i64 %334, %338
  %340 = load i64, i64* @rateHt20_4, align 8
  %341 = getelementptr inbounds i64, i64* %39, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = call i64 @ATH9K_POW_SM(i64 %342, i32 0)
  %344 = or i64 %339, %343
  %345 = call i32 @REG_WRITE(%struct.ath_hw* %324, i32 %325, i64 %344)
  %346 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %347 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %465

349:                                              ; preds = %301
  %350 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %351 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %352 = load i64, i64* @rateHt40_3, align 8
  %353 = getelementptr inbounds i64, i64* %39, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* %18, align 8
  %356 = add nsw i64 %354, %355
  %357 = call i64 @ATH9K_POW_SM(i64 %356, i32 24)
  %358 = load i64, i64* @rateHt40_2, align 8
  %359 = getelementptr inbounds i64, i64* %39, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %18, align 8
  %362 = add nsw i64 %360, %361
  %363 = call i64 @ATH9K_POW_SM(i64 %362, i32 16)
  %364 = or i64 %357, %363
  %365 = load i64, i64* @rateHt40_1, align 8
  %366 = getelementptr inbounds i64, i64* %39, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %18, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i64 @ATH9K_POW_SM(i64 %369, i32 8)
  %371 = or i64 %364, %370
  %372 = load i64, i64* @rateHt40_0, align 8
  %373 = getelementptr inbounds i64, i64* %39, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* %18, align 8
  %376 = add nsw i64 %374, %375
  %377 = call i64 @ATH9K_POW_SM(i64 %376, i32 0)
  %378 = or i64 %371, %377
  %379 = call i32 @REG_WRITE(%struct.ath_hw* %350, i32 %351, i64 %378)
  %380 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %381 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %382 = load i64, i64* @rateHt40_7, align 8
  %383 = getelementptr inbounds i64, i64* %39, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* %18, align 8
  %386 = add nsw i64 %384, %385
  %387 = call i64 @ATH9K_POW_SM(i64 %386, i32 24)
  %388 = load i64, i64* @rateHt40_6, align 8
  %389 = getelementptr inbounds i64, i64* %39, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %18, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i64 @ATH9K_POW_SM(i64 %392, i32 16)
  %394 = or i64 %387, %393
  %395 = load i64, i64* @rateHt40_5, align 8
  %396 = getelementptr inbounds i64, i64* %39, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* %18, align 8
  %399 = add nsw i64 %397, %398
  %400 = call i64 @ATH9K_POW_SM(i64 %399, i32 8)
  %401 = or i64 %394, %400
  %402 = load i64, i64* @rateHt40_4, align 8
  %403 = getelementptr inbounds i64, i64* %39, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* %18, align 8
  %406 = add nsw i64 %404, %405
  %407 = call i64 @ATH9K_POW_SM(i64 %406, i32 0)
  %408 = or i64 %401, %407
  %409 = call i32 @REG_WRITE(%struct.ath_hw* %380, i32 %381, i64 %408)
  %410 = load i64, i64* @OLC_FOR_AR9280_20_LATER, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %441

412:                                              ; preds = %349
  %413 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %414 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %415 = load i64, i64* @rateExtOfdm, align 8
  %416 = getelementptr inbounds i64, i64* %39, i64 %415
  %417 = load i64, i64* %416, align 8
  %418 = call i64 @ATH9K_POW_SM(i64 %417, i32 24)
  %419 = load i64, i64* @rateExtCck, align 8
  %420 = getelementptr inbounds i64, i64* %39, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load i32, i32* %20, align 4
  %423 = sext i32 %422 to i64
  %424 = sub nsw i64 %421, %423
  %425 = call i64 @ATH9K_POW_SM(i64 %424, i32 16)
  %426 = or i64 %418, %425
  %427 = load i64, i64* @rateDupOfdm, align 8
  %428 = getelementptr inbounds i64, i64* %39, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = call i64 @ATH9K_POW_SM(i64 %429, i32 8)
  %431 = or i64 %426, %430
  %432 = load i64, i64* @rateDupCck, align 8
  %433 = getelementptr inbounds i64, i64* %39, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = load i32, i32* %20, align 4
  %436 = sext i32 %435 to i64
  %437 = sub nsw i64 %434, %436
  %438 = call i64 @ATH9K_POW_SM(i64 %437, i32 0)
  %439 = or i64 %431, %438
  %440 = call i32 @REG_WRITE(%struct.ath_hw* %413, i32 %414, i64 %439)
  br label %464

441:                                              ; preds = %349
  %442 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %443 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %444 = load i64, i64* @rateExtOfdm, align 8
  %445 = getelementptr inbounds i64, i64* %39, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = call i64 @ATH9K_POW_SM(i64 %446, i32 24)
  %448 = load i64, i64* @rateExtCck, align 8
  %449 = getelementptr inbounds i64, i64* %39, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = call i64 @ATH9K_POW_SM(i64 %450, i32 16)
  %452 = or i64 %447, %451
  %453 = load i64, i64* @rateDupOfdm, align 8
  %454 = getelementptr inbounds i64, i64* %39, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = call i64 @ATH9K_POW_SM(i64 %455, i32 8)
  %457 = or i64 %452, %456
  %458 = load i64, i64* @rateDupCck, align 8
  %459 = getelementptr inbounds i64, i64* %39, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = call i64 @ATH9K_POW_SM(i64 %460, i32 0)
  %462 = or i64 %457, %461
  %463 = call i32 @REG_WRITE(%struct.ath_hw* %442, i32 %443, i64 %462)
  br label %464

464:                                              ; preds = %441, %412
  br label %465

465:                                              ; preds = %464, %301
  %466 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %467 = load i32, i32* @AR_PHY_POWER_TX_SUB, align 4
  %468 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %469 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = call i64 @ATH9K_POW_SM(i64 %470, i32 6)
  %472 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %473 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %472, i32 0, i32 2
  %474 = load i64, i64* %473, align 8
  %475 = call i64 @ATH9K_POW_SM(i64 %474, i32 0)
  %476 = or i64 %471, %475
  %477 = call i32 @REG_WRITE(%struct.ath_hw* %466, i32 %467, i64 %476)
  %478 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %479 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %502

482:                                              ; preds = %465
  %483 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %484 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %482
  %487 = load i64, i64* %18, align 8
  br label %489

488:                                              ; preds = %482
  br label %489

489:                                              ; preds = %488, %486
  %490 = phi i64 [ %487, %486 ], [ 0, %488 ]
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %23, align 4
  %492 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %493 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %494 = load i32, i32* %23, align 4
  %495 = call i32 @ar5008_hw_init_rate_txpower(%struct.ath_hw* %492, i64* %39, %struct.ath9k_channel* %493, i32 %494)
  %496 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %497 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %498 = load i64, i64* @MAX_RATE_POWER, align 8
  %499 = load i64, i64* @AR_PHY_POWER_TX_RATE_MAX_TPC_ENABLE, align 8
  %500 = or i64 %498, %499
  %501 = call i32 @REG_WRITE(%struct.ath_hw* %496, i32 %497, i64 %500)
  br label %507

502:                                              ; preds = %465
  %503 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %504 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %505 = load i64, i64* @MAX_RATE_POWER, align 8
  %506 = call i32 @REG_WRITE(%struct.ath_hw* %503, i32 %504, i64 %505)
  br label %507

507:                                              ; preds = %502, %489
  %508 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %509 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %508)
  store i32 0, i32* %21, align 4
  br label %510

510:                                              ; preds = %507, %105
  %511 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %511)
  %512 = load i32, i32* %21, align 4
  switch i32 %512, label %514 [
    i32 0, label %513
    i32 1, label %513
  ]

513:                                              ; preds = %510, %510
  ret void

514:                                              ; preds = %510
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_def_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_def_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i64 @ATH9K_POW_SM(i64, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_init_rate_txpower(%struct.ath_hw*, i64*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
