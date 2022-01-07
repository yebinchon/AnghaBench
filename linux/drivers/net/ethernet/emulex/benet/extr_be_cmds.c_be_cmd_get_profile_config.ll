; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_profile_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_resources = type { i32, i8* }
%struct.be_port_resources = type { i32, i32 }
%struct.be_cmd_resp_get_profile_config = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.be_cmd_req_get_profile_config = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.be_nic_res_desc = type { i64, i32 }
%struct.be_pcie_res_desc = type { i32 }
%struct.be_port_res_desc = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_profile_config* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@RESOURCE_MODIFIABLE = common dso_local global i64 0, align 8
@QUERY_MODIFIABLE_FIELDS_TYPE = common dso_local global i64 0, align 8
@MAX_NIC_FUNCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter* %0, %struct.be_resources* %1, %struct.be_port_resources* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_resources*, align 8
  %10 = alloca %struct.be_port_resources*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.be_cmd_resp_get_profile_config*, align 8
  %15 = alloca %struct.be_cmd_req_get_profile_config*, align 8
  %16 = alloca %struct.be_nic_res_desc*, align 8
  %17 = alloca %struct.be_pcie_res_desc*, align 8
  %18 = alloca %struct.be_port_res_desc*, align 8
  %19 = alloca %struct.be_nic_res_desc*, align 8
  %20 = alloca %struct.be_mcc_wrb, align 4
  %21 = alloca %struct.be_dma_mem, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store %struct.be_resources* %1, %struct.be_resources** %9, align 8
  store %struct.be_port_resources* %2, %struct.be_port_resources** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %29 = bitcast %struct.be_mcc_wrb* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = call i32 @memset(%struct.be_dma_mem* %21, i32 0, i32 16)
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 0
  store i32 32, i32* %31, align 8
  %32 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 1
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.be_cmd_resp_get_profile_config* @dma_alloc_coherent(i32* %35, i32 %37, i32* %38, i32 %39)
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  store %struct.be_cmd_resp_get_profile_config* %40, %struct.be_cmd_resp_get_profile_config** %41, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  %43 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %42, align 8
  %44 = icmp ne %struct.be_cmd_resp_get_profile_config* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %6
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %242

48:                                               ; preds = %6
  %49 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  %50 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %49, align 8
  %51 = bitcast %struct.be_cmd_resp_get_profile_config* %50 to %struct.be_cmd_req_get_profile_config*
  store %struct.be_cmd_req_get_profile_config* %51, %struct.be_cmd_req_get_profile_config** %15, align 8
  %52 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %15, align 8
  %53 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %52, i32 0, i32 3
  %54 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %55 = load i32, i32* @OPCODE_COMMON_GET_PROFILE_CONFIG, align 4
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %53, i32 %54, i32 %55, i32 %57, %struct.be_mcc_wrb* %20, %struct.be_dma_mem* %21)
  %59 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %60 = call i32 @lancer_chip(%struct.be_adapter* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %15, align 8
  %64 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %15, align 8
  %69 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %15, align 8
  %72 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @RESOURCE_MODIFIABLE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load i64, i64* @QUERY_MODIFIABLE_FIELDS_TYPE, align 8
  %79 = load %struct.be_cmd_req_get_profile_config*, %struct.be_cmd_req_get_profile_config** %15, align 8
  %80 = getelementptr inbounds %struct.be_cmd_req_get_profile_config, %struct.be_cmd_req_get_profile_config* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %81, %78
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %77, %66
  %84 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %85 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %84, %struct.be_mcc_wrb* %20)
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %224

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  %91 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %90, align 8
  store %struct.be_cmd_resp_get_profile_config* %91, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %92 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %93 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @le16_to_cpu(i32 %94)
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* %22, align 8
  %97 = load %struct.be_port_resources*, %struct.be_port_resources** %10, align 8
  %98 = icmp ne %struct.be_port_resources* %97, null
  br i1 %98, label %99, label %159

99:                                               ; preds = %89
  store i64 0, i64* %24, align 8
  %100 = load i32, i32* @MAX_NIC_FUNCS, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %26, align 8
  %103 = alloca i64, i64 %101, align 16
  store i64 %101, i64* %27, align 8
  %104 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %105 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %22, align 8
  %108 = call i64 @be_get_nic_pf_num_list(i32 %106, i64 %107, i64* %103)
  store i64 %108, i64* %24, align 8
  store i64 0, i64* %25, align 8
  br label %109

109:                                              ; preds = %153, %99
  %110 = load i64, i64* %25, align 8
  %111 = load i64, i64* %24, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %109
  %114 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %115 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i64, i64* %25, align 8
  %119 = getelementptr inbounds i64, i64* %103, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call %struct.be_nic_res_desc* @be_get_func_nic_desc(i32 %116, i64 %117, i64 %120)
  store %struct.be_nic_res_desc* %121, %struct.be_nic_res_desc** %19, align 8
  %122 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %19, align 8
  %123 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %126 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %113
  %130 = load %struct.be_port_resources*, %struct.be_port_resources** %10, align 8
  %131 = getelementptr inbounds %struct.be_port_resources, %struct.be_port_resources* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %135 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %25, align 8
  %139 = getelementptr inbounds i64, i64* %103, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call %struct.be_pcie_res_desc* @be_get_pcie_desc(i32 %136, i64 %137, i64 %140)
  store %struct.be_pcie_res_desc* %141, %struct.be_pcie_res_desc** %17, align 8
  %142 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %17, align 8
  %143 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @le16_to_cpu(i32 %144)
  %146 = load %struct.be_port_resources*, %struct.be_port_resources** %10, align 8
  %147 = getelementptr inbounds %struct.be_port_resources, %struct.be_port_resources* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr i8, i8* %145, i64 %149
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %147, align 4
  br label %152

152:                                              ; preds = %129, %113
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %25, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %25, align 8
  br label %109

156:                                              ; preds = %109
  store i32 2, i32* %28, align 4
  %157 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %28, align 4
  switch i32 %158, label %244 [
    i32 2, label %224
  ]

159:                                              ; preds = %89
  %160 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %161 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %22, align 8
  %164 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %165 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.be_pcie_res_desc* @be_get_pcie_desc(i32 %162, i64 %163, i64 %166)
  store %struct.be_pcie_res_desc* %167, %struct.be_pcie_res_desc** %17, align 8
  %168 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %17, align 8
  %169 = icmp ne %struct.be_pcie_res_desc* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %159
  %171 = load %struct.be_pcie_res_desc*, %struct.be_pcie_res_desc** %17, align 8
  %172 = getelementptr inbounds %struct.be_pcie_res_desc, %struct.be_pcie_res_desc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @le16_to_cpu(i32 %173)
  %175 = load %struct.be_resources*, %struct.be_resources** %9, align 8
  %176 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %170, %159
  %178 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %179 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %22, align 8
  %182 = call %struct.be_port_res_desc* @be_get_port_desc(i32 %180, i64 %181)
  store %struct.be_port_res_desc* %182, %struct.be_port_res_desc** %18, align 8
  %183 = load %struct.be_port_res_desc*, %struct.be_port_res_desc** %18, align 8
  %184 = icmp ne %struct.be_port_res_desc* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load %struct.be_port_res_desc*, %struct.be_port_res_desc** %18, align 8
  %187 = getelementptr inbounds %struct.be_port_res_desc, %struct.be_port_res_desc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %190 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %185, %177
  %192 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %193 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* %22, align 8
  %196 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %197 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call %struct.be_nic_res_desc* @be_get_func_nic_desc(i32 %194, i64 %195, i64 %198)
  store %struct.be_nic_res_desc* %199, %struct.be_nic_res_desc** %19, align 8
  %200 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %19, align 8
  %201 = icmp ne %struct.be_nic_res_desc* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = load %struct.be_resources*, %struct.be_resources** %9, align 8
  %204 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %19, align 8
  %205 = call i32 @be_copy_nic_desc(%struct.be_resources* %203, %struct.be_nic_res_desc* %204)
  br label %206

206:                                              ; preds = %202, %191
  %207 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %14, align 8
  %208 = getelementptr inbounds %struct.be_cmd_resp_get_profile_config, %struct.be_cmd_resp_get_profile_config* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i64, i64* %22, align 8
  %211 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %212 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call %struct.be_nic_res_desc* @be_get_vft_desc(i32 %209, i64 %210, i64 %213)
  store %struct.be_nic_res_desc* %214, %struct.be_nic_res_desc** %16, align 8
  %215 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %16, align 8
  %216 = icmp ne %struct.be_nic_res_desc* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %206
  %218 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %16, align 8
  %219 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.be_resources*, %struct.be_resources** %9, align 8
  %222 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %217, %206
  br label %224

224:                                              ; preds = %223, %156, %88
  %225 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  %226 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %225, align 8
  %227 = icmp ne %struct.be_cmd_resp_get_profile_config* %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %224
  %229 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %230 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %229, i32 0, i32 2
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 2
  %236 = load %struct.be_cmd_resp_get_profile_config*, %struct.be_cmd_resp_get_profile_config** %235, align 8
  %237 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %21, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @dma_free_coherent(i32* %232, i32 %234, %struct.be_cmd_resp_get_profile_config* %236, i32 %238)
  br label %240

240:                                              ; preds = %228, %224
  %241 = load i32, i32* %23, align 4
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %240, %45
  %243 = load i32, i32* %7, align 4
  ret i32 %243

244:                                              ; preds = %156
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #2

declare dso_local %struct.be_cmd_resp_get_profile_config* @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #2

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

declare dso_local i8* @le16_to_cpu(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @be_get_nic_pf_num_list(i32, i64, i64*) #2

declare dso_local %struct.be_nic_res_desc* @be_get_func_nic_desc(i32, i64, i64) #2

declare dso_local %struct.be_pcie_res_desc* @be_get_pcie_desc(i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local %struct.be_port_res_desc* @be_get_port_desc(i32, i64) #2

declare dso_local i32 @be_copy_nic_desc(%struct.be_resources*, %struct.be_nic_res_desc*) #2

declare dso_local %struct.be_nic_res_desc* @be_get_vft_desc(i32, i64, i64) #2

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_get_profile_config*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
