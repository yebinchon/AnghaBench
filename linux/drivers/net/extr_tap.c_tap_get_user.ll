; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32, i32, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.tap_dev = type { i32 (%struct.tap_dev*)*, i32 }
%struct.virtio_net_hdr = type { i32, i64, i64, i64, i32 }
%struct.ubuf_info = type { i32 (%struct.ubuf_info*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i8* }

@TAP_RESERVE = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@SOCK_ZEROCOPY = common dso_local global i32 0, align 4
@GOODCOPY_LEN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@SKBTX_DEV_ZEROCOPY = common dso_local global i32 0, align 4
@SKBTX_SHARED_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tap_queue*, i8*, %struct.iov_iter*, i32)* @tap_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tap_get_user(%struct.tap_queue* %0, i8* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tap_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tap_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.virtio_net_hdr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.iov_iter, align 4
  %23 = alloca %struct.ubuf_info*, align 8
  store %struct.tap_queue* %0, %struct.tap_queue** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* @TAP_RESERVE, align 4
  %25 = call i32 @SKB_MAX_HEAD(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %27 = call i64 @iov_iter_count(%struct.iov_iter* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %14, align 8
  %29 = bitcast %struct.virtio_net_hdr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 40, i1 false)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %30 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %31 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_VNET_HDR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %112

36:                                               ; preds = %4
  %37 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %38 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @READ_ONCE(i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %333

48:                                               ; preds = %36
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %14, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %14, align 8
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %56 = call i32 @copy_from_iter_full(%struct.virtio_net_hdr* %16, i32 40, %struct.iov_iter* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %333

59:                                               ; preds = %48
  %60 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 40
  %64 = trunc i64 %63 to i32
  %65 = call i32 @iov_iter_advance(%struct.iov_iter* %60, i32 %64)
  %66 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %59
  %72 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %73 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @tap16_to_cpu(%struct.tap_queue* %72, i64 %74)
  %76 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %77 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @tap16_to_cpu(%struct.tap_queue* %76, i64 %78)
  %80 = add i64 %75, %79
  %81 = add i64 %80, 2
  %82 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %83 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @tap16_to_cpu(%struct.tap_queue* %82, i64 %84)
  %86 = icmp ugt i64 %81, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %71
  %88 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %89 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %90 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @tap16_to_cpu(%struct.tap_queue* %89, i64 %91)
  %93 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %94 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @tap16_to_cpu(%struct.tap_queue* %93, i64 %95)
  %97 = add i64 %92, %96
  %98 = add i64 %97, 2
  %99 = call i64 @cpu_to_tap16(%struct.tap_queue* %88, i64 %98)
  %100 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %87, %71, %59
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %15, align 4
  %104 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %105 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @tap16_to_cpu(%struct.tap_queue* %104, i64 %106)
  %108 = load i64, i64* %14, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %333

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %4
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* @ETH_HLEN, align 8
  %117 = icmp ult i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %333

122:                                              ; preds = %112
  %123 = load i8*, i8** %7, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %173

125:                                              ; preds = %122
  %126 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %127 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %126, i32 0, i32 2
  %128 = load i32, i32* @SOCK_ZEROCOPY, align 4
  %129 = call i64 @sock_flag(i32* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %173

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %137 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @tap16_to_cpu(%struct.tap_queue* %136, i64 %138)
  br label %142

140:                                              ; preds = %131
  %141 = load i64, i64* @GOODCOPY_LEN, align 8
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i64 [ %139, %135 ], [ %141, %140 ]
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %18, align 4
  br label %159

150:                                              ; preds = %142
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @ETH_HLEN, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i64, i64* @ETH_HLEN, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %155, %150
  br label %159

159:                                              ; preds = %158, %148
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %21, align 8
  %162 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %163 = bitcast %struct.iov_iter* %22 to i8*
  %164 = bitcast %struct.iov_iter* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 4, i1 false)
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @iov_iter_advance(%struct.iov_iter* %22, i32 %165)
  %167 = load i32, i32* @INT_MAX, align 4
  %168 = call i64 @iov_iter_npages(%struct.iov_iter* %22, i32 %167)
  %169 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  store i32 1, i32* %20, align 4
  br label %172

172:                                              ; preds = %171, %159
  br label %173

173:                                              ; preds = %172, %125, %122
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %198, label %176

176:                                              ; preds = %173
  %177 = load i64, i64* %14, align 8
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %18, align 4
  %179 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %180 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @tap16_to_cpu(%struct.tap_queue* %179, i64 %181)
  store i64 %182, i64* %21, align 8
  %183 = load i64, i64* %21, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp ugt i64 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %21, align 8
  br label %197

190:                                              ; preds = %176
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* @ETH_HLEN, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i64, i64* @ETH_HLEN, align 8
  store i64 %195, i64* %21, align 8
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196, %187
  br label %198

198:                                              ; preds = %197, %173
  %199 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %200 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %199, i32 0, i32 2
  %201 = load i32, i32* @TAP_RESERVE, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i64, i64* %21, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call %struct.sk_buff* @tap_alloc_skb(i32* %200, i32 %201, i32 %202, i64 %203, i32 %204, i32* %15)
  store %struct.sk_buff* %205, %struct.sk_buff** %11, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %207 = icmp ne %struct.sk_buff* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %198
  br label %333

209:                                              ; preds = %198
  %210 = load i32, i32* %20, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %214 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %215 = call i32 @zerocopy_sg_from_iter(%struct.sk_buff* %213, %struct.iov_iter* %214)
  store i32 %215, i32* %15, align 4
  br label %221

216:                                              ; preds = %209
  %217 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %218 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %219 = load i64, i64* %14, align 8
  %220 = call i32 @skb_copy_datagram_from_iter(%struct.sk_buff* %217, i32 0, %struct.iov_iter* %218, i64 %219)
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %216, %212
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %330

225:                                              ; preds = %221
  %226 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %227 = load i64, i64* @ETH_HLEN, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @skb_set_network_header(%struct.sk_buff* %226, i32 %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %231 = call i32 @skb_reset_mac_header(%struct.sk_buff* %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %233 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %232)
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %225
  %241 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %242 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %243 = call i32 @tap_is_little_endian(%struct.tap_queue* %242)
  %244 = call i32 @virtio_net_hdr_to_skb(%struct.sk_buff* %241, %struct.virtio_net_hdr* %16, i32 %243)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %330

248:                                              ; preds = %240
  br label %249

249:                                              ; preds = %248, %225
  %250 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %251 = call i32 @skb_probe_transport_header(%struct.sk_buff* %250)
  %252 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* @ETH_P_8021Q, align 4
  %256 = call i64 @htons(i32 %255)
  %257 = icmp eq i64 %254, %256
  br i1 %257, label %265, label %258

258:                                              ; preds = %249
  %259 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @ETH_P_8021AD, align 4
  %263 = call i64 @htons(i32 %262)
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %258, %249
  %266 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @__vlan_get_protocol(%struct.sk_buff* %266, i64 %269, i32* %19)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %274 = load i32, i32* %19, align 4
  %275 = call i32 @skb_set_network_header(%struct.sk_buff* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %265, %258
  %277 = call i32 (...) @rcu_read_lock()
  %278 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %279 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call %struct.tap_dev* @rcu_dereference(i32 %280)
  store %struct.tap_dev* %281, %struct.tap_dev** %12, align 8
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %276
  %285 = load i8*, i8** %7, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %287 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %286)
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  store i8* %285, i8** %288, align 8
  %289 = load i32, i32* @SKBTX_DEV_ZEROCOPY, align 4
  %290 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %291 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %290)
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* @SKBTX_SHARED_FRAG, align 4
  %296 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %297 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %296)
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %295
  store i32 %300, i32* %298, align 8
  br label %313

301:                                              ; preds = %276
  %302 = load i8*, i8** %7, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %312

304:                                              ; preds = %301
  %305 = load i8*, i8** %7, align 8
  %306 = bitcast i8* %305 to %struct.ubuf_info*
  store %struct.ubuf_info* %306, %struct.ubuf_info** %23, align 8
  %307 = load %struct.ubuf_info*, %struct.ubuf_info** %23, align 8
  %308 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %307, i32 0, i32 0
  %309 = load i32 (%struct.ubuf_info*, i32)*, i32 (%struct.ubuf_info*, i32)** %308, align 8
  %310 = load %struct.ubuf_info*, %struct.ubuf_info** %23, align 8
  %311 = call i32 %309(%struct.ubuf_info* %310, i32 0)
  br label %312

312:                                              ; preds = %304, %301
  br label %313

313:                                              ; preds = %312, %284
  %314 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %315 = icmp ne %struct.tap_dev* %314, null
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %318 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %321 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  %322 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %323 = call i32 @dev_queue_xmit(%struct.sk_buff* %322)
  br label %327

324:                                              ; preds = %313
  %325 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %326 = call i32 @kfree_skb(%struct.sk_buff* %325)
  br label %327

327:                                              ; preds = %324, %316
  %328 = call i32 (...) @rcu_read_unlock()
  %329 = load i64, i64* %13, align 8
  store i64 %329, i64* %5, align 8
  br label %356

330:                                              ; preds = %247, %224
  %331 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %332 = call i32 @kfree_skb(%struct.sk_buff* %331)
  br label %333

333:                                              ; preds = %330, %208, %121, %110, %58, %47
  %334 = call i32 (...) @rcu_read_lock()
  %335 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %336 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call %struct.tap_dev* @rcu_dereference(i32 %337)
  store %struct.tap_dev* %338, %struct.tap_dev** %12, align 8
  %339 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %340 = icmp ne %struct.tap_dev* %339, null
  br i1 %340, label %341, label %352

341:                                              ; preds = %333
  %342 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %343 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %342, i32 0, i32 0
  %344 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %343, align 8
  %345 = icmp ne i32 (%struct.tap_dev*)* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %348 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %347, i32 0, i32 0
  %349 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %348, align 8
  %350 = load %struct.tap_dev*, %struct.tap_dev** %12, align 8
  %351 = call i32 %349(%struct.tap_dev* %350)
  br label %352

352:                                              ; preds = %346, %341, %333
  %353 = call i32 (...) @rcu_read_unlock()
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %5, align 8
  br label %356

356:                                              ; preds = %352, %327
  %357 = load i64, i64* %5, align 8
  ret i64 %357
}

declare dso_local i32 @SKB_MAX_HEAD(i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @copy_from_iter_full(%struct.virtio_net_hdr*, i32, %struct.iov_iter*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

declare dso_local i64 @tap16_to_cpu(%struct.tap_queue*, i64) #1

declare dso_local i64 @cpu_to_tap16(%struct.tap_queue*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sock_flag(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local %struct.sk_buff* @tap_alloc_skb(i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @zerocopy_sg_from_iter(%struct.sk_buff*, %struct.iov_iter*) #1

declare dso_local i32 @skb_copy_datagram_from_iter(%struct.sk_buff*, i32, %struct.iov_iter*, i64) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @virtio_net_hdr_to_skb(%struct.sk_buff*, %struct.virtio_net_hdr*, i32) #1

declare dso_local i32 @tap_is_little_endian(%struct.tap_queue*) #1

declare dso_local i32 @skb_probe_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @__vlan_get_protocol(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tap_dev* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
