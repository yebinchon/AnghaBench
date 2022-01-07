; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_update_nvm_checksum_spt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_update_nvm_checksum_spt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@e1000_nvm_flash_sw = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@E1000_ICH8_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_WORD = common dso_local global i32 0, align 4
@E1000_ICH_NVM_SIG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Flash commit failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NVM update error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_spt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_spt(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_nvm_info* %13, %struct.e1000_nvm_info** %3, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %16, %struct.e1000_dev_spec_ich8lan** %4, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = call i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %259

22:                                               ; preds = %1
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_nvm_flash_sw, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %259

29:                                               ; preds = %22
  %30 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.2*
  %36 = call i32 %33(%struct.e1000_hw.2* %35)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = call i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %37, i64* %9)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %50, i32 1)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %239

55:                                               ; preds = %46
  br label %66

56:                                               ; preds = %43
  %57 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %60, i32 0)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %239

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %55
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %158, %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %161

71:                                               ; preds = %67
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %72, i64 %75, i64* %11)
  store i64 %76, i64* %10, align 8
  %77 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %71
  %86 = load i64, i64* %11, align 8
  %87 = and i64 %86, 4294901760
  store i64 %87, i64* %11, align 8
  %88 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 65535
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %11, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %85, %71
  %100 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %101 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = add nsw i64 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %99
  %110 = load i64, i64* %11, align 8
  %111 = and i64 %110, 65535
  store i64 %111, i64* %11, align 8
  %112 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %113 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = add nsw i64 %115, 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 65535
  %121 = shl i32 %120, 16
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %11, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %109, %99
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %161

129:                                              ; preds = %125
  %130 = load i64, i64* %5, align 8
  %131 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32, i32* @E1000_ICH_NVM_SIG_MASK, align 4
  %137 = shl i32 %136, 16
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %11, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %11, align 8
  br label %141

141:                                              ; preds = %135, %129
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %142, %143
  %145 = shl i64 %144, 1
  store i64 %145, i64* %6, align 8
  %146 = call i32 @usleep_range(i32 100, i32 200)
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* %7, align 8
  %149 = add nsw i64 %147, %148
  store i64 %149, i64* %6, align 8
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %150, i64 %151, i64 %152)
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* %10, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %141
  br label %161

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %5, align 8
  %160 = add nsw i64 %159, 2
  store i64 %160, i64* %5, align 8
  br label %67

161:                                              ; preds = %156, %128, %67
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %239

166:                                              ; preds = %161
  %167 = load i64, i64* %7, align 8
  %168 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  store i64 %170, i64* %6, align 8
  %171 = load i64, i64* %6, align 8
  %172 = add nsw i64 %171, -1
  store i64 %172, i64* %6, align 8
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %173, i64 %174, i64* %11)
  store i64 %175, i64* %10, align 8
  %176 = load i64, i64* %10, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %239

179:                                              ; preds = %166
  %180 = load i64, i64* %11, align 8
  %181 = and i64 %180, 3221225471
  store i64 %181, i64* %11, align 8
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* %11, align 8
  %185 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %182, i64 %183, i64 %184)
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %239

189:                                              ; preds = %179
  %190 = load i64, i64* %8, align 8
  %191 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = mul nsw i64 %193, 2
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %6, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = sub nsw i64 %199, 1
  store i64 %200, i64* %6, align 8
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %202 = load i64, i64* %6, align 8
  %203 = call i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %201, i64 %202, i64* %11)
  store i64 %203, i64* %10, align 8
  %204 = load i64, i64* %10, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %189
  br label %239

207:                                              ; preds = %189
  %208 = load i64, i64* %11, align 8
  %209 = and i64 %208, 16777215
  store i64 %209, i64* %11, align 8
  %210 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* %11, align 8
  %213 = call i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %210, i64 %211, i64 %212)
  store i64 %213, i64* %10, align 8
  %214 = load i64, i64* %10, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %239

217:                                              ; preds = %207
  store i64 0, i64* %5, align 8
  br label %218

218:                                              ; preds = %235, %217
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %218
  %223 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %224 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32 0, i32* %228, align 4
  %229 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %230 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %229, i32 0, i32 0
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = load i64, i64* %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  store i32 65535, i32* %234, align 4
  br label %235

235:                                              ; preds = %222
  %236 = load i64, i64* %5, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %5, align 8
  br label %218

238:                                              ; preds = %218
  br label %239

239:                                              ; preds = %238, %216, %206, %188, %178, %164, %64, %54
  %240 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %241 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %242, align 8
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %245 = bitcast %struct.e1000_hw* %244 to %struct.e1000_hw.1*
  %246 = call i32 %243(%struct.e1000_hw.1* %245)
  %247 = load i64, i64* %10, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %239
  %250 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %251 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %252, align 8
  %254 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %255 = bitcast %struct.e1000_hw* %254 to %struct.e1000_hw.0*
  %256 = call i32 %253(%struct.e1000_hw.0* %255)
  %257 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %258

258:                                              ; preds = %249, %239
  br label %259

259:                                              ; preds = %258, %28, %21
  %260 = load i64, i64* %10, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i64, i64* %10, align 8
  %264 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i64, i64* %10, align 8
  ret i64 %266
}

declare dso_local i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
