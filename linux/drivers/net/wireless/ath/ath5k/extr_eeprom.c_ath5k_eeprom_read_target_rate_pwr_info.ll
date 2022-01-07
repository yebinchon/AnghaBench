; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_target_rate_pwr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_target_rate_pwr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32*, i64, %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info*, i32 }
%struct.ath5k_rate_pcal_info = type { i64, i32, i32, i32, i32 }

@AR5K_EEPROM_N_5GHZ_RATE_CHAN = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_2GHZ_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_3_2 = common dso_local global i64 0, align 8
@AR5K_EEPROM_CHANNEL_DIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_target_rate_pwr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_target_rate_pwr_info(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_rate_pcal_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %14, %struct.ath5k_eeprom_info** %6, align 8
  %15 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %16 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @AR5K_EEPROM_TARGET_PWRSTART(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %79 [
    i32 130, label %26
    i32 129, label %44
    i32 128, label %61
  ]

26:                                               ; preds = %2
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @AR5K_EEPROM_TARGET_PWR_OFF_11A(i64 %29)
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %35 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %34, i32 0, i32 4
  %36 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %35, align 8
  store %struct.ath5k_rate_pcal_info* %36, %struct.ath5k_rate_pcal_info** %7, align 8
  %37 = load i32, i32* @AR5K_EEPROM_N_5GHZ_RATE_CHAN, align 4
  %38 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %39 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %82

44:                                               ; preds = %2
  %45 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %46 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @AR5K_EEPROM_TARGET_PWR_OFF_11B(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %53 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %52, i32 0, i32 3
  %54 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %53, align 8
  store %struct.ath5k_rate_pcal_info* %54, %struct.ath5k_rate_pcal_info** %7, align 8
  %55 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %56 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 2, i32* %60, align 4
  br label %82

61:                                               ; preds = %2
  %62 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %63 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @AR5K_EEPROM_TARGET_PWR_OFF_11G(i64 %64)
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %70 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %69, i32 0, i32 2
  %71 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %70, align 8
  store %struct.ath5k_rate_pcal_info* %71, %struct.ath5k_rate_pcal_info** %7, align 8
  %72 = load i32, i32* @AR5K_EEPROM_N_2GHZ_CHAN, align 4
  %73 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %74 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %82

79:                                               ; preds = %2
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %268

82:                                               ; preds = %61, %44, %26
  %83 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %84 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %178

88:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %174, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %177

94:                                               ; preds = %89
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  %97 = trunc i64 %95 to i32
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @AR5K_EEPROM_READ(i32 %97, i32 %98)
  %100 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 9
  %103 = and i32 %102, 127
  %104 = load i32, i32* %5, align 4
  %105 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %100, i32 %103, i32 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %107, i64 %109
  %111 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %110, i32 0, i32 0
  store i64 %106, i64* %111, align 8
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 3
  %114 = and i32 %113, 63
  %115 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %115, i64 %117
  %119 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 3
  %122 = and i32 %121, 63
  %123 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %123, i64 %125
  %127 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %126, i32 0, i32 2
  store i32 %122, i32* %127, align 4
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %9, align 8
  %130 = trunc i64 %128 to i32
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @AR5K_EEPROM_READ(i32 %130, i32 %131)
  %133 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %133, i64 %135
  %137 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AR5K_EEPROM_CHANNEL_DIS, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %94
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141, %94
  %145 = load i32, i32* %11, align 4
  %146 = load i32*, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  br label %177

147:                                              ; preds = %141
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 13
  %150 = and i32 %149, 7
  %151 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %151, i64 %153
  %155 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %150
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %10, align 4
  %159 = ashr i32 %158, 7
  %160 = and i32 %159, 63
  %161 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %161, i64 %163
  %165 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %164, i32 0, i32 3
  store i32 %160, i32* %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = ashr i32 %166, 1
  %168 = and i32 %167, 63
  %169 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %169, i64 %171
  %173 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %172, i32 0, i32 4
  store i32 %168, i32* %173, align 4
  br label %174

174:                                              ; preds = %147
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %89

177:                                              ; preds = %144, %89
  br label %267

178:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %263, %178
  %180 = load i32, i32* %11, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %266

184:                                              ; preds = %179
  %185 = load i64, i64* %9, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %9, align 8
  %187 = trunc i64 %185 to i32
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @AR5K_EEPROM_READ(i32 %187, i32 %188)
  %190 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %191 = load i32, i32* %10, align 4
  %192 = ashr i32 %191, 8
  %193 = and i32 %192, 255
  %194 = load i32, i32* %5, align 4
  %195 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %190, i32 %193, i32 %194)
  %196 = ptrtoint i8* %195 to i64
  %197 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %197, i64 %199
  %201 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %200, i32 0, i32 0
  store i64 %196, i64* %201, align 8
  %202 = load i32, i32* %10, align 4
  %203 = ashr i32 %202, 2
  %204 = and i32 %203, 63
  %205 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %205, i64 %207
  %209 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %208, i32 0, i32 1
  store i32 %204, i32* %209, align 8
  %210 = load i32, i32* %10, align 4
  %211 = shl i32 %210, 4
  %212 = and i32 %211, 63
  %213 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %213, i64 %215
  %217 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %216, i32 0, i32 2
  store i32 %212, i32* %217, align 4
  %218 = load i64, i64* %9, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %9, align 8
  %220 = trunc i64 %218 to i32
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @AR5K_EEPROM_READ(i32 %220, i32 %221)
  %223 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %223, i64 %225
  %227 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @AR5K_EEPROM_CHANNEL_DIS, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %234, label %231

231:                                              ; preds = %184
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231, %184
  %235 = load i32, i32* %11, align 4
  %236 = load i32*, i32** %8, align 8
  store i32 %235, i32* %236, align 4
  br label %266

237:                                              ; preds = %231
  %238 = load i32, i32* %10, align 4
  %239 = ashr i32 %238, 12
  %240 = and i32 %239, 15
  %241 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %241, i64 %243
  %245 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %240
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %10, align 4
  %249 = ashr i32 %248, 6
  %250 = and i32 %249, 63
  %251 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %251, i64 %253
  %255 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %254, i32 0, i32 3
  store i32 %250, i32* %255, align 8
  %256 = load i32, i32* %10, align 4
  %257 = and i32 %256, 63
  %258 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %258, i64 %260
  %262 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %261, i32 0, i32 4
  store i32 %257, i32* %262, align 4
  br label %263

263:                                              ; preds = %237
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %11, align 4
  br label %179

266:                                              ; preds = %234, %179
  br label %267

267:                                              ; preds = %266, %177
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %79
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i64 @AR5K_EEPROM_TARGET_PWRSTART(i32) #1

declare dso_local i32 @AR5K_EEPROM_TARGET_PWR_OFF_11A(i64) #1

declare dso_local i32 @AR5K_EEPROM_TARGET_PWR_OFF_11B(i64) #1

declare dso_local i32 @AR5K_EEPROM_TARGET_PWR_OFF_11G(i64) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
