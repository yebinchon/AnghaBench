; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init0_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_adap_init0_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_caps_config_cmd = type { i8*, i8*, i32, i32, i32 }
%struct.firmware = type { i32, i64 }
%union.anon = type { i32 }

@PIORSTMODE_F = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@FW4_CFNAME = common dso_local global i8* null, align 8
@FW5_CFNAME = common dso_local global i8* null, align 8
@FW6_CFNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Device %d is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"On FLASH\00", align 1
@FW_MEMTYPE_CF_FLASH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"/lib/firmware/%s\00", align 1
@FLASH_CFG_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_CF = common dso_local global i32 0, align 4
@T4_MEMORY_WRITE = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Hash filter with ofld is not supported by FW\0A\00", align 1
@FW_CAPS_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_CMD_CFVALID_F = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Firmware Default\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Configuration File checksum mismatch: [fini] csum=%#x, computed csum=%#x\0A\00", align 1
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"HMA configuration failed with error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Successfully enabled ppod edram feature\0A\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"Successfully configured using Firmware Configuration File \22%s\22, version %#x, computed checksum %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\22%s\22 configuration file error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @adap_init0_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adap_init0_config(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fw_caps_config_cmd, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.firmware*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [7 x i64], align 16
  %21 = alloca [7 x i64], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %union.anon, align 4
  %26 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PIORSTMODE_F, align 4
  %35 = load i32, i32* @PIORST_F, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @t4_fw_reset(%struct.adapter* %30, i32 %33, i32 %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %371

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_10gbt_device(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = call i32 @adap_init0_phy(%struct.adapter* %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %371

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CHELSIO_CHIP_VERSION(i32 %61)
  switch i32 %62, label %69 [
    i32 130, label %63
    i32 129, label %65
    i32 128, label %67
  ]

63:                                               ; preds = %57
  %64 = load i8*, i8** @FW4_CFNAME, align 8
  store i8* %64, i8** %6, align 8
  br label %81

65:                                               ; preds = %57
  %66 = load i8*, i8** @FW5_CFNAME, align 8
  store i8* %66, i8** %6, align 8
  br label %81

67:                                               ; preds = %57
  %68 = load i8*, i8** @FW6_CFNAME, align 8
  store i8* %68, i8** %6, align 8
  br label %81

69:                                               ; preds = %57
  %70 = load %struct.adapter*, %struct.adapter** %4, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.adapter*, %struct.adapter** %4, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %19, align 4
  br label %371

81:                                               ; preds = %67, %65, %63
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.adapter*, %struct.adapter** %4, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @request_firmware(%struct.firmware** %16, i8* %82, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %90 = load i64, i64* @FW_MEMTYPE_CF_FLASH, align 8
  store i64 %90, i64* %14, align 8
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = call i64 @t4_flash_cfg_addr(%struct.adapter* %91)
  store i64 %92, i64* %15, align 8
  br label %205

93:                                               ; preds = %81
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %97, i8** %17, align 8
  %98 = load %struct.firmware*, %struct.firmware** %16, align 8
  %99 = getelementptr inbounds %struct.firmware, %struct.firmware* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FLASH_CFG_MAX_SIZE, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %19, align 4
  br label %198

106:                                              ; preds = %93
  %107 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %108 = call i64 @FW_PARAMS_MNEM_V(i32 %107)
  %109 = load i32, i32* @FW_PARAMS_PARAM_DEV_CF, align 4
  %110 = call i64 @FW_PARAMS_PARAM_X_V(i32 %109)
  %111 = or i64 %108, %110
  %112 = getelementptr inbounds [7 x i64], [7 x i64]* %20, i64 0, i64 0
  store i64 %111, i64* %112, align 16
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = load %struct.adapter*, %struct.adapter** %4, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [7 x i64], [7 x i64]* %20, i64 0, i64 0
  %121 = getelementptr inbounds [7 x i64], [7 x i64]* %21, i64 0, i64 0
  %122 = call i32 @t4_query_params(%struct.adapter* %113, i32 %116, i32 %119, i32 0, i32 1, i64* %120, i64* %121)
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %197

125:                                              ; preds = %106
  %126 = load %struct.firmware*, %struct.firmware** %16, align 8
  %127 = getelementptr inbounds %struct.firmware, %struct.firmware* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 3
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %22, align 8
  %131 = load %struct.firmware*, %struct.firmware** %16, align 8
  %132 = getelementptr inbounds %struct.firmware, %struct.firmware* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, -4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %23, align 8
  %136 = load %struct.firmware*, %struct.firmware** %16, align 8
  %137 = getelementptr inbounds %struct.firmware, %struct.firmware* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %24, align 8
  %140 = getelementptr inbounds [7 x i64], [7 x i64]* %21, i64 0, i64 0
  %141 = load i64, i64* %140, align 16
  %142 = call i64 @FW_PARAMS_PARAM_Y_G(i64 %141)
  store i64 %142, i64* %14, align 8
  %143 = getelementptr inbounds [7 x i64], [7 x i64]* %21, i64 0, i64 0
  %144 = load i64, i64* %143, align 16
  %145 = call i32 @FW_PARAMS_PARAM_Z_G(i64 %144)
  %146 = shl i32 %145, 16
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %15, align 8
  %148 = load %struct.adapter*, %struct.adapter** %4, align 8
  %149 = getelementptr inbounds %struct.adapter, %struct.adapter* %148, i32 0, i32 4
  %150 = call i32 @spin_lock(i32* %149)
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %23, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32*, i32** %24, align 8
  %157 = load i32, i32* @T4_MEMORY_WRITE, align 4
  %158 = call i32 @t4_memory_rw(%struct.adapter* %151, i32 0, i64 %152, i64 %153, i32 %155, i32* %156, i32 %157)
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %125
  %162 = load i64, i64* %22, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %193

164:                                              ; preds = %161
  %165 = load i32*, i32** %24, align 8
  %166 = load i64, i64* %23, align 8
  %167 = lshr i64 %166, 2
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = bitcast %union.anon* %25 to i32*
  store i32 %169, i32* %170, align 4
  %171 = load i64, i64* %22, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %26, align 4
  br label %173

173:                                              ; preds = %181, %164
  %174 = load i32, i32* %26, align 4
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = bitcast %union.anon* %25 to [4 x i8]*
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x i8], [4 x i8]* %177, i64 0, i64 %179
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %26, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %26, align 4
  br label %173

184:                                              ; preds = %173
  %185 = load %struct.adapter*, %struct.adapter** %4, align 8
  %186 = load i64, i64* %14, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %23, align 8
  %189 = add i64 %187, %188
  %190 = bitcast %union.anon* %25 to i32*
  %191 = load i32, i32* @T4_MEMORY_WRITE, align 4
  %192 = call i32 @t4_memory_rw(%struct.adapter* %185, i32 0, i64 %186, i64 %189, i32 4, i32* %190, i32 %191)
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %184, %161, %125
  %194 = load %struct.adapter*, %struct.adapter** %4, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 4
  %196 = call i32 @spin_unlock(i32* %195)
  br label %197

197:                                              ; preds = %193, %106
  br label %198

198:                                              ; preds = %197, %103
  %199 = load %struct.firmware*, %struct.firmware** %16, align 8
  %200 = call i32 @release_firmware(%struct.firmware* %199)
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %371

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %89
  store i64 0, i64* %12, align 8
  %206 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %207 = call i64 @FW_PARAMS_MNEM_V(i32 %206)
  %208 = load i32, i32* @FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD, align 4
  %209 = call i64 @FW_PARAMS_PARAM_X_V(i32 %208)
  %210 = or i64 %207, %209
  store i64 %210, i64* %11, align 8
  %211 = load %struct.adapter*, %struct.adapter** %4, align 8
  %212 = load %struct.adapter*, %struct.adapter** %4, align 8
  %213 = getelementptr inbounds %struct.adapter, %struct.adapter* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.adapter*, %struct.adapter** %4, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @t4_set_params(%struct.adapter* %211, i32 %214, i32 %217, i32 0, i32 1, i64* %11, i64* %12)
  store i32 %218, i32* %19, align 4
  %219 = load i32, i32* %19, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %205
  %222 = load %struct.adapter*, %struct.adapter** %4, align 8
  %223 = getelementptr inbounds %struct.adapter, %struct.adapter* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, ...) @dev_warn(i32 %224, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %226

226:                                              ; preds = %221, %205
  %227 = call i32 @memset(%struct.fw_caps_config_cmd* %13, i32 0, i32 32)
  %228 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %229 = call i32 @FW_CMD_OP_V(i32 %228)
  %230 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @FW_CMD_READ_F, align 4
  %233 = or i32 %231, %232
  %234 = call i8* @htonl(i32 %233)
  %235 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 1
  store i8* %234, i8** %235, align 8
  %236 = load i32, i32* @FW_CAPS_CONFIG_CMD_CFVALID_F, align 4
  %237 = load i64, i64* %14, align 8
  %238 = call i32 @FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(i64 %237)
  %239 = or i32 %236, %238
  %240 = load i64, i64* %15, align 8
  %241 = lshr i64 %240, 16
  %242 = call i32 @FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(i64 %241)
  %243 = or i32 %239, %242
  %244 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %13)
  %245 = or i32 %243, %244
  %246 = call i8* @htonl(i32 %245)
  %247 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 0
  store i8* %246, i8** %247, align 8
  %248 = load %struct.adapter*, %struct.adapter** %4, align 8
  %249 = load %struct.adapter*, %struct.adapter** %4, align 8
  %250 = getelementptr inbounds %struct.adapter, %struct.adapter* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @t4_wr_mbox(%struct.adapter* %248, i32 %251, %struct.fw_caps_config_cmd* %13, i32 32, %struct.fw_caps_config_cmd* %13)
  store i32 %252, i32* %19, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* @ENOENT, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %226
  %258 = call i32 @memset(%struct.fw_caps_config_cmd* %13, i32 0, i32 32)
  %259 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %260 = call i32 @FW_CMD_OP_V(i32 %259)
  %261 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @FW_CMD_READ_F, align 4
  %264 = or i32 %262, %263
  %265 = call i8* @htonl(i32 %264)
  %266 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 1
  store i8* %265, i8** %266, align 8
  %267 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %13)
  %268 = call i8* @htonl(i32 %267)
  %269 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 0
  store i8* %268, i8** %269, align 8
  %270 = load %struct.adapter*, %struct.adapter** %4, align 8
  %271 = load %struct.adapter*, %struct.adapter** %4, align 8
  %272 = getelementptr inbounds %struct.adapter, %struct.adapter* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @t4_wr_mbox(%struct.adapter* %270, i32 %273, %struct.fw_caps_config_cmd* %13, i32 32, %struct.fw_caps_config_cmd* %13)
  store i32 %274, i32* %19, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %275

275:                                              ; preds = %257, %226
  store i32 1, i32* %18, align 4
  %276 = load i32, i32* %19, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  br label %371

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @ntohl(i32 %281)
  store i64 %282, i64* %8, align 8
  %283 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @ntohl(i32 %284)
  store i64 %285, i64* %9, align 8
  %286 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @ntohl(i32 %287)
  store i64 %288, i64* %10, align 8
  %289 = load i64, i64* %9, align 8
  %290 = load i64, i64* %10, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %279
  %293 = load %struct.adapter*, %struct.adapter** %4, align 8
  %294 = getelementptr inbounds %struct.adapter, %struct.adapter* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i64, i64* %9, align 8
  %297 = load i64, i64* %10, align 8
  %298 = call i32 (i32, i8*, ...) @dev_warn(i32 %295, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i64 %296, i64 %297)
  br label %299

299:                                              ; preds = %292, %279
  %300 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %301 = call i32 @FW_CMD_OP_V(i32 %300)
  %302 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %305 = or i32 %303, %304
  %306 = call i8* @htonl(i32 %305)
  %307 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 1
  store i8* %306, i8** %307, align 8
  %308 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %13)
  %309 = call i8* @htonl(i32 %308)
  %310 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %13, i32 0, i32 0
  store i8* %309, i8** %310, align 8
  %311 = load %struct.adapter*, %struct.adapter** %4, align 8
  %312 = load %struct.adapter*, %struct.adapter** %4, align 8
  %313 = getelementptr inbounds %struct.adapter, %struct.adapter* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @t4_wr_mbox(%struct.adapter* %311, i32 %314, %struct.fw_caps_config_cmd* %13, i32 32, %struct.fw_caps_config_cmd* null)
  store i32 %315, i32* %19, align 4
  %316 = load i32, i32* %19, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %299
  br label %371

319:                                              ; preds = %299
  %320 = load %struct.adapter*, %struct.adapter** %4, align 8
  %321 = call i32 @adap_init0_tweaks(%struct.adapter* %320)
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %19, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  br label %371

325:                                              ; preds = %319
  %326 = load %struct.adapter*, %struct.adapter** %4, align 8
  %327 = call i32 @adap_config_hma(%struct.adapter* %326)
  store i32 %327, i32* %19, align 4
  %328 = load i32, i32* %19, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %325
  %331 = load %struct.adapter*, %struct.adapter** %4, align 8
  %332 = getelementptr inbounds %struct.adapter, %struct.adapter* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %19, align 4
  %335 = call i32 @dev_err(i32 %333, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %334)
  br label %336

336:                                              ; preds = %330, %325
  %337 = load %struct.adapter*, %struct.adapter** %4, align 8
  %338 = getelementptr inbounds %struct.adapter, %struct.adapter* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i64 @is_t6(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %336
  %344 = load %struct.adapter*, %struct.adapter** %4, align 8
  %345 = call i32 @setup_ppod_edram(%struct.adapter* %344)
  store i32 %345, i32* %19, align 4
  %346 = load i32, i32* %19, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.adapter*, %struct.adapter** %4, align 8
  %350 = getelementptr inbounds %struct.adapter, %struct.adapter* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = call i32 (i32, i8*, ...) @dev_info(i32 %351, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %353

353:                                              ; preds = %348, %343
  br label %354

354:                                              ; preds = %353, %336
  %355 = load %struct.adapter*, %struct.adapter** %4, align 8
  %356 = load %struct.adapter*, %struct.adapter** %4, align 8
  %357 = getelementptr inbounds %struct.adapter, %struct.adapter* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @t4_fw_initialize(%struct.adapter* %355, i32 %358)
  store i32 %359, i32* %19, align 4
  %360 = load i32, i32* %19, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  br label %371

363:                                              ; preds = %354
  %364 = load %struct.adapter*, %struct.adapter** %4, align 8
  %365 = getelementptr inbounds %struct.adapter, %struct.adapter* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i8*, i8** %17, align 8
  %368 = load i64, i64* %8, align 8
  %369 = load i64, i64* %10, align 8
  %370 = call i32 (i32, i8*, ...) @dev_info(i32 %366, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i64 0, i64 0), i8* %367, i64 %368, i64 %369)
  store i32 0, i32* %3, align 4
  br label %389

371:                                              ; preds = %362, %324, %318, %278, %203, %69, %55, %40
  %372 = load i32, i32* %18, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %387

374:                                              ; preds = %371
  %375 = load i32, i32* %19, align 4
  %376 = load i32, i32* @ENOENT, align 4
  %377 = sub nsw i32 0, %376
  %378 = icmp ne i32 %375, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load %struct.adapter*, %struct.adapter** %4, align 8
  %381 = getelementptr inbounds %struct.adapter, %struct.adapter* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i8*, i8** %17, align 8
  %384 = load i32, i32* %19, align 4
  %385 = sub nsw i32 0, %384
  %386 = call i32 (i32, i8*, ...) @dev_warn(i32 %382, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %383, i32 %385)
  br label %387

387:                                              ; preds = %379, %374, %371
  %388 = load i32, i32* %19, align 4
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %387, %363
  %390 = load i32, i32* %3, align 4
  ret i32 %390
}

declare dso_local i32 @t4_fw_reset(%struct.adapter*, i32, i32) #1

declare dso_local i64 @is_10gbt_device(i32) #1

declare dso_local i32 @adap_init0_phy(%struct.adapter*) #1

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i64 @t4_flash_cfg_addr(%struct.adapter*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i64 @FW_PARAMS_PARAM_Y_G(i64) #1

declare dso_local i32 @FW_PARAMS_PARAM_Z_G(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.fw_caps_config_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(i64) #1

declare dso_local i32 @FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(i64) #1

declare dso_local i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_caps_config_cmd*, i32, %struct.fw_caps_config_cmd*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @adap_init0_tweaks(%struct.adapter*) #1

declare dso_local i32 @adap_config_hma(%struct.adapter*) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i32 @setup_ppod_edram(%struct.adapter*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @t4_fw_initialize(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
