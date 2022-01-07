; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_filter_ucast_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_filter_ucast_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_filter_ucast = type { i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.vport_filter_update_ramrod_data = type { %struct.eth_filter_cmd*, %struct.TYPE_4__ }
%struct.eth_filter_cmd = type { i64, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vport_filter_update_ramrod_data }
%struct.qed_spq_comp_cb = type { i32 }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@ETH_RAMROD_FILTERS_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ETH_FILTER_TYPE_MAC = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_VLAN = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_MAC = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_VLAN = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_MAC_VNI_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_VNI = common dso_local global i64 0, align 8
@ETH_FILTER_ACTION_REMOVE = common dso_local global i32 0, align 4
@ETH_FILTER_ACTION_ADD = common dso_local global i8* null, align 8
@ETH_FILTER_ACTION_REMOVE_ALL = common dso_local global i32 0, align 4
@MAX_ETH_FILTER_ACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d is not supported yet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_FILTER_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_filter_ucast*, %struct.vport_filter_update_ramrod_data**, %struct.qed_spq_entry**, i32, %struct.qed_spq_comp_cb*)* @qed_filter_ucast_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_filter_ucast_common(%struct.qed_hwfn* %0, i32 %1, %struct.qed_filter_ucast* %2, %struct.vport_filter_update_ramrod_data** %3, %struct.qed_spq_entry** %4, i32 %5, %struct.qed_spq_comp_cb* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_filter_ucast*, align 8
  %12 = alloca %struct.vport_filter_update_ramrod_data**, align 8
  %13 = alloca %struct.qed_spq_entry**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qed_spq_comp_cb*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.vport_filter_update_ramrod_data*, align 8
  %19 = alloca %struct.eth_filter_cmd*, align 8
  %20 = alloca %struct.eth_filter_cmd*, align 8
  %21 = alloca %struct.qed_sp_init_data, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.qed_filter_ucast* %2, %struct.qed_filter_ucast** %11, align 8
  store %struct.vport_filter_update_ramrod_data** %3, %struct.vport_filter_update_ramrod_data*** %12, align 8
  store %struct.qed_spq_entry** %4, %struct.qed_spq_entry*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.qed_spq_comp_cb* %6, %struct.qed_spq_comp_cb** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %25 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %26 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @qed_fw_vport(%struct.qed_hwfn* %24, i32 %27, i8** %17)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %23, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %23, align 4
  store i32 %32, i32* %8, align 4
  br label %359

33:                                               ; preds = %7
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %35 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %36 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @qed_fw_vport(%struct.qed_hwfn* %34, i32 %37, i8** %16)
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %23, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %23, align 4
  store i32 %42, i32* %8, align 4
  br label %359

43:                                               ; preds = %33
  %44 = call i32 @memset(%struct.qed_sp_init_data* %21, i32 0, i32 24)
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %46 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %45)
  %47 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %21, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %21, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %21, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %15, align 8
  %53 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %21, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %52, %struct.qed_spq_comp_cb** %53, align 8
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %55 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %13, align 8
  %56 = load i32, i32* @ETH_RAMROD_FILTERS_UPDATE, align 4
  %57 = load i32, i32* @PROTOCOLID_ETH, align 4
  %58 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %54, %struct.qed_spq_entry** %55, i32 %56, i32 %57, %struct.qed_sp_init_data* %21)
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %23, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* %23, align 4
  store i32 %62, i32* %8, align 4
  br label %359

63:                                               ; preds = %43
  %64 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %13, align 8
  %65 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %64, align 8
  %66 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.vport_filter_update_ramrod_data**, %struct.vport_filter_update_ramrod_data*** %12, align 8
  store %struct.vport_filter_update_ramrod_data* %67, %struct.vport_filter_update_ramrod_data** %68, align 8
  %69 = load %struct.vport_filter_update_ramrod_data**, %struct.vport_filter_update_ramrod_data*** %12, align 8
  %70 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %69, align 8
  store %struct.vport_filter_update_ramrod_data* %70, %struct.vport_filter_update_ramrod_data** %18, align 8
  %71 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %72 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %78 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %81 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %87 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %90 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %96 [
    i32 130, label %92
    i32 131, label %92
  ]

92:                                               ; preds = %63, %63
  %93 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %94 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i32 2, i32* %95, align 8
  br label %100

96:                                               ; preds = %63
  %97 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %98 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %102 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %101, i32 0, i32 0
  %103 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %102, align 8
  %104 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %103, i64 0
  store %struct.eth_filter_cmd* %104, %struct.eth_filter_cmd** %19, align 8
  %105 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %106 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %105, i32 0, i32 0
  %107 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %106, align 8
  %108 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %107, i64 1
  store %struct.eth_filter_cmd* %108, %struct.eth_filter_cmd** %20, align 8
  %109 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %110 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %148 [
    i32 134, label %112
    i32 129, label %116
    i32 133, label %120
    i32 138, label %124
    i32 135, label %128
    i32 136, label %132
    i32 137, label %136
    i32 132, label %140
    i32 128, label %144
  ]

112:                                              ; preds = %100
  %113 = load i64, i64* @ETH_FILTER_TYPE_MAC, align 8
  %114 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %115 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %148

116:                                              ; preds = %100
  %117 = load i64, i64* @ETH_FILTER_TYPE_VLAN, align 8
  %118 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %119 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %148

120:                                              ; preds = %100
  %121 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %122 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %123 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %148

124:                                              ; preds = %100
  %125 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC, align 8
  %126 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %127 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %148

128:                                              ; preds = %100
  %129 = load i64, i64* @ETH_FILTER_TYPE_INNER_VLAN, align 8
  %130 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %131 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %148

132:                                              ; preds = %100
  %133 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %134 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %135 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %148

136:                                              ; preds = %100
  %137 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %138 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %139 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %148

140:                                              ; preds = %100
  %141 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %142 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %143 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %148

144:                                              ; preds = %100
  %145 = load i64, i64* @ETH_FILTER_TYPE_VNI, align 8
  %146 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %147 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %100, %144, %140, %136, %132, %128, %124, %120, %116, %112
  %149 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %150 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ETH_FILTER_TYPE_MAC, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %184, label %154

154:                                              ; preds = %148
  %155 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %156 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %184, label %160

160:                                              ; preds = %154
  %161 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %162 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %184, label %166

166:                                              ; preds = %160
  %167 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %168 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %166
  %173 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %174 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %180 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %178, %172, %166, %160, %154, %148
  %185 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %186 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %185, i32 0, i32 7
  %187 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %188 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %187, i32 0, i32 6
  %189 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %190 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %189, i32 0, i32 5
  %191 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %192 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8**
  %195 = call i32 @qed_set_fw_mac_addr(i32* %186, i32* %188, i32* %190, i8** %194)
  br label %196

196:                                              ; preds = %184, %178
  %197 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %198 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ETH_FILTER_TYPE_VLAN, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %220, label %202

202:                                              ; preds = %196
  %203 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %204 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %210 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ETH_FILTER_TYPE_INNER_VLAN, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %216 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %214, %208, %202, %196
  %221 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %222 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @cpu_to_le16(i32 %223)
  %225 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %226 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %220, %214
  %228 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %229 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %245, label %233

233:                                              ; preds = %227
  %234 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %235 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %233
  %240 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %241 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ETH_FILTER_TYPE_VNI, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %239, %233, %227
  %246 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %247 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @cpu_to_le32(i32 %248)
  %250 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %251 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %245, %239
  %253 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %254 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 131
  br i1 %256, label %257, label %301

257:                                              ; preds = %252
  %258 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %259 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %262 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %261, i32 0, i32 0
  store i64 %260, i64* %262, align 8
  %263 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %264 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %267 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 8
  %268 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %269 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %272 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 4
  %273 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %274 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %277 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %276, i32 0, i32 5
  store i32 %275, i32* %277, align 8
  %278 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %279 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %282 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 4
  %283 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %284 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %287 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* @ETH_FILTER_ACTION_REMOVE, align 4
  %289 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %290 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 8
  %291 = load i8*, i8** %17, align 8
  %292 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %293 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  %294 = load i8*, i8** @ETH_FILTER_ACTION_ADD, align 8
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %297 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load i8*, i8** %16, align 8
  %299 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %300 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %299, i32 0, i32 2
  store i8* %298, i8** %300, align 8
  br label %358

301:                                              ; preds = %252
  %302 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %303 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 130
  br i1 %305, label %306, label %320

306:                                              ; preds = %301
  %307 = load i8*, i8** %16, align 8
  %308 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %309 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %308, i32 0, i32 2
  store i8* %307, i8** %309, align 8
  %310 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %311 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %312 = call i32 @memcpy(%struct.eth_filter_cmd* %310, %struct.eth_filter_cmd* %311, i32 48)
  %313 = load i32, i32* @ETH_FILTER_ACTION_REMOVE_ALL, align 4
  %314 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %315 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 8
  %316 = load i8*, i8** @ETH_FILTER_ACTION_ADD, align 8
  %317 = ptrtoint i8* %316 to i32
  %318 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %319 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  br label %357

320:                                              ; preds = %301
  %321 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %322 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @qed_filter_action(i32 %323)
  store i32 %324, i32* %22, align 4
  %325 = load i32, i32* %22, align 4
  %326 = load i32, i32* @MAX_ETH_FILTER_ACTION, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %340

328:                                              ; preds = %320
  %329 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %330 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %331 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @DP_NOTICE(%struct.qed_hwfn* %329, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %332)
  %334 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %335 = load %struct.qed_spq_entry**, %struct.qed_spq_entry*** %13, align 8
  %336 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %335, align 8
  %337 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %334, %struct.qed_spq_entry* %336)
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %8, align 4
  br label %359

340:                                              ; preds = %320
  %341 = load i32, i32* %22, align 4
  %342 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %343 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 8
  %344 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %11, align 8
  %345 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @QED_FILTER_REMOVE, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %340
  %350 = load i8*, i8** %17, align 8
  br label %353

351:                                              ; preds = %340
  %352 = load i8*, i8** %16, align 8
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i8* [ %350, %349 ], [ %352, %351 ]
  %355 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %356 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %355, i32 0, i32 2
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %353, %306
  br label %358

358:                                              ; preds = %357, %257
  store i32 0, i32* %8, align 4
  br label %359

359:                                              ; preds = %358, %328, %61, %41, %31
  %360 = load i32, i32* %8, align 4
  ret i32 %360
}

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i8**) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_set_fw_mac_addr(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(%struct.eth_filter_cmd*, %struct.eth_filter_cmd*, i32) #1

declare dso_local i32 @qed_filter_action(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
