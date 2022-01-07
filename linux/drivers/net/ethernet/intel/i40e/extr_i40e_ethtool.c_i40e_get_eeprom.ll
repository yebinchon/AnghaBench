; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_5__*, i32, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_nvm_access = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"NVMUpdate read failed err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d\0A\00", align 1
@I40E_NVM_MOD_PNT_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Failed Acquiring NVM resource for read err=%d status=0x%x\0A\00", align 1
@I40E_AQ_RC_EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"read NVM failed, invalid offset 0x%x\0A\00", align 1
@I40E_AQ_RC_EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"read NVM failed, access, offset 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"read NVM failed offset %d err=%d status=0x%x\0A\00", align 1
@I40E_NVM_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @i40e_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.i40e_nvm_access*, align 8
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.i40e_netdev_priv* %22, %struct.i40e_netdev_priv** %8, align 8
  %23 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %26, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 2
  store %struct.i40e_hw* %28, %struct.i40e_hw** %9, align 8
  %29 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %30 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %32, align 8
  store %struct.i40e_pf* %33, %struct.i40e_pf** %10, align 8
  store i32 0, i32* %11, align 4
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %287

41:                                               ; preds = %3
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %46 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %41
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %62 = bitcast %struct.ethtool_eeprom* %61 to %struct.i40e_nvm_access*
  store %struct.i40e_nvm_access* %62, %struct.i40e_nvm_access** %19, align 8
  store i32 0, i32* %20, align 4
  %63 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %68 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %20, align 4
  br label %97

74:                                               ; preds = %60
  %75 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @test_bit(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @test_bit(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %20, align 4
  br label %96

91:                                               ; preds = %81
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %93 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %19, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @i40e_nvmupd_command(%struct.i40e_hw* %92, %struct.i40e_nvm_access* %93, i32* %94, i32* %20)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %100, %97
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %103
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %112 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %19, align 8
  %122 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40E_NVM_MOD_PNT_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %19, align 8
  %127 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %19, align 8
  %130 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %114, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %119, i32 %120, i32 %125, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %110, %103, %100
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %4, align 4
  br label %287

135:                                              ; preds = %54, %41
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %137 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %140 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 16
  %143 = or i32 %138, %142
  %144 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %145 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %147 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i32* @kzalloc(i32 %148, i32 %149)
  store i32* %150, i32** %14, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %135
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %287

156:                                              ; preds = %135
  %157 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %158 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %159 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %164 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %169 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %166, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %171)
  br label %283

173:                                              ; preds = %156
  %174 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %175 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %176, 4096
  store i32 %177, i32* %16, align 4
  %178 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %179 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = srem i32 %180, 4096
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 0
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %16, align 4
  store i32 4096, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %271, %173
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %274

191:                                              ; preds = %187
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %198 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %15, align 4
  %201 = mul nsw i32 4096, %200
  %202 = sub nsw i32 %199, %201
  store i32 %202, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %203

203:                                              ; preds = %196, %191
  %204 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %205 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %15, align 4
  %208 = mul nsw i32 4096, %207
  %209 = add nsw i32 %206, %208
  store i32 %209, i32* %13, align 4
  %210 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** %14, align 8
  %214 = load i32, i32* %15, align 4
  %215 = mul nsw i32 4096, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %17, align 4
  %219 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %210, i32 0, i32 %211, i32 %212, i32* %217, i32 %218, i32* null)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %203
  %223 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %224 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @I40E_AQ_RC_EPERM, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %222
  %230 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %231 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %230, i32 0, i32 0
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %13, align 4
  %235 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %233, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  br label %274

236:                                              ; preds = %222, %203
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %236
  %240 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %241 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @I40E_AQ_RC_EACCES, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %239
  %247 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %248 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %247, i32 0, i32 0
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32, i32* %13, align 4
  %252 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %251)
  br label %274

253:                                              ; preds = %239, %236
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %258 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %264 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %260, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %261, i32 %262, i32 %266)
  br label %274

268:                                              ; preds = %253
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %187

274:                                              ; preds = %256, %246, %229, %187
  %275 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %276 = call i32 @i40e_release_nvm(%struct.i40e_hw* %275)
  %277 = load i32*, i32** %7, align 8
  %278 = load i32*, i32** %14, align 8
  %279 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %280 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @memcpy(i32* %277, i32* %278, i32 %281)
  br label %283

283:                                              ; preds = %274, %162
  %284 = load i32*, i32** %14, align 8
  %285 = call i32 @kfree(i32* %284)
  %286 = load i32, i32* %11, align 4
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %283, %153, %133, %38
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_nvmupd_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
