; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_get_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_get_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.iwl_nvm_data = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_fw = type { i32, i32, i32 }
%struct.iwl_nvm_get_info = type { i32 }
%struct.iwl_host_cmd = type { i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.iwl_nvm_get_info_rsp = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.iwl_nvm_get_info_rsp_v3 = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@REGULATORY_AND_NVM_GROUP = common dso_local global i32 0, align 4
@NVM_GET_INFO = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@IWL_UCODE_TLV_CAPA_LAR_SUPPORT = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_REGULATORY_NVM_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid payload len in NVM response from FW %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVM_GENERAL_FLAGS_EMPTY_OTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"OTP is empty\0A\00", align 1
@channels = common dso_local global i32 0, align 4
@IWL_NUM_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"no valid mac address was found\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"base HW address: %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Firmware declares no reserved mac addresses. OTP is empty: %d\0A\00", align 1
@NVM_MAC_SKU_FLAGS_802_11AC_ENABLED = common dso_local global i32 0, align 4
@NVM_MAC_SKU_FLAGS_802_11N_ENABLED = common dso_local global i32 0, align 4
@NVM_MAC_SKU_FLAGS_802_11AX_ENABLED = common dso_local global i32 0, align 4
@NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED = common dso_local global i32 0, align 4
@NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED = common dso_local global i32 0, align 4
@NVM_MAC_SKU_FLAGS_MIMO_DISABLED = common dso_local global i32 0, align 4
@IWL_NVM_SBANDS_FLAGS_LAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwl_nvm_data* @iwl_get_nvm(%struct.iwl_trans* %0, %struct.iwl_fw* %1) #0 {
  %3 = alloca %struct.iwl_nvm_data*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_fw*, align 8
  %6 = alloca %struct.iwl_nvm_get_info, align 4
  %7 = alloca %struct.iwl_nvm_data*, align 8
  %8 = alloca %struct.iwl_host_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_nvm_get_info_rsp*, align 8
  %15 = alloca %struct.iwl_nvm_get_info_rsp_v3*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_fw* %1, %struct.iwl_fw** %5, align 8
  %19 = bitcast %struct.iwl_nvm_get_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 0
  %21 = load i32, i32* @CMD_WANT_SKB, align 4
  %22 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %24, align 8
  %25 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 2
  %26 = load i32, i32* @REGULATORY_AND_NVM_GROUP, align 4
  %27 = load i32, i32* @NVM_GET_INFO, align 4
  %28 = call i32 @WIDE_ID(i32 %26, i32 %27)
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 3
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 4
  %31 = ptrtoint %struct.iwl_nvm_get_info* %6 to i32
  store i32 %31, i32* %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.iwl_fw*, %struct.iwl_fw** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %35, i32 0, i32 2
  %37 = load i32, i32* @IWL_UCODE_TLV_CAPA_LAR_SUPPORT, align 4
  %38 = call i64 @fw_has_capa(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi i1 [ false, %2 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %43 = load %struct.iwl_fw*, %struct.iwl_fw** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %43, i32 0, i32 2
  %45 = load i32, i32* @IWL_UCODE_TLV_API_REGULATORY_NVM_INFO, align 4
  %46 = call i32 @fw_has_api(i32* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i64 48, i64 8
  store i64 %50, i64* %17, align 8
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %52 = call i32 @iwl_trans_send_cmd(%struct.iwl_trans* %51, %struct.iwl_host_cmd* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.iwl_nvm_data* @ERR_PTR(i32 %56)
  store %struct.iwl_nvm_data* %57, %struct.iwl_nvm_data** %3, align 8
  br label %293

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = call i64 @iwl_rx_packet_payload_len(%struct.TYPE_14__* %60)
  %62 = load i64, i64* %17, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = call i64 @iwl_rx_packet_payload_len(%struct.TYPE_14__* %66)
  %68 = call i64 @WARN(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %289

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast i8* %78 to %struct.iwl_nvm_get_info_rsp*
  store %struct.iwl_nvm_get_info_rsp* %79, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %80 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %81 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load i32, i32* @NVM_GENERAL_FLAGS_EMPTY_OTP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %73
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %95 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_INFO(%struct.iwl_trans* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %73
  %97 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %98 = load i32, i32* @channels, align 4
  %99 = load i32, i32* @IWL_NUM_CHANNELS, align 4
  %100 = call i32 @struct_size(%struct.iwl_nvm_data* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.iwl_nvm_data* @kzalloc(i32 %100, i32 %101)
  store %struct.iwl_nvm_data* %102, %struct.iwl_nvm_data** %7, align 8
  %103 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %104 = icmp ne %struct.iwl_nvm_data* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %289

108:                                              ; preds = %96
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %110 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %111 = call i32 @iwl_set_hw_address_from_csr(%struct.iwl_trans* %109, %struct.iwl_nvm_data* %110)
  %112 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %113 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @is_valid_ether_addr(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %119 = call i32 @IWL_ERR(%struct.iwl_trans* %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %286

122:                                              ; preds = %108
  %123 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %124 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %125 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_INFO(%struct.iwl_trans* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %129 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %134 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 4
  %135 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %136 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %140 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %142 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %122
  %146 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @IWL_WARN(%struct.iwl_trans* %146, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %122
  %150 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %151 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @le32_to_cpu(i32 %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @NVM_MAC_SKU_FLAGS_802_11AC_ENABLED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %163 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @NVM_MAC_SKU_FLAGS_802_11N_ENABLED, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %172 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @NVM_MAC_SKU_FLAGS_802_11AX_ENABLED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %181 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @NVM_MAC_SKU_FLAGS_BAND_2_4_ENABLED, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %190 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @NVM_MAC_SKU_FLAGS_BAND_5_2_ENABLED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %199 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @NVM_MAC_SKU_FLAGS_MIMO_DISABLED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %208 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 4
  %209 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %210 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le32_to_cpu(i32 %212)
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %218 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 8
  %219 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %220 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @le32_to_cpu(i32 %222)
  %224 = sext i32 %223 to i64
  %225 = inttoptr i64 %224 to i8*
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %228 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %227, i32 0, i32 8
  store i32 %226, i32* %228, align 4
  %229 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %230 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @le32_to_cpu(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %149
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %240 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %239, i32 0, i32 9
  store i32 1, i32* %240, align 8
  %241 = load i32, i32* @IWL_NVM_SBANDS_FLAGS_LAR, align 4
  %242 = load i32, i32* %13, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %238, %235, %149
  %245 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %246 = bitcast %struct.iwl_nvm_get_info_rsp* %245 to i8*
  %247 = bitcast i8* %246 to %struct.iwl_nvm_get_info_rsp_v3*
  store %struct.iwl_nvm_get_info_rsp_v3* %247, %struct.iwl_nvm_get_info_rsp_v3** %15, align 8
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load %struct.iwl_nvm_get_info_rsp*, %struct.iwl_nvm_get_info_rsp** %14, align 8
  %252 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp, %struct.iwl_nvm_get_info_rsp* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i8*
  br label %262

256:                                              ; preds = %244
  %257 = load %struct.iwl_nvm_get_info_rsp_v3*, %struct.iwl_nvm_get_info_rsp_v3** %15, align 8
  %258 = getelementptr inbounds %struct.iwl_nvm_get_info_rsp_v3, %struct.iwl_nvm_get_info_rsp_v3* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  br label %262

262:                                              ; preds = %256, %250
  %263 = phi i8* [ %255, %250 ], [ %261, %256 ]
  store i8* %263, i8** %18, align 8
  %264 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %265 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %266 = load i8*, i8** %18, align 8
  %267 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %268 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.iwl_fw*, %struct.iwl_fw** %5, align 8
  %271 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %269, %272
  %274 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %275 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.iwl_fw*, %struct.iwl_fw** %5, align 8
  %278 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %276, %279
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @iwl_init_sbands(%struct.iwl_trans* %264, %struct.iwl_nvm_data* %265, i8* %266, i32 %273, i32 %280, i32 %281, i32 %282)
  %284 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %8)
  %285 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  store %struct.iwl_nvm_data* %285, %struct.iwl_nvm_data** %3, align 8
  br label %293

286:                                              ; preds = %117
  %287 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %288 = call i32 @kfree(%struct.iwl_nvm_data* %287)
  br label %289

289:                                              ; preds = %286, %105, %70
  %290 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %8)
  %291 = load i32, i32* %9, align 4
  %292 = call %struct.iwl_nvm_data* @ERR_PTR(i32 %291)
  store %struct.iwl_nvm_data* %292, %struct.iwl_nvm_data** %3, align 8
  br label %293

293:                                              ; preds = %289, %262, %55
  %294 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  ret %struct.iwl_nvm_data* %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WIDE_ID(i32, i32) #2

declare dso_local i64 @fw_has_capa(i32*, i32) #2

declare dso_local i32 @fw_has_api(i32*, i32) #2

declare dso_local i32 @iwl_trans_send_cmd(%struct.iwl_trans*, %struct.iwl_host_cmd*) #2

declare dso_local %struct.iwl_nvm_data* @ERR_PTR(i32) #2

declare dso_local i64 @WARN(i32, i8*, i64) #2

declare dso_local i64 @iwl_rx_packet_payload_len(%struct.TYPE_14__*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @IWL_INFO(%struct.iwl_trans*, i8*, ...) #2

declare dso_local %struct.iwl_nvm_data* @kzalloc(i32, i32) #2

declare dso_local i32 @struct_size(%struct.iwl_nvm_data*, i32, i32) #2

declare dso_local i32 @iwl_set_hw_address_from_csr(%struct.iwl_trans*, %struct.iwl_nvm_data*) #2

declare dso_local i32 @is_valid_ether_addr(i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i32) #2

declare dso_local i32 @iwl_init_sbands(%struct.iwl_trans*, %struct.iwl_nvm_data*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #2

declare dso_local i32 @kfree(%struct.iwl_nvm_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
