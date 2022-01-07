; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hv_netvsc_packet = type { i64, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.rndis_message = type { i32 }
%struct.hv_page_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device_context = type { %struct.TYPE_2__, %struct.hv_device*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i64, i64, i64, %struct.netvsc_channel*, i64 }
%struct.netvsc_channel = type { %struct.multi_send_data }
%struct.multi_send_data = type { i64, %struct.hv_netvsc_packet*, %struct.sk_buff* }

@NETVSC_INVALID_INDEX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netvsc_send(%struct.net_device* %0, %struct.hv_netvsc_packet* %1, %struct.rndis_message* %2, %struct.hv_page_buffer* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.hv_netvsc_packet*, align 8
  %9 = alloca %struct.rndis_message*, align 8
  %10 = alloca %struct.hv_page_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device_context*, align 8
  %13 = alloca %struct.netvsc_device*, align 8
  %14 = alloca %struct.hv_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.netvsc_channel*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.multi_send_data*, align 8
  %21 = alloca %struct.hv_netvsc_packet*, align 8
  %22 = alloca %struct.hv_netvsc_packet*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.hv_netvsc_packet* %1, %struct.hv_netvsc_packet** %8, align 8
  store %struct.rndis_message* %2, %struct.rndis_message** %9, align 8
  store %struct.hv_page_buffer* %3, %struct.hv_page_buffer** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %27)
  store %struct.net_device_context* %28, %struct.net_device_context** %12, align 8
  %29 = load %struct.net_device_context*, %struct.net_device_context** %12, align 8
  %30 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.netvsc_device* @rcu_dereference_bh(i32 %31)
  store %struct.netvsc_device* %32, %struct.netvsc_device** %13, align 8
  %33 = load %struct.net_device_context*, %struct.net_device_context** %12, align 8
  %34 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %33, i32 0, i32 1
  %35 = load %struct.hv_device*, %struct.hv_device** %34, align 8
  store %struct.hv_device* %35, %struct.hv_device** %14, align 8
  store i32 0, i32* %15, align 4
  %36 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %37 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %39 = load i32, i32* @NETVSC_INVALID_INDEX, align 4
  store i32 %39, i32* %19, align 4
  store %struct.hv_netvsc_packet* null, %struct.hv_netvsc_packet** %21, align 8
  store %struct.hv_netvsc_packet* null, %struct.hv_netvsc_packet** %22, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %40 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %41 = icmp ne %struct.netvsc_device* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %44 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %5
  %48 = phi i1 [ true, %5 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %342

55:                                               ; preds = %47
  %56 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %57 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %56, i32 0, i32 3
  %58 = load %struct.netvsc_channel*, %struct.netvsc_channel** %57, align 8
  %59 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %60 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %58, i64 %61
  store %struct.netvsc_channel* %62, %struct.netvsc_channel** %16, align 8
  %63 = load i32, i32* @NETVSC_INVALID_INDEX, align 4
  %64 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %65 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %67 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %55
  %71 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  %72 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %73 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %74 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = call i32 @netvsc_send_pkt(%struct.hv_device* %71, %struct.hv_netvsc_packet* %72, %struct.netvsc_device* %73, %struct.hv_page_buffer* %74, %struct.sk_buff* %75)
  store i32 %76, i32* %6, align 4
  br label %342

77:                                               ; preds = %55
  %78 = load %struct.netvsc_channel*, %struct.netvsc_channel** %16, align 8
  %79 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %78, i32 0, i32 0
  store %struct.multi_send_data* %79, %struct.multi_send_data** %20, align 8
  %80 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %81 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %80, i32 0, i32 1
  %82 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %81, align 8
  %83 = icmp ne %struct.hv_netvsc_packet* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %86 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %85, i32 0, i32 1
  %87 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %86, align 8
  %88 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %18, align 8
  br label %90

90:                                               ; preds = %84, %77
  %91 = load i64, i64* %18, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %95 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %98 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i1 [ false, %90 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %24, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %111 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %115 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %120 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %119, i32 0, i32 1
  %121 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %120, align 8
  %122 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %19, align 4
  br label %176

124:                                              ; preds = %106, %101
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i64, i64* %18, align 8
  %129 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %130 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %134 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %139 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %138, i32 0, i32 1
  %140 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %139, align 8
  %141 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %19, align 4
  %143 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %144 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %143, i32 0, i32 3
  store i32 1, i32* %144, align 4
  br label %175

145:                                              ; preds = %127, %124
  %146 = load i64, i64* %17, align 8
  %147 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %148 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %152 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %145
  %156 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %157 = call i32 @netvsc_get_next_send_section(%struct.netvsc_device* %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* @NETVSC_INVALID_INDEX, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load %struct.net_device_context*, %struct.net_device_context** %12, align 8
  %166 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %173

170:                                              ; preds = %155
  %171 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %172 = call i32 @move_pkt_msd(%struct.hv_netvsc_packet** %21, %struct.sk_buff** %23, %struct.multi_send_data* %171)
  store i64 0, i64* %18, align 8
  br label %173

173:                                              ; preds = %170, %164
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174, %137
  br label %176

176:                                              ; preds = %175, %118
  %177 = call i64 (...) @netdev_xmit_more()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %181 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %179
  %185 = load %struct.net_device*, %struct.net_device** %7, align 8
  %186 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %187 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @netdev_get_tx_queue(%struct.net_device* %185, i64 %188)
  %190 = call i32 @netif_xmit_stopped(i32 %189)
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br label %193

193:                                              ; preds = %184, %179, %176
  %194 = phi i1 [ false, %179 ], [ false, %176 ], [ %192, %184 ]
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %25, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* @NETVSC_INVALID_INDEX, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %295

199:                                              ; preds = %193
  %200 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %201 = load i32, i32* %19, align 4
  %202 = load i64, i64* %18, align 8
  %203 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %204 = load %struct.rndis_message*, %struct.rndis_message** %9, align 8
  %205 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %206 = load i32, i32* %25, align 4
  %207 = call i32 @netvsc_copy_to_send_buf(%struct.netvsc_device* %200, i32 %201, i64 %202, %struct.hv_netvsc_packet* %203, %struct.rndis_message* %204, %struct.hv_page_buffer* %205, i32 %206)
  %208 = load i32, i32* %19, align 4
  %209 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %210 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %212 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %199
  %216 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %217 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %220 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %221, %218
  store i64 %222, i64* %220, align 8
  %223 = load i64, i64* %18, align 8
  %224 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %225 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %229 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %238

230:                                              ; preds = %199
  %231 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %232 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %231, i32 0, i32 7
  store i64 0, i64* %232, align 8
  %233 = load i64, i64* %18, align 8
  %234 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %235 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, %233
  store i64 %237, i64* %235, align 8
  br label %238

238:                                              ; preds = %230, %215
  %239 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %240 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %239, i32 0, i32 1
  %241 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %240, align 8
  %242 = icmp ne %struct.hv_netvsc_packet* %241, null
  br i1 %242, label %243, label %262

243:                                              ; preds = %238
  %244 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %245 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %244, i32 0, i32 1
  %246 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %245, align 8
  %247 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %250 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, %248
  store i64 %252, i64* %250, align 8
  %253 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %254 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %253, i32 0, i32 1
  %255 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %254, align 8
  %256 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %259 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %257
  store i64 %261, i64* %259, align 8
  br label %262

262:                                              ; preds = %243, %238
  %263 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %264 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %263, i32 0, i32 2
  %265 = load %struct.sk_buff*, %struct.sk_buff** %264, align 8
  %266 = icmp ne %struct.sk_buff* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %269 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %268, i32 0, i32 2
  %270 = load %struct.sk_buff*, %struct.sk_buff** %269, align 8
  %271 = call i32 @dev_consume_skb_any(%struct.sk_buff* %270)
  br label %272

272:                                              ; preds = %267, %262
  %273 = load i32, i32* %25, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %272
  %276 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %277 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %278 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %277, i32 0, i32 2
  store %struct.sk_buff* %276, %struct.sk_buff** %278, align 8
  %279 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %280 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %281 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %280, i32 0, i32 1
  store %struct.hv_netvsc_packet* %279, %struct.hv_netvsc_packet** %281, align 8
  %282 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %283 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  br label %294

286:                                              ; preds = %272
  %287 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  store %struct.hv_netvsc_packet* %287, %struct.hv_netvsc_packet** %22, align 8
  %288 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %289 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %288, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %289, align 8
  %290 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %291 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %290, i32 0, i32 1
  store %struct.hv_netvsc_packet* null, %struct.hv_netvsc_packet** %291, align 8
  %292 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %293 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %292, i32 0, i32 0
  store i64 0, i64* %293, align 8
  br label %294

294:                                              ; preds = %286, %275
  br label %299

295:                                              ; preds = %193
  %296 = load %struct.multi_send_data*, %struct.multi_send_data** %20, align 8
  %297 = call i32 @move_pkt_msd(%struct.hv_netvsc_packet** %21, %struct.sk_buff** %23, %struct.multi_send_data* %296)
  %298 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  store %struct.hv_netvsc_packet* %298, %struct.hv_netvsc_packet** %22, align 8
  br label %299

299:                                              ; preds = %295, %294
  %300 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %21, align 8
  %301 = icmp ne %struct.hv_netvsc_packet* %300, null
  br i1 %301, label %302, label %319

302:                                              ; preds = %299
  %303 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  %304 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %21, align 8
  %305 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %306 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %307 = call i32 @netvsc_send_pkt(%struct.hv_device* %303, %struct.hv_netvsc_packet* %304, %struct.netvsc_device* %305, %struct.hv_page_buffer* null, %struct.sk_buff* %306)
  store i32 %307, i32* %26, align 4
  %308 = load i32, i32* %26, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %302
  %311 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %312 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %21, align 8
  %313 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @netvsc_free_send_slot(%struct.netvsc_device* %311, i32 %314)
  %316 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %317 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %316)
  br label %318

318:                                              ; preds = %310, %302
  br label %319

319:                                              ; preds = %318, %299
  %320 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %22, align 8
  %321 = icmp ne %struct.hv_netvsc_packet* %320, null
  br i1 %321, label %322, label %329

322:                                              ; preds = %319
  %323 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  %324 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %22, align 8
  %325 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %326 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %327 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %328 = call i32 @netvsc_send_pkt(%struct.hv_device* %323, %struct.hv_netvsc_packet* %324, %struct.netvsc_device* %325, %struct.hv_page_buffer* %326, %struct.sk_buff* %327)
  store i32 %328, i32* %15, align 4
  br label %329

329:                                              ; preds = %322, %319
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %329
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* @NETVSC_INVALID_INDEX, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load %struct.netvsc_device*, %struct.netvsc_device** %13, align 8
  %338 = load i32, i32* %19, align 4
  %339 = call i32 @netvsc_free_send_slot(%struct.netvsc_device* %337, i32 %338)
  br label %340

340:                                              ; preds = %336, %332, %329
  %341 = load i32, i32* %15, align 4
  store i32 %341, i32* %6, align 4
  br label %342

342:                                              ; preds = %340, %70, %52
  %343 = load i32, i32* %6, align 4
  ret i32 %343
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rcu_dereference_bh(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netvsc_send_pkt(%struct.hv_device*, %struct.hv_netvsc_packet*, %struct.netvsc_device*, %struct.hv_page_buffer*, %struct.sk_buff*) #1

declare dso_local i32 @netvsc_get_next_send_section(%struct.netvsc_device*) #1

declare dso_local i32 @move_pkt_msd(%struct.hv_netvsc_packet**, %struct.sk_buff**, %struct.multi_send_data*) #1

declare dso_local i64 @netdev_xmit_more(...) #1

declare dso_local i32 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i32 @netvsc_copy_to_send_buf(%struct.netvsc_device*, i32, i64, %struct.hv_netvsc_packet*, %struct.rndis_message*, %struct.hv_page_buffer*, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netvsc_free_send_slot(%struct.netvsc_device*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
