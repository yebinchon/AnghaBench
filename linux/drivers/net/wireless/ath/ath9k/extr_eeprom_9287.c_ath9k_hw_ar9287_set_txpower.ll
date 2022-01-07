; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.modal_eep_ar9287_header }
%struct.modal_eep_ar9287_header = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR9287_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR9287_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
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
@EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
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
@AR_PHY_POWER_TX_RATE_MAX = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE_MAX_TPC_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_ar9287_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ar9287_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar9287_eeprom*, align 8
  %15 = alloca %struct.modal_eep_ar9287_header*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %23 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %22)
  store %struct.ath_regulatory* %23, %struct.ath_regulatory** %13, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ar9287_eeprom* %26, %struct.ar9287_eeprom** %14, align 8
  %27 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %14, align 8
  %28 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %27, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %28, %struct.modal_eep_ar9287_header** %15, align 8
  %29 = load i32, i32* @Ar5416RateSize, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  store i64 2, i64* %18, align 8
  %33 = mul nuw i64 8, %30
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i64* %32, i32 0, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %37 = call i64 @ath9k_hw_ar9287_get_eeprom_rev(%struct.ath_hw* %36)
  %38 = load i64, i64* @AR9287_EEP_MINOR_VER_2, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %15, align 8
  %42 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %18, align 8
  br label %44

44:                                               ; preds = %40, %6
  %45 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %46 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %47 = getelementptr inbounds i64, i64* %32, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @ath9k_hw_set_ar9287_power_per_rate_table(%struct.ath_hw* %45, %struct.ath9k_channel* %46, i64* %47, i32 %48, i64 %49, i64 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %54 = call i32 @ath9k_hw_set_ar9287_power_cal_table(%struct.ath_hw* %52, %struct.ath9k_channel* %53)
  %55 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %56 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %90, %44
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @ARRAY_SIZE(i64* %32)
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %32, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MAX_RATE_POWER, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i64, i64* @MAX_RATE_POWER, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %32, i64 %71
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %32, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %79 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %32, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %88 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %82, %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %95 = call i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw* %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %20, align 4
  br label %426

99:                                               ; preds = %93
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @Ar5416RateSize, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* @AR9287_PWR_TABLE_OFFSET_DB, align 4
  %106 = mul nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %32, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, %107
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %118 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %117)
  %119 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %120 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %121 = load i64, i64* @rate18mb, align 8
  %122 = getelementptr inbounds i64, i64* %32, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @ATH9K_POW_SM(i64 %123, i32 24)
  %125 = load i64, i64* @rate12mb, align 8
  %126 = getelementptr inbounds i64, i64* %32, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ATH9K_POW_SM(i64 %127, i32 16)
  %129 = or i64 %124, %128
  %130 = load i64, i64* @rate9mb, align 8
  %131 = getelementptr inbounds i64, i64* %32, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @ATH9K_POW_SM(i64 %132, i32 8)
  %134 = or i64 %129, %133
  %135 = load i64, i64* @rate6mb, align 8
  %136 = getelementptr inbounds i64, i64* %32, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @ATH9K_POW_SM(i64 %137, i32 0)
  %139 = or i64 %134, %138
  %140 = call i32 @REG_WRITE(%struct.ath_hw* %119, i32 %120, i64 %139)
  %141 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %142 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %143 = load i64, i64* @rate54mb, align 8
  %144 = getelementptr inbounds i64, i64* %32, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @ATH9K_POW_SM(i64 %145, i32 24)
  %147 = load i64, i64* @rate48mb, align 8
  %148 = getelementptr inbounds i64, i64* %32, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @ATH9K_POW_SM(i64 %149, i32 16)
  %151 = or i64 %146, %150
  %152 = load i64, i64* @rate36mb, align 8
  %153 = getelementptr inbounds i64, i64* %32, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @ATH9K_POW_SM(i64 %154, i32 8)
  %156 = or i64 %151, %155
  %157 = load i64, i64* @rate24mb, align 8
  %158 = getelementptr inbounds i64, i64* %32, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @ATH9K_POW_SM(i64 %159, i32 0)
  %161 = or i64 %156, %160
  %162 = call i32 @REG_WRITE(%struct.ath_hw* %141, i32 %142, i64 %161)
  %163 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %164 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %211

166:                                              ; preds = %116
  %167 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %168 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %169 = load i64, i64* @rate2s, align 8
  %170 = getelementptr inbounds i64, i64* %32, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @ATH9K_POW_SM(i64 %171, i32 24)
  %173 = load i64, i64* @rate2l, align 8
  %174 = getelementptr inbounds i64, i64* %32, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @ATH9K_POW_SM(i64 %175, i32 16)
  %177 = or i64 %172, %176
  %178 = load i64, i64* @rateXr, align 8
  %179 = getelementptr inbounds i64, i64* %32, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @ATH9K_POW_SM(i64 %180, i32 8)
  %182 = or i64 %177, %181
  %183 = load i64, i64* @rate1l, align 8
  %184 = getelementptr inbounds i64, i64* %32, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @ATH9K_POW_SM(i64 %185, i32 0)
  %187 = or i64 %182, %186
  %188 = call i32 @REG_WRITE(%struct.ath_hw* %167, i32 %168, i64 %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %190 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %191 = load i64, i64* @rate11s, align 8
  %192 = getelementptr inbounds i64, i64* %32, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @ATH9K_POW_SM(i64 %193, i32 24)
  %195 = load i64, i64* @rate11l, align 8
  %196 = getelementptr inbounds i64, i64* %32, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @ATH9K_POW_SM(i64 %197, i32 16)
  %199 = or i64 %194, %198
  %200 = load i64, i64* @rate5_5s, align 8
  %201 = getelementptr inbounds i64, i64* %32, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @ATH9K_POW_SM(i64 %202, i32 8)
  %204 = or i64 %199, %203
  %205 = load i64, i64* @rate5_5l, align 8
  %206 = getelementptr inbounds i64, i64* %32, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @ATH9K_POW_SM(i64 %207, i32 0)
  %209 = or i64 %204, %208
  %210 = call i32 @REG_WRITE(%struct.ath_hw* %189, i32 %190, i64 %209)
  br label %211

211:                                              ; preds = %166, %116
  %212 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %213 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %214 = load i64, i64* @rateHt20_3, align 8
  %215 = getelementptr inbounds i64, i64* %32, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @ATH9K_POW_SM(i64 %216, i32 24)
  %218 = load i64, i64* @rateHt20_2, align 8
  %219 = getelementptr inbounds i64, i64* %32, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @ATH9K_POW_SM(i64 %220, i32 16)
  %222 = or i64 %217, %221
  %223 = load i64, i64* @rateHt20_1, align 8
  %224 = getelementptr inbounds i64, i64* %32, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @ATH9K_POW_SM(i64 %225, i32 8)
  %227 = or i64 %222, %226
  %228 = load i64, i64* @rateHt20_0, align 8
  %229 = getelementptr inbounds i64, i64* %32, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @ATH9K_POW_SM(i64 %230, i32 0)
  %232 = or i64 %227, %231
  %233 = call i32 @REG_WRITE(%struct.ath_hw* %212, i32 %213, i64 %232)
  %234 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %235 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %236 = load i64, i64* @rateHt20_7, align 8
  %237 = getelementptr inbounds i64, i64* %32, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @ATH9K_POW_SM(i64 %238, i32 24)
  %240 = load i64, i64* @rateHt20_6, align 8
  %241 = getelementptr inbounds i64, i64* %32, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @ATH9K_POW_SM(i64 %242, i32 16)
  %244 = or i64 %239, %243
  %245 = load i64, i64* @rateHt20_5, align 8
  %246 = getelementptr inbounds i64, i64* %32, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @ATH9K_POW_SM(i64 %247, i32 8)
  %249 = or i64 %244, %248
  %250 = load i64, i64* @rateHt20_4, align 8
  %251 = getelementptr inbounds i64, i64* %32, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @ATH9K_POW_SM(i64 %252, i32 0)
  %254 = or i64 %249, %253
  %255 = call i32 @REG_WRITE(%struct.ath_hw* %234, i32 %235, i64 %254)
  %256 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %257 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %393

259:                                              ; preds = %211
  %260 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %261 = load i32, i32* @EEP_OL_PWRCTRL, align 4
  %262 = call i64 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw* %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %309

264:                                              ; preds = %259
  %265 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %266 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %267 = load i64, i64* @rateHt40_3, align 8
  %268 = getelementptr inbounds i64, i64* %32, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @ATH9K_POW_SM(i64 %269, i32 24)
  %271 = load i64, i64* @rateHt40_2, align 8
  %272 = getelementptr inbounds i64, i64* %32, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = call i64 @ATH9K_POW_SM(i64 %273, i32 16)
  %275 = or i64 %270, %274
  %276 = load i64, i64* @rateHt40_1, align 8
  %277 = getelementptr inbounds i64, i64* %32, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @ATH9K_POW_SM(i64 %278, i32 8)
  %280 = or i64 %275, %279
  %281 = load i64, i64* @rateHt40_0, align 8
  %282 = getelementptr inbounds i64, i64* %32, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @ATH9K_POW_SM(i64 %283, i32 0)
  %285 = or i64 %280, %284
  %286 = call i32 @REG_WRITE(%struct.ath_hw* %265, i32 %266, i64 %285)
  %287 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %288 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %289 = load i64, i64* @rateHt40_7, align 8
  %290 = getelementptr inbounds i64, i64* %32, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @ATH9K_POW_SM(i64 %291, i32 24)
  %293 = load i64, i64* @rateHt40_6, align 8
  %294 = getelementptr inbounds i64, i64* %32, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = call i64 @ATH9K_POW_SM(i64 %295, i32 16)
  %297 = or i64 %292, %296
  %298 = load i64, i64* @rateHt40_5, align 8
  %299 = getelementptr inbounds i64, i64* %32, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = call i64 @ATH9K_POW_SM(i64 %300, i32 8)
  %302 = or i64 %297, %301
  %303 = load i64, i64* @rateHt40_4, align 8
  %304 = getelementptr inbounds i64, i64* %32, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = call i64 @ATH9K_POW_SM(i64 %305, i32 0)
  %307 = or i64 %302, %306
  %308 = call i32 @REG_WRITE(%struct.ath_hw* %287, i32 %288, i64 %307)
  br label %370

309:                                              ; preds = %259
  %310 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %311 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %312 = load i64, i64* @rateHt40_3, align 8
  %313 = getelementptr inbounds i64, i64* %32, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* %18, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i64 @ATH9K_POW_SM(i64 %316, i32 24)
  %318 = load i64, i64* @rateHt40_2, align 8
  %319 = getelementptr inbounds i64, i64* %32, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* %18, align 8
  %322 = add nsw i64 %320, %321
  %323 = call i64 @ATH9K_POW_SM(i64 %322, i32 16)
  %324 = or i64 %317, %323
  %325 = load i64, i64* @rateHt40_1, align 8
  %326 = getelementptr inbounds i64, i64* %32, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %18, align 8
  %329 = add nsw i64 %327, %328
  %330 = call i64 @ATH9K_POW_SM(i64 %329, i32 8)
  %331 = or i64 %324, %330
  %332 = load i64, i64* @rateHt40_0, align 8
  %333 = getelementptr inbounds i64, i64* %32, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* %18, align 8
  %336 = add nsw i64 %334, %335
  %337 = call i64 @ATH9K_POW_SM(i64 %336, i32 0)
  %338 = or i64 %331, %337
  %339 = call i32 @REG_WRITE(%struct.ath_hw* %310, i32 %311, i64 %338)
  %340 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %341 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %342 = load i64, i64* @rateHt40_7, align 8
  %343 = getelementptr inbounds i64, i64* %32, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* %18, align 8
  %346 = add nsw i64 %344, %345
  %347 = call i64 @ATH9K_POW_SM(i64 %346, i32 24)
  %348 = load i64, i64* @rateHt40_6, align 8
  %349 = getelementptr inbounds i64, i64* %32, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* %18, align 8
  %352 = add nsw i64 %350, %351
  %353 = call i64 @ATH9K_POW_SM(i64 %352, i32 16)
  %354 = or i64 %347, %353
  %355 = load i64, i64* @rateHt40_5, align 8
  %356 = getelementptr inbounds i64, i64* %32, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %18, align 8
  %359 = add nsw i64 %357, %358
  %360 = call i64 @ATH9K_POW_SM(i64 %359, i32 8)
  %361 = or i64 %354, %360
  %362 = load i64, i64* @rateHt40_4, align 8
  %363 = getelementptr inbounds i64, i64* %32, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* %18, align 8
  %366 = add nsw i64 %364, %365
  %367 = call i64 @ATH9K_POW_SM(i64 %366, i32 0)
  %368 = or i64 %361, %367
  %369 = call i32 @REG_WRITE(%struct.ath_hw* %340, i32 %341, i64 %368)
  br label %370

370:                                              ; preds = %309, %264
  %371 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %372 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %373 = load i64, i64* @rateExtOfdm, align 8
  %374 = getelementptr inbounds i64, i64* %32, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = call i64 @ATH9K_POW_SM(i64 %375, i32 24)
  %377 = load i64, i64* @rateExtCck, align 8
  %378 = getelementptr inbounds i64, i64* %32, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = call i64 @ATH9K_POW_SM(i64 %379, i32 16)
  %381 = or i64 %376, %380
  %382 = load i64, i64* @rateDupOfdm, align 8
  %383 = getelementptr inbounds i64, i64* %32, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = call i64 @ATH9K_POW_SM(i64 %384, i32 8)
  %386 = or i64 %381, %385
  %387 = load i64, i64* @rateDupCck, align 8
  %388 = getelementptr inbounds i64, i64* %32, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = call i64 @ATH9K_POW_SM(i64 %389, i32 0)
  %391 = or i64 %386, %390
  %392 = call i32 @REG_WRITE(%struct.ath_hw* %371, i32 %372, i64 %391)
  br label %393

393:                                              ; preds = %370, %211
  %394 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %395 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %418

398:                                              ; preds = %393
  %399 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %400 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i64, i64* %18, align 8
  br label %405

404:                                              ; preds = %398
  br label %405

405:                                              ; preds = %404, %402
  %406 = phi i64 [ %403, %402 ], [ 0, %404 ]
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %21, align 4
  %408 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %409 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %410 = load i32, i32* %21, align 4
  %411 = call i32 @ar5008_hw_init_rate_txpower(%struct.ath_hw* %408, i64* %32, %struct.ath9k_channel* %409, i32 %410)
  %412 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %413 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %414 = load i64, i64* @MAX_RATE_POWER, align 8
  %415 = load i64, i64* @AR_PHY_POWER_TX_RATE_MAX_TPC_ENABLE, align 8
  %416 = or i64 %414, %415
  %417 = call i32 @REG_WRITE(%struct.ath_hw* %412, i32 %413, i64 %416)
  br label %423

418:                                              ; preds = %393
  %419 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %420 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %421 = load i64, i64* @MAX_RATE_POWER, align 8
  %422 = call i32 @REG_WRITE(%struct.ath_hw* %419, i32 %420, i64 %421)
  br label %423

423:                                              ; preds = %418, %405
  %424 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %425 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %424)
  store i32 0, i32* %20, align 4
  br label %426

426:                                              ; preds = %423, %98
  %427 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %427)
  %428 = load i32, i32* %20, align 4
  switch i32 %428, label %430 [
    i32 0, label %429
    i32 1, label %429
  ]

429:                                              ; preds = %426, %426
  ret void

430:                                              ; preds = %426
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @ath9k_hw_ar9287_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_ar9287_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_ar9287_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i64 @ATH9K_POW_SM(i64, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw*, i32) #1

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
