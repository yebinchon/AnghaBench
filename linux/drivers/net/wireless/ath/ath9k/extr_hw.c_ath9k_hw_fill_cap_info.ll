; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_fill_cap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_fill_cap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_5__*, i8*, i8*, %struct.TYPE_6__, i32, i64, i64, %struct.ath9k_hw_capabilities }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.ath9k_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_regulatory = type { i32 }
%struct.ath_common = type { i32 }

@EEP_REG_0 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@AR_SUBVENDOR_ID_NEW_A = common dso_local global i64 0, align 8
@REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regdomain mapped to 0x%x\0A\00", align 1
@EEP_OP_MODE = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"disabling 5GHz band\0A\00", align 1
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"disabling 2GHz band\0A\00", align 1
@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"both bands are disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEP_TX_MASK = common dso_local global i32 0, align 4
@AR5416_DEVID_PCI = common dso_local global i64 0, align 8
@EEP_RX_MASK = common dso_local global i32 0, align 4
@AR_PCU_MIC_NEW_LOC_ENA = common dso_local global i32 0, align 4
@AR_PCU_ALWAYS_PERFORM_KEYSEARCH = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_CIPHER_AESCCM = common dso_local global i32 0, align 4
@AR2427_DEVID_PCIE = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@ATH_AMPDU_LIMIT_MAX = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_4KB_SPLITTRANS = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_FASTCLOCK = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_LDPC = common dso_local global i32 0, align 4
@ATH9K_HW_RX_HP_QDEPTH = common dso_local global i32 0, align 4
@ATH9K_HW_RX_LP_QDEPTH = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RAC_SUPPORTED = common dso_local global i32 0, align 4
@AR_ENT_OTP = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_SGI_20 = common dso_local global i32 0, align 4
@EEP_MODAL_VER = common dso_local global i32 0, align 4
@EEP_ANT_DIV_CTL1 = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Enable LNA combining\0A\00", align 1
@EEP_CHAIN_MASK_REDUCE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_APM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_DFS = common dso_local global i32 0, align 4
@AR_ENT_OTP_49GHZ_DISABLE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_MCI = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RTT = common dso_local global i32 0, align 4
@EEP_PAPRD = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_PAPRD = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RFSILENT = common dso_local global i32 0, align 4
@EEP_RFSILENT_ENABLED = common dso_local global i32 0, align 4
@EEP_RFSILENT_GPIO_SEL = common dso_local global i32 0, align 4
@EEP_RFSILENT_POLARITY = common dso_local global i32 0, align 4
@EEP_RF_SILENT = common dso_local global i32 0, align 4
@MAX_NUM_PATTERN = common dso_local global i32 0, align 4
@MAX_NUM_PATTERN_LEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_fill_cap_info(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_hw_capabilities*, align 8
  %5 = alloca %struct.ath_regulatory*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 13
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %13)
  store %struct.ath_regulatory* %14, %struct.ath_regulatory** %5, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %6, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %20, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @EEP_REG_0, align 4
  %24 = call i32 %21(%struct.ath_hw* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %27 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %1
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AR_SUBVENDOR_ID_NEW_A, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %42 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 100
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %47 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 101
  br i1 %49, label %50, label %55

50:                                               ; preds = %45, %40
  %51 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %52 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 5
  store i32 %54, i32* %52, align 4
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %57 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 65
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %62 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %61, i32 0, i32 0
  store i32 67, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %66 = load i32, i32* @REGULATORY, align 4
  %67 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %68 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ath_dbg(%struct.ath_common* %65, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %33, %1
  %72 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %73 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %72, i32 0, i32 6
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %75, align 8
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = load i32, i32* @EEP_OP_MODE, align 4
  %79 = call i32 %76(%struct.ath_hw* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %71
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %85, i32 0, i32 12
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %91 = call i32 @ath_warn(%struct.ath_common* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %98

92:                                               ; preds = %84
  %93 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %94 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %95 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %89
  br label %99

99:                                               ; preds = %98, %71
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @AR5416_OPFLAGS_11G, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %105, i32 0, i32 11
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %111 = call i32 @ath_warn(%struct.ath_common* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %118

112:                                              ; preds = %104
  %113 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %114 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %115 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %109
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %121 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %124 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %130 = call i32 @ath_err(%struct.ath_common* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %664

133:                                              ; preds = %119
  %134 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %135 = call i32 @ath9k_gpio_cap_init(%struct.ath_hw* %134)
  %136 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %137 = call i64 @AR_SREV_9485(%struct.ath_hw* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = call i64 @AR_SREV_9285(%struct.ath_hw* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %145 = call i64 @AR_SREV_9330(%struct.ath_hw* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = call i64 @AR_SREV_9565(%struct.ath_hw* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147, %143, %139, %133
  %152 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %153 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  br label %185

154:                                              ; preds = %147
  %155 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %156 = call i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %160 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %159, i32 0, i32 1
  store i32 7, i32* %160, align 4
  br label %184

161:                                              ; preds = %154
  %162 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %163 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %167 = call i64 @AR_SREV_9340(%struct.ath_hw* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = call i64 @AR_SREV_9462(%struct.ath_hw* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %175 = call i64 @AR_SREV_9531(%struct.ath_hw* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %169, %165, %161
  %178 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %179 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %178, i32 0, i32 1
  store i32 3, i32* %179, align 4
  br label %183

180:                                              ; preds = %173
  %181 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %182 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %181, i32 0, i32 1
  store i32 7, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183, %158
  br label %185

185:                                              ; preds = %184, %151
  %186 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %187 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %186, i32 0, i32 6
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %189, align 8
  %191 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %192 = load i32, i32* @EEP_TX_MASK, align 4
  %193 = call i32 %190(%struct.ath_hw* %191, i32 %192)
  %194 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %195 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %197 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @AR5416_DEVID_PCI, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %185
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %202
  %208 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %209 = call i64 @AR_SREV_9271(%struct.ath_hw* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %213 = call i64 @ath9k_hw_gpio_get(%struct.ath_hw* %212, i32 0)
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 5, i32 7
  %217 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %218 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  br label %238

219:                                              ; preds = %207, %202, %185
  %220 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %221 = call i64 @AR_SREV_9100(%struct.ath_hw* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %225 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %224, i32 0, i32 3
  store i32 7, i32* %225, align 4
  br label %237

226:                                              ; preds = %219
  %227 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %228 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %227, i32 0, i32 6
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %230, align 8
  %232 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %233 = load i32, i32* @EEP_RX_MASK, align 4
  %234 = call i32 %231(%struct.ath_hw* %232, i32 %233)
  %235 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %236 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %226, %223
  br label %238

238:                                              ; preds = %237, %211
  %239 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %240 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %243 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @fixup_chainmask(i32 %241, i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %248 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 4
  %249 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %250 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %253 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @fixup_chainmask(i32 %251, i32 %254)
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %258 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %260 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %263 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %265 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %268 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* @AR_PCU_MIC_NEW_LOC_ENA, align 4
  %270 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %271 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %270, i32 0, i32 10
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %275 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %238
  %278 = load i32, i32* @AR_PCU_ALWAYS_PERFORM_KEYSEARCH, align 4
  %279 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %280 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %279, i32 0, i32 10
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %277, %238
  %284 = load i32, i32* @ATH_CRYPT_CAP_CIPHER_AESCCM, align 4
  %285 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %286 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  %289 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %290 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %289, i32 0, i32 9
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @AR2427_DEVID_PCIE, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %283
  %296 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %297 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %298 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  br label %308

301:                                              ; preds = %283
  %302 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %303 = xor i32 %302, -1
  %304 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %305 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %301, %295
  %309 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %310 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %314 = call i64 @AR_SREV_9100(%struct.ath_hw* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %312, %308
  %317 = load i32, i32* @ATH_AMPDU_LIMIT_MAX, align 4
  %318 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %319 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 4
  br label %323

320:                                              ; preds = %312
  %321 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %322 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %321, i32 0, i32 4
  store i32 8192, i32* %322, align 4
  br label %323

323:                                              ; preds = %320, %316
  %324 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %325 = call i64 @AR_SREV_9271(%struct.ath_hw* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %323
  %328 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %329 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %327, %323
  %332 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %333 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %334 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  br label %344

337:                                              ; preds = %327
  %338 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %341 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %337, %331
  %345 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %346 = call i64 @AR_SREV_9280(%struct.ath_hw* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %350 = call i64 @AR_SREV_9285(%struct.ath_hw* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %348, %344
  %353 = load i32, i32* @ATH9K_HW_CAP_4KB_SPLITTRANS, align 4
  %354 = xor i32 %353, -1
  %355 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %356 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = and i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %365

359:                                              ; preds = %348
  %360 = load i32, i32* @ATH9K_HW_CAP_4KB_SPLITTRANS, align 4
  %361 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %362 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %359, %352
  %366 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %367 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %411

369:                                              ; preds = %365
  %370 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %371 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %372 = or i32 %370, %371
  %373 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %374 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %378 = call i64 @AR_SREV_9330(%struct.ath_hw* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %398, label %380

380:                                              ; preds = %369
  %381 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %382 = call i64 @AR_SREV_9485(%struct.ath_hw* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %398, label %384

384:                                              ; preds = %380
  %385 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %386 = call i64 @AR_SREV_9561(%struct.ath_hw* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %384
  %389 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %390 = call i64 @AR_SREV_9565(%struct.ath_hw* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %398, label %392

392:                                              ; preds = %388
  %393 = load i32, i32* @ATH9K_HW_CAP_LDPC, align 4
  %394 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %395 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  br label %398

398:                                              ; preds = %392, %388, %384, %380, %369
  %399 = load i32, i32* @ATH9K_HW_RX_HP_QDEPTH, align 4
  %400 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %401 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %400, i32 0, i32 11
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* @ATH9K_HW_RX_LP_QDEPTH, align 4
  %403 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %404 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %403, i32 0, i32 10
  store i32 %402, i32* %404, align 4
  %405 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %406 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %405, i32 0, i32 5
  store i32 4, i32* %406, align 4
  %407 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %408 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %407, i32 0, i32 6
  store i32 4, i32* %408, align 4
  %409 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %410 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %409, i32 0, i32 7
  store i32 4, i32* %410, align 4
  br label %424

411:                                              ; preds = %365
  %412 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %413 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %412, i32 0, i32 6
  store i32 4, i32* %413, align 4
  %414 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %415 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %411
  %418 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %419 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %420 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %417, %411
  br label %424

424:                                              ; preds = %423, %398
  %425 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %426 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %424
  %429 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %430 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %431 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 4
  br label %434

434:                                              ; preds = %428, %424
  %435 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %436 = call i64 @AR_SREV_9561(%struct.ath_hw* %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %434
  %439 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %440 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %439, i32 0, i32 4
  store i32 62758912, i32* %440, align 4
  br label %452

441:                                              ; preds = %434
  %442 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %443 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %441
  %446 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %447 = load i32, i32* @AR_ENT_OTP, align 4
  %448 = call i32 @REG_READ(%struct.ath_hw* %446, i32 %447)
  %449 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %450 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %449, i32 0, i32 4
  store i32 %448, i32* %450, align 4
  br label %451

451:                                              ; preds = %445, %441
  br label %452

452:                                              ; preds = %451, %438
  %453 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %454 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %460, label %456

456:                                              ; preds = %452
  %457 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %458 = call i64 @AR_SREV_9271(%struct.ath_hw* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %466

460:                                              ; preds = %456, %452
  %461 = load i32, i32* @ATH9K_HW_CAP_SGI_20, align 4
  %462 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %463 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = or i32 %464, %461
  store i32 %465, i32* %463, align 4
  br label %466

466:                                              ; preds = %460, %456
  %467 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %468 = call i64 @AR_SREV_9285(%struct.ath_hw* %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %507

470:                                              ; preds = %466
  %471 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %472 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %471, i32 0, i32 6
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 0
  %475 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %474, align 8
  %476 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %477 = load i32, i32* @EEP_MODAL_VER, align 4
  %478 = call i32 %475(%struct.ath_hw* %476, i32 %477)
  %479 = icmp sge i32 %478, 3
  br i1 %479, label %480, label %506

480:                                              ; preds = %470
  %481 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %482 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %481, i32 0, i32 6
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 0
  %485 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %484, align 8
  %486 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %487 = load i32, i32* @EEP_ANT_DIV_CTL1, align 4
  %488 = call i32 %485(%struct.ath_hw* %486, i32 %487)
  store i32 %488, i32* %8, align 4
  %489 = load i32, i32* %8, align 4
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %505

492:                                              ; preds = %480
  %493 = load i32, i32* %8, align 4
  %494 = ashr i32 %493, 3
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %492
  %498 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %499 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %500 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = or i32 %501, %498
  store i32 %502, i32* %500, align 4
  %503 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %504 = call i32 @ath_info(%struct.ath_common* %503, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %505

505:                                              ; preds = %497, %492, %480
  br label %506

506:                                              ; preds = %505, %470
  br label %507

507:                                              ; preds = %506, %466
  %508 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %509 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %528

511:                                              ; preds = %507
  %512 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %513 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %512, i32 0, i32 6
  %514 = load %struct.TYPE_5__*, %struct.TYPE_5__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %514, i32 0, i32 0
  %516 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %515, align 8
  %517 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %518 = load i32, i32* @EEP_CHAIN_MASK_REDUCE, align 4
  %519 = call i32 %516(%struct.ath_hw* %517, i32 %518)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %527

521:                                              ; preds = %511
  %522 = load i32, i32* @ATH9K_HW_CAP_APM, align 4
  %523 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %524 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = or i32 %525, %522
  store i32 %526, i32* %524, align 4
  br label %527

527:                                              ; preds = %521, %511
  br label %528

528:                                              ; preds = %527, %507
  %529 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %530 = call i64 @AR_SREV_9330(%struct.ath_hw* %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %540, label %532

532:                                              ; preds = %528
  %533 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %534 = call i64 @AR_SREV_9485(%struct.ath_hw* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %532
  %537 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %538 = call i64 @AR_SREV_9565(%struct.ath_hw* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %561

540:                                              ; preds = %536, %532, %528
  %541 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %542 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %541, i32 0, i32 6
  %543 = load %struct.TYPE_5__*, %struct.TYPE_5__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 0
  %545 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %544, align 8
  %546 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %547 = load i32, i32* @EEP_ANT_DIV_CTL1, align 4
  %548 = call i32 %545(%struct.ath_hw* %546, i32 %547)
  store i32 %548, i32* %8, align 4
  %549 = load i32, i32* %8, align 4
  %550 = ashr i32 %549, 6
  %551 = icmp eq i32 %550, 3
  br i1 %551, label %552, label %560

552:                                              ; preds = %540
  %553 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %554 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %555 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = or i32 %556, %553
  store i32 %557, i32* %555, align 4
  %558 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %559 = call i32 @ath_info(%struct.ath_common* %558, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %560

560:                                              ; preds = %552, %540
  br label %561

561:                                              ; preds = %560, %536
  %562 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %563 = call i64 @ath9k_hw_dfs_tested(%struct.ath_hw* %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %571

565:                                              ; preds = %561
  %566 = load i32, i32* @ATH9K_HW_CAP_DFS, align 4
  %567 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %568 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = or i32 %569, %566
  store i32 %570, i32* %568, align 4
  br label %571

571:                                              ; preds = %565, %561
  %572 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %573 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 4
  store i32 %574, i32* %9, align 4
  %575 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %576 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 4
  store i32 %577, i32* %10, align 4
  br label %578

578:                                              ; preds = %606, %571
  %579 = load i32, i32* %9, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %578
  %582 = load i32, i32* %10, align 4
  %583 = icmp ne i32 %582, 0
  br label %584

584:                                              ; preds = %581, %578
  %585 = phi i1 [ true, %578 ], [ %583, %581 ]
  br i1 %585, label %586, label %611

586:                                              ; preds = %584
  %587 = load i32, i32* %9, align 4
  %588 = call i32 @BIT(i32 0)
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %596

591:                                              ; preds = %586
  %592 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %593 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %592, i32 0, i32 9
  %594 = load i32, i32* %593, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %593, align 4
  br label %596

596:                                              ; preds = %591, %586
  %597 = load i32, i32* %10, align 4
  %598 = call i32 @BIT(i32 0)
  %599 = and i32 %597, %598
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %596
  %602 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %603 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %602, i32 0, i32 8
  %604 = load i32, i32* %603, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %603, align 4
  br label %606

606:                                              ; preds = %601, %596
  %607 = load i32, i32* %9, align 4
  %608 = ashr i32 %607, 1
  store i32 %608, i32* %9, align 4
  %609 = load i32, i32* %10, align 4
  %610 = ashr i32 %609, 1
  store i32 %610, i32* %10, align 4
  br label %578

611:                                              ; preds = %584
  %612 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %613 = call i64 @AR_SREV_9462(%struct.ath_hw* %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %619, label %615

615:                                              ; preds = %611
  %616 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %617 = call i64 @AR_SREV_9565(%struct.ath_hw* %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %643

619:                                              ; preds = %615, %611
  %620 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %621 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @AR_ENT_OTP_49GHZ_DISABLE, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %632, label %626

626:                                              ; preds = %619
  %627 = load i32, i32* @ATH9K_HW_CAP_MCI, align 4
  %628 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %629 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = or i32 %630, %627
  store i32 %631, i32* %629, align 4
  br label %632

632:                                              ; preds = %626, %619
  %633 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %634 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %633)
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %642

636:                                              ; preds = %632
  %637 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %638 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %639 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = or i32 %640, %637
  store i32 %641, i32* %639, align 4
  br label %642

642:                                              ; preds = %636, %632
  br label %643

643:                                              ; preds = %642, %615
  %644 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %645 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %663

647:                                              ; preds = %643
  %648 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %649 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %648, i32 0, i32 6
  %650 = load %struct.TYPE_5__*, %struct.TYPE_5__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %650, i32 0, i32 0
  %652 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %651, align 8
  %653 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %654 = load i32, i32* @EEP_PAPRD, align 4
  %655 = call i32 %652(%struct.ath_hw* %653, i32 %654)
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %647
  %658 = load i32, i32* @ATH9K_HW_CAP_PAPRD, align 4
  %659 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %660 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = or i32 %661, %658
  store i32 %662, i32* %660, align 4
  br label %663

663:                                              ; preds = %657, %647, %643
  store i32 0, i32* %2, align 4
  br label %664

664:                                              ; preds = %663, %128
  %665 = load i32, i32* %2, align 4
  ret i32 %665
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath_warn(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_gpio_cap_init(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_gpio_get(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i8* @fixup_chainmask(i32, i32) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath_info(%struct.ath_common*, i8*) #1

declare dso_local i64 @ath9k_hw_dfs_tested(%struct.ath_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
