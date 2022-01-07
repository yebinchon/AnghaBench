; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ath10k_fw_stats = type { i32, i32, i32 }
%struct.wmi_tlv_stats_ev = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_pdev_stats = type { i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32 }
%struct.wmi_tlv_vdev_stats = type { i32 }
%struct.ath10k_fw_stats_vdev = type { i32 }
%struct.wmi_10x_peer_stats = type { i32, i32 }
%struct.ath10k_fw_stats_peer = type { i32, i32, i8* }
%struct.wmi_tlv_peer_stats_extd = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_STATS_EVENT = common dso_local global i64 0, align 8
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"wmi tlv stats update pdev %i vdev %i peer %i bcnflt %i chan %i peer_extd %i\0A\00", align 1
@WMI_TLV_STAT_PEER_EXTD = common dso_local global i32 0, align 4
@WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT = common dso_local global i32 0, align 4
@WMI_TLV_PEER_RX_DURATION_HIGH_MASK = common dso_local global i32 0, align 4
@WMI_TLV_PEER_RX_DURATION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_tlv_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_fw_stats*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.wmi_tlv_stats_ev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.wmi_pdev_stats*, align 8
  %22 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %23 = alloca %struct.wmi_tlv_vdev_stats*, align 8
  %24 = alloca %struct.ath10k_fw_stats_vdev*, align 8
  %25 = alloca %struct.wmi_10x_peer_stats*, align 8
  %26 = alloca %struct.ath10k_fw_stats_peer*, align 8
  %27 = alloca %struct.wmi_tlv_peer_stats_extd*, align 8
  %28 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath10k_fw_stats* %2, %struct.ath10k_fw_stats** %7, align 8
  %29 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %29, i32 %32, i32 %35, i32 %36)
  store i8** %37, i8*** %8, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = call i64 @IS_ERR(i8** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load i8**, i8*** %8, align 8
  %43 = call i32 @PTR_ERR(i8** %42)
  store i32 %43, i32* %19, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %4, align 4
  br label %294

48:                                               ; preds = %3
  %49 = load i8**, i8*** %8, align 8
  %50 = load i64, i64* @WMI_TLV_TAG_STRUCT_STATS_EVENT, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.wmi_tlv_stats_ev*
  store %struct.wmi_tlv_stats_ev* %53, %struct.wmi_tlv_stats_ev** %9, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = load i64, i64* @WMI_TLV_TAG_ARRAY_BYTE, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %11, align 8
  %58 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %59 = icmp ne %struct.wmi_tlv_stats_ev* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %48
  %64 = load i8**, i8*** %8, align 8
  %65 = call i32 @kfree(i8** %64)
  %66 = load i32, i32* @EPROTO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %294

68:                                               ; preds = %60
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @ath10k_wmi_tlv_len(i8* %69)
  store i64 %70, i64* %17, align 8
  %71 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %72 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @__le32_to_cpu(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %77 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @__le32_to_cpu(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %82 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @__le32_to_cpu(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %87 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @__le32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %92 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @__le32_to_cpu(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %97 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @__le32_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %18, align 4
  %101 = load %struct.wmi_tlv_stats_ev*, %struct.wmi_tlv_stats_ev** %9, align 8
  %102 = getelementptr inbounds %struct.wmi_tlv_stats_ev, %struct.wmi_tlv_stats_ev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @__le32_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %107 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ath10k_dbg(%struct.ath10k* %106, i32 %107, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 0, i32* %20, align 4
  br label %115

115:                                              ; preds = %158, %68
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %115
  %120 = load i8*, i8** %11, align 8
  %121 = bitcast i8* %120 to %struct.wmi_pdev_stats*
  store %struct.wmi_pdev_stats* %121, %struct.wmi_pdev_stats** %21, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp ult i64 %122, 12
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8**, i8*** %8, align 8
  %126 = call i32 @kfree(i8** %125)
  %127 = load i32, i32* @EPROTO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %294

129:                                              ; preds = %119
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr i8, i8* %130, i64 12
  store i8* %131, i8** %11, align 8
  %132 = load i64, i64* %17, align 8
  %133 = sub i64 %132, 12
  store i64 %133, i64* %17, align 8
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call i8* @kzalloc(i32 4, i32 %134)
  %136 = bitcast i8* %135 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %136, %struct.ath10k_fw_stats_pdev** %22, align 8
  %137 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %22, align 8
  %138 = icmp ne %struct.ath10k_fw_stats_pdev* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %129
  br label %158

140:                                              ; preds = %129
  %141 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %21, align 8
  %142 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %141, i32 0, i32 2
  %143 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %22, align 8
  %144 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %142, %struct.ath10k_fw_stats_pdev* %143)
  %145 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %21, align 8
  %146 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %145, i32 0, i32 1
  %147 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %22, align 8
  %148 = call i32 @ath10k_wmi_pull_pdev_stats_tx(i32* %146, %struct.ath10k_fw_stats_pdev* %147)
  %149 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %21, align 8
  %150 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %149, i32 0, i32 0
  %151 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %22, align 8
  %152 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %150, %struct.ath10k_fw_stats_pdev* %151)
  %153 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %22, align 8
  %154 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %153, i32 0, i32 0
  %155 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %156 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %155, i32 0, i32 2
  %157 = call i32 @list_add_tail(i32* %154, i32* %156)
  br label %158

158:                                              ; preds = %140, %139
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %115

161:                                              ; preds = %115
  store i32 0, i32* %20, align 4
  br label %162

162:                                              ; preds = %196, %161
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %199

166:                                              ; preds = %162
  %167 = load i8*, i8** %11, align 8
  %168 = bitcast i8* %167 to %struct.wmi_tlv_vdev_stats*
  store %struct.wmi_tlv_vdev_stats* %168, %struct.wmi_tlv_vdev_stats** %23, align 8
  %169 = load i64, i64* %17, align 8
  %170 = icmp ult i64 %169, 4
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i8**, i8*** %8, align 8
  %173 = call i32 @kfree(i8** %172)
  %174 = load i32, i32* @EPROTO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %294

176:                                              ; preds = %166
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr i8, i8* %177, i64 4
  store i8* %178, i8** %11, align 8
  %179 = load i64, i64* %17, align 8
  %180 = sub i64 %179, 4
  store i64 %180, i64* %17, align 8
  %181 = load i32, i32* @GFP_ATOMIC, align 4
  %182 = call i8* @kzalloc(i32 4, i32 %181)
  %183 = bitcast i8* %182 to %struct.ath10k_fw_stats_vdev*
  store %struct.ath10k_fw_stats_vdev* %183, %struct.ath10k_fw_stats_vdev** %24, align 8
  %184 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %24, align 8
  %185 = icmp ne %struct.ath10k_fw_stats_vdev* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %176
  br label %196

187:                                              ; preds = %176
  %188 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %23, align 8
  %189 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %24, align 8
  %190 = call i32 @ath10k_wmi_tlv_pull_vdev_stats(%struct.wmi_tlv_vdev_stats* %188, %struct.ath10k_fw_stats_vdev* %189)
  %191 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %24, align 8
  %192 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %191, i32 0, i32 0
  %193 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %194 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %193, i32 0, i32 1
  %195 = call i32 @list_add_tail(i32* %192, i32* %194)
  br label %196

196:                                              ; preds = %187, %186
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %20, align 4
  br label %162

199:                                              ; preds = %162
  store i32 0, i32* %20, align 4
  br label %200

200:                                              ; preds = %288, %199
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %291

204:                                              ; preds = %200
  %205 = load i8*, i8** %11, align 8
  %206 = bitcast i8* %205 to %struct.wmi_10x_peer_stats*
  store %struct.wmi_10x_peer_stats* %206, %struct.wmi_10x_peer_stats** %25, align 8
  %207 = load i64, i64* %17, align 8
  %208 = icmp ult i64 %207, 8
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i8**, i8*** %8, align 8
  %211 = call i32 @kfree(i8** %210)
  %212 = load i32, i32* @EPROTO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %294

214:                                              ; preds = %204
  %215 = load i8*, i8** %11, align 8
  %216 = getelementptr i8, i8* %215, i64 8
  store i8* %216, i8** %11, align 8
  %217 = load i64, i64* %17, align 8
  %218 = sub i64 %217, 8
  store i64 %218, i64* %17, align 8
  %219 = load i32, i32* @GFP_ATOMIC, align 4
  %220 = call i8* @kzalloc(i32 16, i32 %219)
  %221 = bitcast i8* %220 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %221, %struct.ath10k_fw_stats_peer** %26, align 8
  %222 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %223 = icmp ne %struct.ath10k_fw_stats_peer* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %214
  br label %288

225:                                              ; preds = %214
  %226 = load %struct.wmi_10x_peer_stats*, %struct.wmi_10x_peer_stats** %25, align 8
  %227 = getelementptr inbounds %struct.wmi_10x_peer_stats, %struct.wmi_10x_peer_stats* %226, i32 0, i32 1
  %228 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %229 = call i32 @ath10k_wmi_pull_peer_stats(i32* %227, %struct.ath10k_fw_stats_peer* %228)
  %230 = load %struct.wmi_10x_peer_stats*, %struct.wmi_10x_peer_stats** %25, align 8
  %231 = getelementptr inbounds %struct.wmi_10x_peer_stats, %struct.wmi_10x_peer_stats* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @__le32_to_cpu(i32 %232)
  %234 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %235 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* @WMI_TLV_STAT_PEER_EXTD, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %282

240:                                              ; preds = %225
  %241 = load i8*, i8** %11, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %20, align 4
  %244 = sub nsw i32 %242, %243
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = mul i64 8, %246
  %248 = getelementptr i8, i8* %241, i64 %247
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 8, %250
  %252 = getelementptr i8, i8* %248, i64 %251
  %253 = bitcast i8* %252 to %struct.wmi_tlv_peer_stats_extd*
  store %struct.wmi_tlv_peer_stats_extd* %253, %struct.wmi_tlv_peer_stats_extd** %27, align 8
  %254 = load %struct.wmi_tlv_peer_stats_extd*, %struct.wmi_tlv_peer_stats_extd** %27, align 8
  %255 = getelementptr inbounds %struct.wmi_tlv_peer_stats_extd, %struct.wmi_tlv_peer_stats_extd* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @__le32_to_cpu(i32 %256)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %260 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  %261 = load %struct.wmi_tlv_peer_stats_extd*, %struct.wmi_tlv_peer_stats_extd** %27, align 8
  %262 = getelementptr inbounds %struct.wmi_tlv_peer_stats_extd, %struct.wmi_tlv_peer_stats_extd* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @__le32_to_cpu(i32 %263)
  %265 = ptrtoint i8* %264 to i64
  store i64 %265, i64* %28, align 8
  %266 = load i32, i32* @WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT, align 4
  %267 = call i64 @test_bit(i32 %266, i64* %28)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %240
  %270 = load i32, i32* @WMI_TLV_PEER_RX_DURATION_HIGH_MASK, align 4
  %271 = load i64, i64* %28, align 8
  %272 = call i64 @FIELD_GET(i32 %270, i64 %271)
  store i64 %272, i64* %28, align 8
  %273 = load i64, i64* %28, align 8
  %274 = trunc i64 %273 to i32
  %275 = load i32, i32* @WMI_TLV_PEER_RX_DURATION_SHIFT, align 4
  %276 = shl i32 %274, %275
  %277 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %278 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %269, %240
  br label %282

282:                                              ; preds = %281, %225
  %283 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %26, align 8
  %284 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %283, i32 0, i32 1
  %285 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %286 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %285, i32 0, i32 0
  %287 = call i32 @list_add_tail(i32* %284, i32* %286)
  br label %288

288:                                              ; preds = %282, %224
  %289 = load i32, i32* %20, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %20, align 4
  br label %200

291:                                              ; preds = %200
  %292 = load i8**, i8*** %8, align 8
  %293 = call i32 @kfree(i8** %292)
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %291, %209, %171, %124, %63, %41
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i64 @ath10k_wmi_tlv_len(i8*) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_base(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_tx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_rx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath10k_wmi_tlv_pull_vdev_stats(%struct.wmi_tlv_vdev_stats*, %struct.ath10k_fw_stats_vdev*) #1

declare dso_local i32 @ath10k_wmi_pull_peer_stats(i32*, %struct.ath10k_fw_stats_peer*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
