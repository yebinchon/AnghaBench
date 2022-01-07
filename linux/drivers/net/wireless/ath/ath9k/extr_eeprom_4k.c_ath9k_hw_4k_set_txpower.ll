; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.modal_eep_4k_header }
%struct.modal_eep_4k_header = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_4k_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar5416_eeprom_4k*, align 8
  %15 = alloca %struct.modal_eep_4k_header*, align 8
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
  store %struct.ar5416_eeprom_4k* %26, %struct.ar5416_eeprom_4k** %14, align 8
  %27 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %14, align 8
  %28 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %27, i32 0, i32 0
  store %struct.modal_eep_4k_header* %28, %struct.modal_eep_4k_header** %15, align 8
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
  %37 = call i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw* %36)
  %38 = load i64, i64* @AR5416_EEP_MINOR_VER_2, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %15, align 8
  %42 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %41, i32 0, i32 0
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
  %51 = call i32 @ath9k_hw_set_4k_power_per_rate_table(%struct.ath_hw* %45, %struct.ath9k_channel* %46, i64* %47, i32 %48, i64 %49, i64 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %54 = call i32 @ath9k_hw_set_4k_power_cal_table(%struct.ath_hw* %52, %struct.ath9k_channel* %53)
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
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %20, align 4
  br label %368

97:                                               ; preds = %93
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %111, %97
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @Ar5416RateSize, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  %104 = mul nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %32, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %105
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %98

114:                                              ; preds = %98
  %115 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %116 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %115)
  %117 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %118 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %119 = load i64, i64* @rate18mb, align 8
  %120 = getelementptr inbounds i64, i64* %32, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @ATH9K_POW_SM(i64 %121, i32 24)
  %123 = load i64, i64* @rate12mb, align 8
  %124 = getelementptr inbounds i64, i64* %32, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @ATH9K_POW_SM(i64 %125, i32 16)
  %127 = or i64 %122, %126
  %128 = load i64, i64* @rate9mb, align 8
  %129 = getelementptr inbounds i64, i64* %32, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @ATH9K_POW_SM(i64 %130, i32 8)
  %132 = or i64 %127, %131
  %133 = load i64, i64* @rate6mb, align 8
  %134 = getelementptr inbounds i64, i64* %32, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @ATH9K_POW_SM(i64 %135, i32 0)
  %137 = or i64 %132, %136
  %138 = call i32 @REG_WRITE(%struct.ath_hw* %117, i32 %118, i64 %137)
  %139 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %140 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %141 = load i64, i64* @rate54mb, align 8
  %142 = getelementptr inbounds i64, i64* %32, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @ATH9K_POW_SM(i64 %143, i32 24)
  %145 = load i64, i64* @rate48mb, align 8
  %146 = getelementptr inbounds i64, i64* %32, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @ATH9K_POW_SM(i64 %147, i32 16)
  %149 = or i64 %144, %148
  %150 = load i64, i64* @rate36mb, align 8
  %151 = getelementptr inbounds i64, i64* %32, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @ATH9K_POW_SM(i64 %152, i32 8)
  %154 = or i64 %149, %153
  %155 = load i64, i64* @rate24mb, align 8
  %156 = getelementptr inbounds i64, i64* %32, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ATH9K_POW_SM(i64 %157, i32 0)
  %159 = or i64 %154, %158
  %160 = call i32 @REG_WRITE(%struct.ath_hw* %139, i32 %140, i64 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %162 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %163 = load i64, i64* @rate2s, align 8
  %164 = getelementptr inbounds i64, i64* %32, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @ATH9K_POW_SM(i64 %165, i32 24)
  %167 = load i64, i64* @rate2l, align 8
  %168 = getelementptr inbounds i64, i64* %32, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ATH9K_POW_SM(i64 %169, i32 16)
  %171 = or i64 %166, %170
  %172 = load i64, i64* @rateXr, align 8
  %173 = getelementptr inbounds i64, i64* %32, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @ATH9K_POW_SM(i64 %174, i32 8)
  %176 = or i64 %171, %175
  %177 = load i64, i64* @rate1l, align 8
  %178 = getelementptr inbounds i64, i64* %32, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @ATH9K_POW_SM(i64 %179, i32 0)
  %181 = or i64 %176, %180
  %182 = call i32 @REG_WRITE(%struct.ath_hw* %161, i32 %162, i64 %181)
  %183 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %184 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %185 = load i64, i64* @rate11s, align 8
  %186 = getelementptr inbounds i64, i64* %32, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @ATH9K_POW_SM(i64 %187, i32 24)
  %189 = load i64, i64* @rate11l, align 8
  %190 = getelementptr inbounds i64, i64* %32, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @ATH9K_POW_SM(i64 %191, i32 16)
  %193 = or i64 %188, %192
  %194 = load i64, i64* @rate5_5s, align 8
  %195 = getelementptr inbounds i64, i64* %32, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @ATH9K_POW_SM(i64 %196, i32 8)
  %198 = or i64 %193, %197
  %199 = load i64, i64* @rate5_5l, align 8
  %200 = getelementptr inbounds i64, i64* %32, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @ATH9K_POW_SM(i64 %201, i32 0)
  %203 = or i64 %198, %202
  %204 = call i32 @REG_WRITE(%struct.ath_hw* %183, i32 %184, i64 %203)
  %205 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %206 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %207 = load i64, i64* @rateHt20_3, align 8
  %208 = getelementptr inbounds i64, i64* %32, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @ATH9K_POW_SM(i64 %209, i32 24)
  %211 = load i64, i64* @rateHt20_2, align 8
  %212 = getelementptr inbounds i64, i64* %32, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @ATH9K_POW_SM(i64 %213, i32 16)
  %215 = or i64 %210, %214
  %216 = load i64, i64* @rateHt20_1, align 8
  %217 = getelementptr inbounds i64, i64* %32, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @ATH9K_POW_SM(i64 %218, i32 8)
  %220 = or i64 %215, %219
  %221 = load i64, i64* @rateHt20_0, align 8
  %222 = getelementptr inbounds i64, i64* %32, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @ATH9K_POW_SM(i64 %223, i32 0)
  %225 = or i64 %220, %224
  %226 = call i32 @REG_WRITE(%struct.ath_hw* %205, i32 %206, i64 %225)
  %227 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %228 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %229 = load i64, i64* @rateHt20_7, align 8
  %230 = getelementptr inbounds i64, i64* %32, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @ATH9K_POW_SM(i64 %231, i32 24)
  %233 = load i64, i64* @rateHt20_6, align 8
  %234 = getelementptr inbounds i64, i64* %32, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i64 @ATH9K_POW_SM(i64 %235, i32 16)
  %237 = or i64 %232, %236
  %238 = load i64, i64* @rateHt20_5, align 8
  %239 = getelementptr inbounds i64, i64* %32, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @ATH9K_POW_SM(i64 %240, i32 8)
  %242 = or i64 %237, %241
  %243 = load i64, i64* @rateHt20_4, align 8
  %244 = getelementptr inbounds i64, i64* %32, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @ATH9K_POW_SM(i64 %245, i32 0)
  %247 = or i64 %242, %246
  %248 = call i32 @REG_WRITE(%struct.ath_hw* %227, i32 %228, i64 %247)
  %249 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %250 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %335

252:                                              ; preds = %114
  %253 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %254 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %255 = load i64, i64* @rateHt40_3, align 8
  %256 = getelementptr inbounds i64, i64* %32, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %18, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i64 @ATH9K_POW_SM(i64 %259, i32 24)
  %261 = load i64, i64* @rateHt40_2, align 8
  %262 = getelementptr inbounds i64, i64* %32, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %18, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i64 @ATH9K_POW_SM(i64 %265, i32 16)
  %267 = or i64 %260, %266
  %268 = load i64, i64* @rateHt40_1, align 8
  %269 = getelementptr inbounds i64, i64* %32, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %18, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i64 @ATH9K_POW_SM(i64 %272, i32 8)
  %274 = or i64 %267, %273
  %275 = load i64, i64* @rateHt40_0, align 8
  %276 = getelementptr inbounds i64, i64* %32, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %18, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i64 @ATH9K_POW_SM(i64 %279, i32 0)
  %281 = or i64 %274, %280
  %282 = call i32 @REG_WRITE(%struct.ath_hw* %253, i32 %254, i64 %281)
  %283 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %284 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %285 = load i64, i64* @rateHt40_7, align 8
  %286 = getelementptr inbounds i64, i64* %32, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %18, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i64 @ATH9K_POW_SM(i64 %289, i32 24)
  %291 = load i64, i64* @rateHt40_6, align 8
  %292 = getelementptr inbounds i64, i64* %32, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %18, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i64 @ATH9K_POW_SM(i64 %295, i32 16)
  %297 = or i64 %290, %296
  %298 = load i64, i64* @rateHt40_5, align 8
  %299 = getelementptr inbounds i64, i64* %32, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %18, align 8
  %302 = add nsw i64 %300, %301
  %303 = call i64 @ATH9K_POW_SM(i64 %302, i32 8)
  %304 = or i64 %297, %303
  %305 = load i64, i64* @rateHt40_4, align 8
  %306 = getelementptr inbounds i64, i64* %32, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* %18, align 8
  %309 = add nsw i64 %307, %308
  %310 = call i64 @ATH9K_POW_SM(i64 %309, i32 0)
  %311 = or i64 %304, %310
  %312 = call i32 @REG_WRITE(%struct.ath_hw* %283, i32 %284, i64 %311)
  %313 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %314 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %315 = load i64, i64* @rateExtOfdm, align 8
  %316 = getelementptr inbounds i64, i64* %32, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @ATH9K_POW_SM(i64 %317, i32 24)
  %319 = load i64, i64* @rateExtCck, align 8
  %320 = getelementptr inbounds i64, i64* %32, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = call i64 @ATH9K_POW_SM(i64 %321, i32 16)
  %323 = or i64 %318, %322
  %324 = load i64, i64* @rateDupOfdm, align 8
  %325 = getelementptr inbounds i64, i64* %32, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @ATH9K_POW_SM(i64 %326, i32 8)
  %328 = or i64 %323, %327
  %329 = load i64, i64* @rateDupCck, align 8
  %330 = getelementptr inbounds i64, i64* %32, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = call i64 @ATH9K_POW_SM(i64 %331, i32 0)
  %333 = or i64 %328, %332
  %334 = call i32 @REG_WRITE(%struct.ath_hw* %313, i32 %314, i64 %333)
  br label %335

335:                                              ; preds = %252, %114
  %336 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %337 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %360

340:                                              ; preds = %335
  %341 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %342 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = load i64, i64* %18, align 8
  br label %347

346:                                              ; preds = %340
  br label %347

347:                                              ; preds = %346, %344
  %348 = phi i64 [ %345, %344 ], [ 0, %346 ]
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %21, align 4
  %350 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %351 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %352 = load i32, i32* %21, align 4
  %353 = call i32 @ar5008_hw_init_rate_txpower(%struct.ath_hw* %350, i64* %32, %struct.ath9k_channel* %351, i32 %352)
  %354 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %355 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %356 = load i64, i64* @MAX_RATE_POWER, align 8
  %357 = load i64, i64* @AR_PHY_POWER_TX_RATE_MAX_TPC_ENABLE, align 8
  %358 = or i64 %356, %357
  %359 = call i32 @REG_WRITE(%struct.ath_hw* %354, i32 %355, i64 %358)
  br label %365

360:                                              ; preds = %335
  %361 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %362 = load i32, i32* @AR_PHY_POWER_TX_RATE_MAX, align 4
  %363 = load i64, i64* @MAX_RATE_POWER, align 8
  %364 = call i32 @REG_WRITE(%struct.ath_hw* %361, i32 %362, i64 %363)
  br label %365

365:                                              ; preds = %360, %347
  %366 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %367 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %366)
  store i32 0, i32* %20, align 4
  br label %368

368:                                              ; preds = %365, %96
  %369 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %369)
  %370 = load i32, i32* %20, align 4
  switch i32 %370, label %372 [
    i32 0, label %371
    i32 1, label %371
  ]

371:                                              ; preds = %368, %368
  ret void

372:                                              ; preds = %368
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @ath9k_hw_4k_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_4k_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_4k_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

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
