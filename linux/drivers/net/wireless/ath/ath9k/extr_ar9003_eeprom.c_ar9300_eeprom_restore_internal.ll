; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_eeprom_restore_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_eeprom_restore_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ar9300_eeprom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ar9300_default = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR_4K = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR_512 = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying EEPROM access at Address 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Trying OTP access at Address 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Found valid EEPROM data\0A\00", align 1
@COMP_HDR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Found block at %x: code=%d ref=%d length=%d major=%d minor=%d\0A\00", align 1
@EEPROM_DATA_LEN_9485 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Skipping bad header\0A\00", align 1
@COMP_CKSUM_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"checksum %x %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"skipping block with bad checksum\0A\00", align 1
@MSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32*, i32)* @ar9300_eeprom_restore_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_eeprom_restore_internal(%struct.ath_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ath_common*, align 8
  %20 = alloca %struct.ar9300_eeprom*, align 8
  %21 = alloca i32 (%struct.ath_hw*, i32, i32*, i32)*, align 8
  %22 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %23)
  store %struct.ath_common* %24, %struct.ath_common** %19, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call i64 @ath9k_hw_use_flash(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %3
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @ar9300_eeprom_restore_flash(%struct.ath_hw* %29, i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %256

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to %struct.ar9300_eeprom*
  store %struct.ar9300_eeprom* %39, %struct.ar9300_eeprom** %20, align 8
  %40 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %20, align 8
  %41 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %22, align 4
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %256

50:                                               ; preds = %46, %37
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kzalloc(i32 2048, i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %256

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @memcpy(i32* %60, i32* @ar9300_default, i32 %61)
  store i32 (%struct.ath_hw*, i32, i32*, i32)* @ar9300_read_eeprom, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %64 = call i64 @AR_SREV_9485(%struct.ath_hw* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @AR9300_BASE_ADDR_4K, align 4
  store i32 %67, i32* %8, align 4
  br label %77

68:                                               ; preds = %59
  %69 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %70 = call i64 @AR_SREV_9330(%struct.ath_hw* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %73, i32* %8, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @AR9300_BASE_ADDR, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %79 = load i32, i32* @EEPROM, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %78, i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %83 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %82, i32 (%struct.ath_hw*, i32, i32*, i32)* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %137

88:                                               ; preds = %77
  %89 = load i32, i32* @AR9300_BASE_ADDR_4K, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %91 = load i32, i32* @EEPROM, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %90, i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %95 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %94, i32 (%struct.ath_hw*, i32, i32*, i32)* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %137

100:                                              ; preds = %88
  %101 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %101, i32* %8, align 4
  %102 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %103 = load i32, i32* @EEPROM, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %102, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %107 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %106, i32 (%struct.ath_hw*, i32, i32*, i32)* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %137

112:                                              ; preds = %100
  store i32 (%struct.ath_hw*, i32, i32*, i32)* @ar9300_read_otp, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %113 = load i32, i32* @AR9300_BASE_ADDR, align 4
  store i32 %113, i32* %8, align 4
  %114 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %115 = load i32, i32* @EEPROM, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %114, i32 %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %119 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %118, i32 (%struct.ath_hw*, i32, i32*, i32)* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %137

124:                                              ; preds = %112
  %125 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %125, i32* %8, align 4
  %126 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %127 = load i32, i32* @EEPROM, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %126, i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %131 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %130, i32 (%struct.ath_hw*, i32, i32*, i32)* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %137

136:                                              ; preds = %124
  br label %253

137:                                              ; preds = %135, %123, %111, %99, %87
  %138 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %139 = load i32, i32* @EEPROM, align 4
  %140 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %138, i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %246, %137
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 100
  br i1 %143, label %144, label %249

144:                                              ; preds = %141
  %145 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %146 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* @COMP_HDR_LEN, align 4
  %150 = call i32 %145(%struct.ath_hw* %146, i32 %147, i32* %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %144
  br label %253

153:                                              ; preds = %144
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @ar9300_check_header(i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  br label %249

158:                                              ; preds = %153
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @ar9300_comp_hdr_unpack(i32* %159, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %161 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %162 = load i32, i32* @EEPROM, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %161, i32 %162, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %171 = call i64 @AR_SREV_9485(%struct.ath_hw* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %158
  %174 = load i32, i32* %12, align 4
  %175 = icmp sge i32 %174, 1024
  br i1 %175, label %184, label %176

176:                                              ; preds = %173, %158
  %177 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %178 = call i64 @AR_SREV_9485(%struct.ath_hw* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @EEPROM_DATA_LEN_9485, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180, %173
  %185 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %186 = load i32, i32* @EEPROM, align 4
  %187 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %185, i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i32, i32* @COMP_HDR_LEN, align 4
  %189 = load i32, i32* %8, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %8, align 4
  br label %246

191:                                              ; preds = %180, %176
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %15, align 4
  %193 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %194 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* @COMP_HDR_LEN, align 4
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* @COMP_CKSUM_LEN, align 4
  %201 = add nsw i32 %199, %200
  %202 = call i32 %193(%struct.ath_hw* %194, i32 %195, i32* %196, i32 %201)
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* @COMP_HDR_LEN, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @ar9300_comp_cksum(i32* %206, i32 %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* @COMP_HDR_LEN, align 4
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = call i32 @get_unaligned_le16(i32* %214)
  store i32 %215, i32* %18, align 4
  %216 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %217 = load i32, i32* @EEPROM, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %18, align 4
  %220 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %216, i32 %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %191
  %225 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @ar9300_compress_decision(%struct.ath_hw* %225, i32 %226, i32 %227, i32 %228, i32* %229, i32* %230, i32 %231, i32 %232)
  br label %238

234:                                              ; preds = %191
  %235 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %236 = load i32, i32* @EEPROM, align 4
  %237 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %235, i32 %236, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %238

238:                                              ; preds = %234, %224
  %239 = load i32, i32* @COMP_HDR_LEN, align 4
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %239, %240
  %242 = load i32, i32* @COMP_CKSUM_LEN, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %8, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %238, %184
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %141

249:                                              ; preds = %157, %141
  %250 = load i32*, i32** %9, align 8
  %251 = call i32 @kfree(i32* %250)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %4, align 4
  br label %256

253:                                              ; preds = %152, %136
  %254 = load i32*, i32** %9, align 8
  %255 = call i32 @kfree(i32* %254)
  store i32 -1, i32* %4, align 4
  br label %256

256:                                              ; preds = %253, %249, %56, %49, %34
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i64 @ar9300_eeprom_restore_flash(%struct.ath_hw*, i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ar9300_read_eeprom(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ar9300_check_eeprom_header(%struct.ath_hw*, i32 (%struct.ath_hw*, i32, i32*, i32)*, i32) #1

declare dso_local i32 @ar9300_read_otp(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @ar9300_check_header(i32*) #1

declare dso_local i32 @ar9300_comp_hdr_unpack(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ar9300_comp_cksum(i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @ar9300_compress_decision(%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
