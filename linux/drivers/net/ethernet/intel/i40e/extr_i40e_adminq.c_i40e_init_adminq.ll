; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_init_adminq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_init_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@I40E_ERR_CONFIG = common dso_local global i64 0, align 8
@I40E_ASQ_CMD_TIMEOUT = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_TIMEOUT = common dso_local global i64 0, align 8
@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_SR_NVM_DEV_STARTER_VERSION = common dso_local global i32 0, align 4
@I40E_SR_NVM_EETRACK_LO = common dso_local global i32 0, align 4
@I40E_SR_NVM_EETRACK_HI = common dso_local global i32 0, align 4
@I40E_SR_BOOT_CONFIG_PTR = common dso_local global i32 0, align 4
@I40E_NVM_OEM_VER_OFF = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_FW_API_VERSION_MAJOR = common dso_local global i32 0, align 4
@I40E_MINOR_VER_GET_LINK_INFO_XL710 = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_HW_FLAG_FW_LLDP_STOPPABLE = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722 = common dso_local global i32 0, align 4
@I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK = common dso_local global i32 0, align 4
@I40E_HW_FLAG_802_1AD_CAPABLE = common dso_local global i32 0, align 4
@I40E_HW_FLAG_FW_LLDP_PERSISTENT = common dso_local global i32 0, align 4
@I40E_HW_FLAG_DROP_MODE = common dso_local global i32 0, align 4
@I40E_ERR_FIRMWARE_API_VERSION = common dso_local global i64 0, align 8
@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_init_adminq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21, %15, %1
  %34 = load i64, i64* @I40E_ERR_CONFIG, align 8
  store i64 %34, i64* %8, align 8
  br label %291

35:                                               ; preds = %27
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = call i32 @i40e_adminq_init_regs(%struct.i40e_hw* %36)
  %38 = load i32, i32* @I40E_ASQ_CMD_TIMEOUT, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %43 = call i64 @i40e_init_asq(%struct.i40e_hw* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %290

47:                                               ; preds = %35
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %49 = call i64 @i40e_init_arq(%struct.i40e_hw* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %287

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %82, %53
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %57 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 8
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = call i64 @i40e_aq_get_firmware_version(%struct.i40e_hw* %55, i32* %58, i32* %61, i32* %64, i32* %67, i32* %70, i32* null)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @I40E_ERR_ADMIN_QUEUE_TIMEOUT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %85

76:                                               ; preds = %54
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = call i32 @msleep(i32 100)
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %81 = call i32 @i40e_resume_aq(%struct.i40e_hw* %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %54, label %85

85:                                               ; preds = %82, %75
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @I40E_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %284

90:                                               ; preds = %85
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %92 = load i32, i32* @I40E_SR_NVM_DEV_STARTER_VERSION, align 4
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %94 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %91, i32 %92, i32* %95)
  %97 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %98 = load i32, i32* @I40E_SR_NVM_EETRACK_LO, align 4
  %99 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %97, i32 %98, i32* %6)
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %101 = load i32, i32* @I40E_SR_NVM_EETRACK_HI, align 4
  %102 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %100, i32 %101, i32* %7)
  %103 = load i32, i32* %7, align 4
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %108 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %111 = load i32, i32* @I40E_SR_BOOT_CONFIG_PTR, align 4
  %112 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %110, i32 %111, i32* %3)
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @I40E_NVM_OEM_VER_OFF, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %113, i32 %116, i32* %4)
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @I40E_NVM_OEM_VER_OFF, align 4
  %121 = add nsw i32 %120, 1
  %122 = add nsw i32 %119, %121
  %123 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %118, i32 %122, i32* %5)
  %124 = load i32, i32* %4, align 4
  %125 = shl i32 %124, 16
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %129 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %132 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @I40E_MAC_XL710, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %90
  %138 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %139 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %137
  %145 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %146 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @I40E_MINOR_VER_GET_LINK_INFO_XL710, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %144
  %152 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %153 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %154 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* @I40E_HW_FLAG_FW_LLDP_STOPPABLE, align 4
  %158 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %159 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %151, %144, %137, %90
  %163 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %164 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @I40E_MAC_X722, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %162
  %170 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %171 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %178 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load i32, i32* @I40E_HW_FLAG_FW_LLDP_STOPPABLE, align 4
  %185 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %186 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %176, %169, %162
  %190 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %191 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %207, label %195

195:                                              ; preds = %189
  %196 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %197 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %203 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %205, 5
  br i1 %206, label %207, label %213

207:                                              ; preds = %201, %189
  %208 = load i32, i32* @I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK, align 4
  %209 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %210 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %201, %195
  %214 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %215 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %231, label %219

219:                                              ; preds = %213
  %220 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %221 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %237

225:                                              ; preds = %219
  %226 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %227 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %229, 7
  br i1 %230, label %231, label %237

231:                                              ; preds = %225, %213
  %232 = load i32, i32* @I40E_HW_FLAG_802_1AD_CAPABLE, align 4
  %233 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %234 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %225, %219
  %238 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %239 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %255, label %243

243:                                              ; preds = %237
  %244 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %245 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %266

249:                                              ; preds = %243
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %251 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = icmp sge i32 %253, 8
  br i1 %254, label %255, label %266

255:                                              ; preds = %249, %237
  %256 = load i32, i32* @I40E_HW_FLAG_FW_LLDP_PERSISTENT, align 4
  %257 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %258 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* @I40E_HW_FLAG_DROP_MODE, align 4
  %262 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %263 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %255, %249, %243
  %267 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %268 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = load i64, i64* @I40E_ERR_FIRMWARE_API_VERSION, align 8
  store i64 %274, i64* %8, align 8
  br label %284

275:                                              ; preds = %266
  %276 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %277 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %278 = call i32 @i40e_aq_release_resource(%struct.i40e_hw* %276, i32 %277, i32 0, i32* null)
  %279 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %280 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %279, i32 0, i32 0
  store i32 0, i32* %280, align 8
  %281 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %282 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %283 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  store i64 0, i64* %8, align 8
  br label %291

284:                                              ; preds = %273, %89
  %285 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %286 = call i32 @i40e_shutdown_arq(%struct.i40e_hw* %285)
  br label %287

287:                                              ; preds = %284, %52
  %288 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %289 = call i32 @i40e_shutdown_asq(%struct.i40e_hw* %288)
  br label %290

290:                                              ; preds = %287, %46
  br label %291

291:                                              ; preds = %290, %275, %33
  %292 = load i64, i64* %8, align 8
  ret i64 %292
}

declare dso_local i32 @i40e_adminq_init_regs(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_init_asq(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_init_arq(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_aq_get_firmware_version(%struct.i40e_hw*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i40e_resume_aq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_aq_release_resource(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @i40e_shutdown_arq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_asq(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
