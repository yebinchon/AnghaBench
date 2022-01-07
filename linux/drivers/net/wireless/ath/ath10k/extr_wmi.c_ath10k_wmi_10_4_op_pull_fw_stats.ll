; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath10k_fw_stats = type { i32, i32, i32, i32, i32 }
%struct.wmi_10_2_stats_event = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_10_4_pdev_stats = type { i32, i32, i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32, i8* }
%struct.wmi_10_2_pdev_ext_stats = type { i32 }
%struct.wmi_vdev_stats = type { i32 }
%struct.wmi_10_4_peer_stats = type { i32 }
%struct.ath10k_fw_stats_peer = type { i32 }
%struct.wmi_10_4_bss_bcn_filter_stats = type { i32 }
%struct.wmi_10_4_peer_extd_stats = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_fw_extd_stats_peer = type { i32, i8*, i32 }
%struct.wmi_vdev_stats_extd = type { i32 }
%struct.ath10k_fw_stats_vdev_extd = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WMI_10_4_STAT_PEER_EXTD = common dso_local global i32 0, align 4
@WMI_10_4_STAT_VDEV_EXTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_10_4_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_4_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_fw_stats*, align 8
  %8 = alloca %struct.wmi_10_2_stats_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wmi_10_4_pdev_stats*, align 8
  %17 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %18 = alloca %struct.wmi_10_2_pdev_ext_stats*, align 8
  %19 = alloca %struct.wmi_vdev_stats*, align 8
  %20 = alloca %struct.wmi_10_4_peer_stats*, align 8
  %21 = alloca %struct.ath10k_fw_stats_peer*, align 8
  %22 = alloca %struct.wmi_10_4_bss_bcn_filter_stats*, align 8
  %23 = alloca %struct.wmi_10_4_peer_extd_stats*, align 8
  %24 = alloca %struct.ath10k_fw_extd_stats_peer*, align 8
  %25 = alloca %struct.wmi_vdev_stats_extd*, align 8
  %26 = alloca %struct.ath10k_fw_stats_vdev_extd*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath10k_fw_stats* %2, %struct.ath10k_fw_stats** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.wmi_10_2_stats_event*
  store %struct.wmi_10_2_stats_event* %31, %struct.wmi_10_2_stats_event** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 24)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %320

38:                                               ; preds = %3
  %39 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %40 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @__le32_to_cpu(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %45 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @__le32_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %50 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @__le32_to_cpu(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %55 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @__le32_to_cpu(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %60 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @__le32_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %65 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @__le32_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %120, %38
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %123

73:                                               ; preds = %69
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = bitcast i8* %77 to %struct.wmi_10_4_pdev_stats*
  store %struct.wmi_10_4_pdev_stats* %78, %struct.wmi_10_4_pdev_stats** %16, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @skb_pull(%struct.sk_buff* %79, i32 20)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @EPROTO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %320

85:                                               ; preds = %73
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i8* @kzalloc(i32 16, i32 %86)
  %88 = bitcast i8* %87 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %88, %struct.ath10k_fw_stats_pdev** %17, align 8
  %89 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %90 = icmp ne %struct.ath10k_fw_stats_pdev* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %120

92:                                               ; preds = %85
  %93 = load %struct.wmi_10_4_pdev_stats*, %struct.wmi_10_4_pdev_stats** %16, align 8
  %94 = getelementptr inbounds %struct.wmi_10_4_pdev_stats, %struct.wmi_10_4_pdev_stats* %93, i32 0, i32 4
  %95 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %96 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %94, %struct.ath10k_fw_stats_pdev* %95)
  %97 = load %struct.wmi_10_4_pdev_stats*, %struct.wmi_10_4_pdev_stats** %16, align 8
  %98 = getelementptr inbounds %struct.wmi_10_4_pdev_stats, %struct.wmi_10_4_pdev_stats* %97, i32 0, i32 3
  %99 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %100 = call i32 @ath10k_wmi_10_4_pull_pdev_stats_tx(i32* %98, %struct.ath10k_fw_stats_pdev* %99)
  %101 = load %struct.wmi_10_4_pdev_stats*, %struct.wmi_10_4_pdev_stats** %16, align 8
  %102 = getelementptr inbounds %struct.wmi_10_4_pdev_stats, %struct.wmi_10_4_pdev_stats* %101, i32 0, i32 2
  %103 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %104 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %102, %struct.ath10k_fw_stats_pdev* %103)
  %105 = load %struct.wmi_10_4_pdev_stats*, %struct.wmi_10_4_pdev_stats** %16, align 8
  %106 = getelementptr inbounds %struct.wmi_10_4_pdev_stats, %struct.wmi_10_4_pdev_stats* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @__le32_to_cpu(i32 %107)
  %109 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %110 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.wmi_10_4_pdev_stats*, %struct.wmi_10_4_pdev_stats** %16, align 8
  %112 = getelementptr inbounds %struct.wmi_10_4_pdev_stats, %struct.wmi_10_4_pdev_stats* %111, i32 0, i32 0
  %113 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %114 = call i32 @ath10k_wmi_pull_pdev_stats_extra(i32* %112, %struct.ath10k_fw_stats_pdev* %113)
  %115 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %17, align 8
  %116 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %115, i32 0, i32 0
  %117 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %118 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %117, i32 0, i32 4
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  br label %120

120:                                              ; preds = %92, %91
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %69

123:                                              ; preds = %69
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %141, %123
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = bitcast i8* %132 to %struct.wmi_10_2_pdev_ext_stats*
  store %struct.wmi_10_2_pdev_ext_stats* %133, %struct.wmi_10_2_pdev_ext_stats** %18, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @skb_pull(%struct.sk_buff* %134, i32 4)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* @EPROTO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %320

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %124

144:                                              ; preds = %124
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %162, %144
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = bitcast i8* %153 to %struct.wmi_vdev_stats*
  store %struct.wmi_vdev_stats* %154, %struct.wmi_vdev_stats** %19, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = call i32 @skb_pull(%struct.sk_buff* %155, i32 4)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %149
  %159 = load i32, i32* @EPROTO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %320

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %145

165:                                              ; preds = %145
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %198, %165
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %166
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i8*
  %175 = bitcast i8* %174 to %struct.wmi_10_4_peer_stats*
  store %struct.wmi_10_4_peer_stats* %175, %struct.wmi_10_4_peer_stats** %20, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = call i32 @skb_pull(%struct.sk_buff* %176, i32 4)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %170
  %180 = load i32, i32* @EPROTO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %320

182:                                              ; preds = %170
  %183 = load i32, i32* @GFP_ATOMIC, align 4
  %184 = call i8* @kzalloc(i32 4, i32 %183)
  %185 = bitcast i8* %184 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %185, %struct.ath10k_fw_stats_peer** %21, align 8
  %186 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %21, align 8
  %187 = icmp ne %struct.ath10k_fw_stats_peer* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %182
  br label %198

189:                                              ; preds = %182
  %190 = load %struct.wmi_10_4_peer_stats*, %struct.wmi_10_4_peer_stats** %20, align 8
  %191 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %21, align 8
  %192 = call i32 @ath10k_wmi_10_4_pull_peer_stats(%struct.wmi_10_4_peer_stats* %190, %struct.ath10k_fw_stats_peer* %191)
  %193 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %21, align 8
  %194 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %193, i32 0, i32 0
  %195 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %196 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %195, i32 0, i32 3
  %197 = call i32 @list_add_tail(i32* %194, i32* %196)
  br label %198

198:                                              ; preds = %189, %188
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %166

201:                                              ; preds = %166
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %219, %201
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %202
  %207 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8*
  %211 = bitcast i8* %210 to %struct.wmi_10_4_bss_bcn_filter_stats*
  store %struct.wmi_10_4_bss_bcn_filter_stats* %211, %struct.wmi_10_4_bss_bcn_filter_stats** %22, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %213 = call i32 @skb_pull(%struct.sk_buff* %212, i32 4)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %206
  %216 = load i32, i32* @EPROTO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %320

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %15, align 4
  br label %202

222:                                              ; preds = %202
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* @WMI_10_4_STAT_PEER_EXTD, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %277

227:                                              ; preds = %222
  %228 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %229 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  store i32 0, i32* %15, align 4
  br label %230

230:                                              ; preds = %273, %227
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %276

234:                                              ; preds = %230
  %235 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = inttoptr i64 %237 to i8*
  %239 = bitcast i8* %238 to %struct.wmi_10_4_peer_extd_stats*
  store %struct.wmi_10_4_peer_extd_stats* %239, %struct.wmi_10_4_peer_extd_stats** %23, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %241 = call i32 @skb_pull(%struct.sk_buff* %240, i32 8)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %234
  %244 = load i32, i32* @EPROTO, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %320

246:                                              ; preds = %234
  %247 = load i32, i32* @GFP_ATOMIC, align 4
  %248 = call i8* @kzalloc(i32 24, i32 %247)
  %249 = bitcast i8* %248 to %struct.ath10k_fw_extd_stats_peer*
  store %struct.ath10k_fw_extd_stats_peer* %249, %struct.ath10k_fw_extd_stats_peer** %24, align 8
  %250 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %24, align 8
  %251 = icmp ne %struct.ath10k_fw_extd_stats_peer* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  br label %273

253:                                              ; preds = %246
  %254 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %24, align 8
  %255 = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, %struct.ath10k_fw_extd_stats_peer* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.wmi_10_4_peer_extd_stats*, %struct.wmi_10_4_peer_extd_stats** %23, align 8
  %258 = getelementptr inbounds %struct.wmi_10_4_peer_extd_stats, %struct.wmi_10_4_peer_extd_stats* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @ether_addr_copy(i32 %256, i32 %260)
  %262 = load %struct.wmi_10_4_peer_extd_stats*, %struct.wmi_10_4_peer_extd_stats** %23, align 8
  %263 = getelementptr inbounds %struct.wmi_10_4_peer_extd_stats, %struct.wmi_10_4_peer_extd_stats* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @__le32_to_cpu(i32 %264)
  %266 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %24, align 8
  %267 = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, %struct.ath10k_fw_extd_stats_peer* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %24, align 8
  %269 = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, %struct.ath10k_fw_extd_stats_peer* %268, i32 0, i32 0
  %270 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %271 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %270, i32 0, i32 2
  %272 = call i32 @list_add_tail(i32* %269, i32* %271)
  br label %273

273:                                              ; preds = %253, %252
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %230

276:                                              ; preds = %230
  br label %277

277:                                              ; preds = %276, %222
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @WMI_10_4_STAT_VDEV_EXTD, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %319

282:                                              ; preds = %277
  store i32 0, i32* %15, align 4
  br label %283

283:                                              ; preds = %315, %282
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %318

287:                                              ; preds = %283
  %288 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = inttoptr i64 %290 to i8*
  %292 = bitcast i8* %291 to %struct.wmi_vdev_stats_extd*
  store %struct.wmi_vdev_stats_extd* %292, %struct.wmi_vdev_stats_extd** %25, align 8
  %293 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %294 = call i32 @skb_pull(%struct.sk_buff* %293, i32 4)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %287
  %297 = load i32, i32* @EPROTO, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %4, align 4
  br label %320

299:                                              ; preds = %287
  %300 = load i32, i32* @GFP_ATOMIC, align 4
  %301 = call i8* @kzalloc(i32 4, i32 %300)
  %302 = bitcast i8* %301 to %struct.ath10k_fw_stats_vdev_extd*
  store %struct.ath10k_fw_stats_vdev_extd* %302, %struct.ath10k_fw_stats_vdev_extd** %26, align 8
  %303 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %26, align 8
  %304 = icmp ne %struct.ath10k_fw_stats_vdev_extd* %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %299
  br label %315

306:                                              ; preds = %299
  %307 = load %struct.wmi_vdev_stats_extd*, %struct.wmi_vdev_stats_extd** %25, align 8
  %308 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %26, align 8
  %309 = call i32 @ath10k_wmi_10_4_pull_vdev_stats(%struct.wmi_vdev_stats_extd* %307, %struct.ath10k_fw_stats_vdev_extd* %308)
  %310 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %26, align 8
  %311 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %310, i32 0, i32 0
  %312 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %313 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %312, i32 0, i32 1
  %314 = call i32 @list_add_tail(i32* %311, i32* %313)
  br label %315

315:                                              ; preds = %306, %305
  %316 = load i32, i32* %15, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %15, align 4
  br label %283

318:                                              ; preds = %283
  br label %319

319:                                              ; preds = %318, %277
  store i32 0, i32* %4, align 4
  br label %320

320:                                              ; preds = %319, %296, %243, %215, %179, %158, %137, %82, %35
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_base(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_10_4_pull_pdev_stats_tx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_rx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_extra(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath10k_wmi_10_4_pull_peer_stats(%struct.wmi_10_4_peer_stats*, %struct.ath10k_fw_stats_peer*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_wmi_10_4_pull_vdev_stats(%struct.wmi_vdev_stats_extd*, %struct.ath10k_fw_stats_vdev_extd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
