; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.tun_file = type { %struct.TYPE_11__, %struct.TYPE_9__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.iov_iter = type { i32 }
%struct.tun_pi = type { i32, i8*, i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i32*, i8*, %struct.TYPE_13__*, i32 }
%struct.virtio_net_hdr = type { i32, i8*, i64, i64, i64, i32, i32 }
%struct.tun_pcpu_stats = type { i64, i32, i32 }
%struct.ubuf_info = type { i32 (%struct.ubuf_info*, i32)* }
%struct.bpf_prog = type { i32 }
%struct.TYPE_10__ = type { i32, i8* }

@ETH_P_IP = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@GOODCOPY_LEN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SKBTX_DEV_ZEROCOPY = common dso_local global i32 0, align 4
@SKBTX_SHARED_FRAG = common dso_local global i32 0, align 4
@XDP_PASS = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@CONFIG_4KSTACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tun_struct*, %struct.tun_file*, i8*, %struct.iov_iter*, i32, i32)* @tun_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tun_get_user(%struct.tun_struct* %0, %struct.tun_file* %1, i8* %2, %struct.iov_iter* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tun_struct*, align 8
  %9 = alloca %struct.tun_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iov_iter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tun_pi, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.virtio_net_hdr, align 8
  %21 = alloca %struct.tun_pcpu_stats*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iov_iter, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ubuf_info*, align 8
  %33 = alloca %struct.bpf_prog*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca %struct.sk_buff_head*, align 8
  %37 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %8, align 8
  store %struct.tun_file* %1, %struct.tun_file** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %38 = bitcast %struct.tun_pi* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 48, i1 false)
  %39 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %14, i32 0, i32 1
  %40 = load i32, i32* @ETH_P_IP, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %39, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %45 = call i64 @iov_iter_count(%struct.iov_iter* %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  store i64 %46, i64* %17, align 8
  %47 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %48 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %18, align 8
  %50 = bitcast %struct.virtio_net_hdr* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %50, i8 0, i64 48, i1 false)
  store i32 0, i32* %24, align 4
  store i64 0, i64* %26, align 8
  store i32 1, i32* %27, align 4
  %51 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %52 = call i32 @tun_napi_frags_enabled(%struct.tun_file* %51)
  store i32 %52, i32* %28, align 4
  %53 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %54 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFF_NO_PI, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %6
  %60 = load i64, i64* %17, align 8
  %61 = icmp ult i64 %60, 48
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %7, align 8
  br label %702

65:                                               ; preds = %59
  %66 = load i64, i64* %17, align 8
  %67 = sub i64 %66, 48
  store i64 %67, i64* %17, align 8
  %68 = bitcast %struct.tun_pi* %14 to %struct.virtio_net_hdr*
  %69 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %70 = call i32 @copy_from_iter_full(%struct.virtio_net_hdr* %68, i32 48, %struct.iov_iter* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* @EFAULT, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %7, align 8
  br label %702

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %6
  %77 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %78 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IFF_VNET_HDR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %160

83:                                               ; preds = %76
  %84 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %85 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @READ_ONCE(i32 %86)
  store i32 %87, i32* %29, align 4
  %88 = load i64, i64* %17, align 8
  %89 = load i32, i32* %29, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i64, i64* @EINVAL, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %7, align 8
  br label %702

95:                                               ; preds = %83
  %96 = load i32, i32* %29, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %17, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %17, align 8
  %100 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %101 = call i32 @copy_from_iter_full(%struct.virtio_net_hdr* %20, i32 48, %struct.iov_iter* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i64, i64* @EFAULT, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %7, align 8
  br label %702

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %106
  %113 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %114 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @tun16_to_cpu(%struct.tun_struct* %113, i64 %115)
  %117 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %118 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @tun16_to_cpu(%struct.tun_struct* %117, i64 %119)
  %121 = add nsw i32 %116, %120
  %122 = add nsw i32 %121, 2
  %123 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %124 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @tun16_to_cpu(%struct.tun_struct* %123, i64 %125)
  %127 = icmp sgt i32 %122, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %112
  %129 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %130 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %131 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @tun16_to_cpu(%struct.tun_struct* %130, i64 %132)
  %134 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %135 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @tun16_to_cpu(%struct.tun_struct* %134, i64 %136)
  %138 = add nsw i32 %133, %137
  %139 = add nsw i32 %138, 2
  %140 = call i64 @cpu_to_tun16(%struct.tun_struct* %129, i32 %139)
  %141 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %128, %112, %106
  %143 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %144 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @tun16_to_cpu(%struct.tun_struct* %143, i64 %145)
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %17, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i64, i64* @EINVAL, align 8
  %152 = sub i64 0, %151
  store i64 %152, i64* %7, align 8
  br label %702

153:                                              ; preds = %142
  %154 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %155 = load i32, i32* %29, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 48
  %158 = trunc i64 %157 to i32
  %159 = call i32 @iov_iter_advance(%struct.iov_iter* %154, i32 %158)
  br label %160

160:                                              ; preds = %153, %76
  %161 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %162 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TUN_TYPE_MASK, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 129
  br i1 %166, label %167, label %197

167:                                              ; preds = %160
  %168 = load i64, i64* @NET_IP_ALIGN, align 8
  %169 = load i64, i64* %18, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %18, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* @ETH_HLEN, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %188, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %180 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @tun16_to_cpu(%struct.tun_struct* %179, i64 %181)
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* @ETH_HLEN, align 8
  %185 = icmp ult i64 %183, %184
  br label %186

186:                                              ; preds = %178, %174
  %187 = phi i1 [ false, %174 ], [ %185, %178 ]
  br label %188

188:                                              ; preds = %186, %167
  %189 = phi i1 [ true, %167 ], [ %187, %186 ]
  %190 = zext i1 %189 to i32
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i64, i64* @EINVAL, align 8
  %195 = sub i64 0, %194
  store i64 %195, i64* %7, align 8
  br label %702

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %160
  %198 = load i64, i64* %18, align 8
  %199 = call i32 @SKB_MAX_HEAD(i64 %198)
  store i32 %199, i32* %22, align 4
  %200 = load i8*, i8** %10, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %234

202:                                              ; preds = %197
  %203 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %204 = bitcast %struct.iov_iter* %30 to i8*
  %205 = bitcast %struct.iov_iter* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 4 %205, i64 4, i1 false)
  %206 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %211 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @tun16_to_cpu(%struct.tun_struct* %210, i64 %212)
  br label %216

214:                                              ; preds = %202
  %215 = load i32, i32* @GOODCOPY_LEN, align 4
  br label %216

216:                                              ; preds = %214, %209
  %217 = phi i32 [ %213, %209 ], [ %215, %214 ]
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* %22, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %23, align 4
  br label %223

223:                                              ; preds = %221, %216
  %224 = load i32, i32* %23, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %19, align 8
  %226 = load i32, i32* %23, align 4
  %227 = call i32 @iov_iter_advance(%struct.iov_iter* %30, i32 %226)
  %228 = load i32, i32* @INT_MAX, align 4
  %229 = call i64 @iov_iter_npages(%struct.iov_iter* %30, i32 %228)
  %230 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %231 = icmp sle i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 1, i32* %24, align 4
  br label %233

233:                                              ; preds = %232, %223
  br label %234

234:                                              ; preds = %233, %197
  %235 = load i32, i32* %28, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %269, label %237

237:                                              ; preds = %234
  %238 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %239 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %240 = load i64, i64* %17, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %24, align 4
  %243 = call i64 @tun_can_build_skb(%struct.tun_struct* %238, %struct.tun_file* %239, i64 %240, i32 %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %237
  %246 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %247 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %248 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %249 = load i64, i64* %17, align 8
  %250 = call %struct.sk_buff* @tun_build_skb(%struct.tun_struct* %246, %struct.tun_file* %247, %struct.iov_iter* %248, %struct.virtio_net_hdr* %20, i64 %249, i32* %27)
  store %struct.sk_buff* %250, %struct.sk_buff** %15, align 8
  %251 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %252 = call i64 @IS_ERR(%struct.sk_buff* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %245
  %255 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %256 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %255, i32 0, i32 3
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @this_cpu_inc(i32 %259)
  %261 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %262 = call i64 @PTR_ERR(%struct.sk_buff* %261)
  store i64 %262, i64* %7, align 8
  br label %702

263:                                              ; preds = %245
  %264 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %265 = icmp ne %struct.sk_buff* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = load i64, i64* %16, align 8
  store i64 %267, i64* %7, align 8
  br label %702

268:                                              ; preds = %263
  br label %377

269:                                              ; preds = %237, %234
  %270 = load i32, i32* %24, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %291, label %272

272:                                              ; preds = %269
  %273 = load i64, i64* %17, align 8
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %23, align 4
  %275 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %276 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @tun16_to_cpu(%struct.tun_struct* %275, i64 %277)
  %279 = load i32, i32* %22, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %272
  %282 = load i32, i32* %22, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %19, align 8
  br label %290

284:                                              ; preds = %272
  %285 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %286 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %20, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @tun16_to_cpu(%struct.tun_struct* %285, i64 %287)
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %19, align 8
  br label %290

290:                                              ; preds = %284, %281
  br label %291

291:                                              ; preds = %290, %269
  %292 = load i32, i32* %28, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %291
  %295 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %296 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %295, i32 0, i32 3
  %297 = call i32 @mutex_lock(i32* %296)
  %298 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %299 = load i32, i32* %23, align 4
  %300 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %301 = call %struct.sk_buff* @tun_napi_alloc_frags(%struct.tun_file* %298, i32 %299, %struct.iov_iter* %300)
  store %struct.sk_buff* %301, %struct.sk_buff** %15, align 8
  store i32 0, i32* %24, align 4
  br label %309

302:                                              ; preds = %291
  %303 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %304 = load i64, i64* %18, align 8
  %305 = load i32, i32* %23, align 4
  %306 = load i64, i64* %19, align 8
  %307 = load i32, i32* %12, align 4
  %308 = call %struct.sk_buff* @tun_alloc_skb(%struct.tun_file* %303, i64 %304, i32 %305, i64 %306, i32 %307)
  store %struct.sk_buff* %308, %struct.sk_buff** %15, align 8
  br label %309

309:                                              ; preds = %302, %294
  %310 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %311 = call i64 @IS_ERR(%struct.sk_buff* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %309
  %314 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %315 = call i64 @PTR_ERR(%struct.sk_buff* %314)
  %316 = load i64, i64* @EAGAIN, align 8
  %317 = sub i64 0, %316
  %318 = icmp ne i64 %315, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %313
  %320 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %321 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %320, i32 0, i32 3
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @this_cpu_inc(i32 %324)
  br label %326

326:                                              ; preds = %319, %313
  %327 = load i32, i32* %28, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %331 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %330, i32 0, i32 3
  %332 = call i32 @mutex_unlock(i32* %331)
  br label %333

333:                                              ; preds = %329, %326
  %334 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %335 = call i64 @PTR_ERR(%struct.sk_buff* %334)
  store i64 %335, i64* %7, align 8
  br label %702

336:                                              ; preds = %309
  %337 = load i32, i32* %24, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %341 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %342 = call i32 @zerocopy_sg_from_iter(%struct.sk_buff* %340, %struct.iov_iter* %341)
  store i32 %342, i32* %25, align 4
  br label %348

343:                                              ; preds = %336
  %344 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %345 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %346 = load i64, i64* %17, align 8
  %347 = call i32 @skb_copy_datagram_from_iter(%struct.sk_buff* %344, i32 0, %struct.iov_iter* %345, i64 %346)
  store i32 %347, i32* %25, align 4
  br label %348

348:                                              ; preds = %343, %339
  %349 = load i32, i32* %25, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %376

351:                                              ; preds = %348
  %352 = load i64, i64* @EFAULT, align 8
  %353 = sub i64 0, %352
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %25, align 4
  br label %355

355:                                              ; preds = %573, %351
  %356 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %357 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %356, i32 0, i32 3
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @this_cpu_inc(i32 %360)
  %362 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %363 = call i32 @kfree_skb(%struct.sk_buff* %362)
  %364 = load i32, i32* %28, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %355
  %367 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %368 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  store i32* null, i32** %369, align 8
  %370 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %371 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %370, i32 0, i32 3
  %372 = call i32 @mutex_unlock(i32* %371)
  br label %373

373:                                              ; preds = %366, %355
  %374 = load i32, i32* %25, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %7, align 8
  br label %702

376:                                              ; preds = %348
  br label %377

377:                                              ; preds = %376, %268
  %378 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %379 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %380 = call i32 @tun_is_little_endian(%struct.tun_struct* %379)
  %381 = call i64 @virtio_net_hdr_to_skb(%struct.sk_buff* %378, %struct.virtio_net_hdr* %20, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %404

383:                                              ; preds = %377
  %384 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %385 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %384, i32 0, i32 3
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @this_cpu_inc(i32 %388)
  %390 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %391 = call i32 @kfree_skb(%struct.sk_buff* %390)
  %392 = load i32, i32* %28, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %383
  %395 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %396 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  store i32* null, i32** %397, align 8
  %398 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %399 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %398, i32 0, i32 3
  %400 = call i32 @mutex_unlock(i32* %399)
  br label %401

401:                                              ; preds = %394, %383
  %402 = load i64, i64* @EINVAL, align 8
  %403 = sub i64 0, %402
  store i64 %403, i64* %7, align 8
  br label %702

404:                                              ; preds = %377
  %405 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %406 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @TUN_TYPE_MASK, align 4
  %409 = and i32 %407, %408
  switch i32 %409, label %477 [
    i32 128, label %410
    i32 129, label %465
  ]

410:                                              ; preds = %404
  %411 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %412 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @IFF_NO_PI, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %453

417:                                              ; preds = %410
  %418 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %419 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %417
  %423 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %424 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = ashr i32 %427, 4
  br label %430

429:                                              ; preds = %417
  br label %430

430:                                              ; preds = %429, %422
  %431 = phi i32 [ %428, %422 ], [ 0, %429 ]
  store i32 %431, i32* %31, align 4
  %432 = load i32, i32* %31, align 4
  switch i32 %432, label %441 [
    i32 4, label %433
    i32 6, label %437
  ]

433:                                              ; preds = %430
  %434 = load i32, i32* @ETH_P_IP, align 4
  %435 = call i8* @htons(i32 %434)
  %436 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %14, i32 0, i32 1
  store i8* %435, i8** %436, align 8
  br label %452

437:                                              ; preds = %430
  %438 = load i32, i32* @ETH_P_IPV6, align 4
  %439 = call i8* @htons(i32 %438)
  %440 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %14, i32 0, i32 1
  store i8* %439, i8** %440, align 8
  br label %452

441:                                              ; preds = %430
  %442 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %443 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %442, i32 0, i32 3
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @this_cpu_inc(i32 %446)
  %448 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %449 = call i32 @kfree_skb(%struct.sk_buff* %448)
  %450 = load i64, i64* @EINVAL, align 8
  %451 = sub i64 0, %450
  store i64 %451, i64* %7, align 8
  br label %702

452:                                              ; preds = %437, %433
  br label %453

453:                                              ; preds = %452, %410
  %454 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %455 = call i32 @skb_reset_mac_header(%struct.sk_buff* %454)
  %456 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %14, i32 0, i32 1
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %459 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %458, i32 0, i32 1
  store i8* %457, i8** %459, align 8
  %460 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %461 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %460, i32 0, i32 4
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %464 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %463, i32 0, i32 2
  store %struct.TYPE_13__* %462, %struct.TYPE_13__** %464, align 8
  br label %477

465:                                              ; preds = %404
  %466 = load i32, i32* %28, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %476, label %468

468:                                              ; preds = %465
  %469 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %470 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %471 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %470, i32 0, i32 4
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %471, align 8
  %473 = call i8* @eth_type_trans(%struct.sk_buff* %469, %struct.TYPE_13__* %472)
  %474 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %475 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %474, i32 0, i32 1
  store i8* %473, i8** %475, align 8
  br label %476

476:                                              ; preds = %468, %465
  br label %477

477:                                              ; preds = %404, %476, %453
  %478 = load i32, i32* %24, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %497

480:                                              ; preds = %477
  %481 = load i8*, i8** %10, align 8
  %482 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %483 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %482)
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 1
  store i8* %481, i8** %484, align 8
  %485 = load i32, i32* @SKBTX_DEV_ZEROCOPY, align 4
  %486 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %487 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %486)
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = or i32 %489, %485
  store i32 %490, i32* %488, align 8
  %491 = load i32, i32* @SKBTX_SHARED_FRAG, align 4
  %492 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %493 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %492)
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = or i32 %495, %491
  store i32 %496, i32* %494, align 8
  br label %509

497:                                              ; preds = %477
  %498 = load i8*, i8** %10, align 8
  %499 = icmp ne i8* %498, null
  br i1 %499, label %500, label %508

500:                                              ; preds = %497
  %501 = load i8*, i8** %10, align 8
  %502 = bitcast i8* %501 to %struct.ubuf_info*
  store %struct.ubuf_info* %502, %struct.ubuf_info** %32, align 8
  %503 = load %struct.ubuf_info*, %struct.ubuf_info** %32, align 8
  %504 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %503, i32 0, i32 0
  %505 = load i32 (%struct.ubuf_info*, i32)*, i32 (%struct.ubuf_info*, i32)** %504, align 8
  %506 = load %struct.ubuf_info*, %struct.ubuf_info** %32, align 8
  %507 = call i32 %505(%struct.ubuf_info* %506, i32 0)
  br label %508

508:                                              ; preds = %500, %497
  br label %509

509:                                              ; preds = %508, %480
  %510 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %511 = call i32 @skb_reset_network_header(%struct.sk_buff* %510)
  %512 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %513 = call i32 @skb_probe_transport_header(%struct.sk_buff* %512)
  %514 = load i32, i32* %27, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %540

516:                                              ; preds = %509
  %517 = call i32 (...) @local_bh_disable()
  %518 = call i32 (...) @rcu_read_lock()
  %519 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %520 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %519, i32 0, i32 6
  %521 = load i32, i32* %520, align 4
  %522 = call %struct.bpf_prog* @rcu_dereference(i32 %521)
  store %struct.bpf_prog* %522, %struct.bpf_prog** %33, align 8
  %523 = load %struct.bpf_prog*, %struct.bpf_prog** %33, align 8
  %524 = icmp ne %struct.bpf_prog* %523, null
  br i1 %524, label %525, label %537

525:                                              ; preds = %516
  %526 = load %struct.bpf_prog*, %struct.bpf_prog** %33, align 8
  %527 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %528 = call i32 @do_xdp_generic(%struct.bpf_prog* %526, %struct.sk_buff* %527)
  store i32 %528, i32* %34, align 4
  %529 = load i32, i32* %34, align 4
  %530 = load i32, i32* @XDP_PASS, align 4
  %531 = icmp ne i32 %529, %530
  br i1 %531, label %532, label %536

532:                                              ; preds = %525
  %533 = call i32 (...) @rcu_read_unlock()
  %534 = call i32 (...) @local_bh_enable()
  %535 = load i64, i64* %16, align 8
  store i64 %535, i64* %7, align 8
  br label %702

536:                                              ; preds = %525
  br label %537

537:                                              ; preds = %536, %516
  %538 = call i32 (...) @rcu_read_unlock()
  %539 = call i32 (...) @local_bh_enable()
  br label %540

540:                                              ; preds = %537, %509
  %541 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %542 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @rcu_access_pointer(i32 %543)
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %559, label %546

546:                                              ; preds = %540
  %547 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %548 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = icmp sgt i32 %549, 1
  br i1 %550, label %551, label %559

551:                                              ; preds = %546
  %552 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %553 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %551
  %557 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %558 = call i64 @__skb_get_hash_symmetric(%struct.sk_buff* %557)
  store i64 %558, i64* %26, align 8
  br label %559

559:                                              ; preds = %556, %551, %546, %540
  %560 = call i32 (...) @rcu_read_lock()
  %561 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %562 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %561, i32 0, i32 4
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* @IFF_UP, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  %569 = xor i1 %568, true
  %570 = zext i1 %569 to i32
  %571 = call i64 @unlikely(i32 %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %577

573:                                              ; preds = %559
  %574 = load i32, i32* @EIO, align 4
  %575 = sub nsw i32 0, %574
  store i32 %575, i32* %25, align 4
  %576 = call i32 (...) @rcu_read_unlock()
  br label %355

577:                                              ; preds = %559
  %578 = load i32, i32* %28, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %623

580:                                              ; preds = %577
  %581 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %582 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %581, i32 0, i32 4
  %583 = load %struct.TYPE_13__*, %struct.TYPE_13__** %582, align 8
  %584 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %585 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %584, i32 0, i32 0
  %586 = load i32*, i32** %585, align 8
  %587 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %588 = call i64 @skb_headlen(%struct.sk_buff* %587)
  %589 = call i64 @eth_get_headlen(%struct.TYPE_13__* %583, i32* %586, i64 %588)
  store i64 %589, i64* %35, align 8
  %590 = load i64, i64* %35, align 8
  %591 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %592 = call i64 @skb_headlen(%struct.sk_buff* %591)
  %593 = icmp sgt i64 %590, %592
  %594 = zext i1 %593 to i32
  %595 = call i64 @unlikely(i32 %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %614

597:                                              ; preds = %580
  %598 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %599 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %598, i32 0, i32 3
  %600 = load %struct.TYPE_12__*, %struct.TYPE_12__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @this_cpu_inc(i32 %602)
  %604 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %605 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %604, i32 0, i32 0
  %606 = call i32 @napi_free_frags(%struct.TYPE_11__* %605)
  %607 = call i32 (...) @rcu_read_unlock()
  %608 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %609 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %608, i32 0, i32 3
  %610 = call i32 @mutex_unlock(i32* %609)
  %611 = call i32 @WARN_ON(i32 1)
  %612 = load i64, i64* @ENOMEM, align 8
  %613 = sub i64 0, %612
  store i64 %613, i64* %7, align 8
  br label %702

614:                                              ; preds = %580
  %615 = call i32 (...) @local_bh_disable()
  %616 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %617 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %616, i32 0, i32 0
  %618 = call i32 @napi_gro_frags(%struct.TYPE_11__* %617)
  %619 = call i32 (...) @local_bh_enable()
  %620 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %621 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %620, i32 0, i32 3
  %622 = call i32 @mutex_unlock(i32* %621)
  br label %670

623:                                              ; preds = %577
  %624 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %625 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %624, i32 0, i32 2
  %626 = load i64, i64* %625, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %655

628:                                              ; preds = %623
  %629 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %630 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 0
  store %struct.sk_buff_head* %631, %struct.sk_buff_head** %36, align 8
  %632 = load %struct.sk_buff_head*, %struct.sk_buff_head** %36, align 8
  %633 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %632, i32 0, i32 0
  %634 = call i32 @spin_lock_bh(i32* %633)
  %635 = load %struct.sk_buff_head*, %struct.sk_buff_head** %36, align 8
  %636 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %637 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %635, %struct.sk_buff* %636)
  %638 = load %struct.sk_buff_head*, %struct.sk_buff_head** %36, align 8
  %639 = call i32 @skb_queue_len(%struct.sk_buff_head* %638)
  store i32 %639, i32* %37, align 4
  %640 = load %struct.sk_buff_head*, %struct.sk_buff_head** %36, align 8
  %641 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %640, i32 0, i32 0
  %642 = call i32 @spin_unlock(i32* %641)
  %643 = load i32, i32* %13, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %628
  %646 = load i32, i32* %37, align 4
  %647 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %648 = icmp sgt i32 %646, %647
  br i1 %648, label %649, label %653

649:                                              ; preds = %645, %628
  %650 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %651 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %650, i32 0, i32 0
  %652 = call i32 @napi_schedule(%struct.TYPE_11__* %651)
  br label %653

653:                                              ; preds = %649, %645
  %654 = call i32 (...) @local_bh_enable()
  br label %669

655:                                              ; preds = %623
  %656 = load i32, i32* @CONFIG_4KSTACKS, align 4
  %657 = call i32 @IS_ENABLED(i32 %656)
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %665, label %659

659:                                              ; preds = %655
  %660 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %661 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %662 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %663 = load i32, i32* %13, align 4
  %664 = call i32 @tun_rx_batched(%struct.tun_struct* %660, %struct.tun_file* %661, %struct.sk_buff* %662, i32 %663)
  br label %668

665:                                              ; preds = %655
  %666 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %667 = call i32 @netif_rx_ni(%struct.sk_buff* %666)
  br label %668

668:                                              ; preds = %665, %659
  br label %669

669:                                              ; preds = %668, %653
  br label %670

670:                                              ; preds = %669, %614
  %671 = call i32 (...) @rcu_read_unlock()
  %672 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %673 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %672, i32 0, i32 3
  %674 = load %struct.TYPE_12__*, %struct.TYPE_12__** %673, align 8
  %675 = call %struct.tun_pcpu_stats* @get_cpu_ptr(%struct.TYPE_12__* %674)
  store %struct.tun_pcpu_stats* %675, %struct.tun_pcpu_stats** %21, align 8
  %676 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %21, align 8
  %677 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %676, i32 0, i32 1
  %678 = call i32 @u64_stats_update_begin(i32* %677)
  %679 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %21, align 8
  %680 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %680, align 4
  %683 = load i64, i64* %17, align 8
  %684 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %21, align 8
  %685 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = add i64 %686, %683
  store i64 %687, i64* %685, align 8
  %688 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %21, align 8
  %689 = getelementptr inbounds %struct.tun_pcpu_stats, %struct.tun_pcpu_stats* %688, i32 0, i32 1
  %690 = call i32 @u64_stats_update_end(i32* %689)
  %691 = load %struct.tun_pcpu_stats*, %struct.tun_pcpu_stats** %21, align 8
  %692 = call i32 @put_cpu_ptr(%struct.tun_pcpu_stats* %691)
  %693 = load i64, i64* %26, align 8
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %695, label %700

695:                                              ; preds = %670
  %696 = load %struct.tun_struct*, %struct.tun_struct** %8, align 8
  %697 = load i64, i64* %26, align 8
  %698 = load %struct.tun_file*, %struct.tun_file** %9, align 8
  %699 = call i32 @tun_flow_update(%struct.tun_struct* %696, i64 %697, %struct.tun_file* %698)
  br label %700

700:                                              ; preds = %695, %670
  %701 = load i64, i64* %16, align 8
  store i64 %701, i64* %7, align 8
  br label %702

702:                                              ; preds = %700, %597, %532, %441, %401, %373, %333, %266, %254, %193, %150, %103, %92, %72, %62
  %703 = load i64, i64* %7, align 8
  ret i64 %703
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @tun_napi_frags_enabled(%struct.tun_file*) #2

declare dso_local i32 @copy_from_iter_full(%struct.virtio_net_hdr*, i32, %struct.iov_iter*) #2

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i32 @tun16_to_cpu(%struct.tun_struct*, i64) #2

declare dso_local i64 @cpu_to_tun16(%struct.tun_struct*, i32) #2

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @SKB_MAX_HEAD(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @iov_iter_npages(%struct.iov_iter*, i32) #2

declare dso_local i64 @tun_can_build_skb(%struct.tun_struct*, %struct.tun_file*, i64, i32, i32) #2

declare dso_local %struct.sk_buff* @tun_build_skb(%struct.tun_struct*, %struct.tun_file*, %struct.iov_iter*, %struct.virtio_net_hdr*, i64, i32*) #2

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #2

declare dso_local i32 @this_cpu_inc(i32) #2

declare dso_local i64 @PTR_ERR(%struct.sk_buff*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.sk_buff* @tun_napi_alloc_frags(%struct.tun_file*, i32, %struct.iov_iter*) #2

declare dso_local %struct.sk_buff* @tun_alloc_skb(%struct.tun_file*, i64, i32, i64, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @zerocopy_sg_from_iter(%struct.sk_buff*, %struct.iov_iter*) #2

declare dso_local i32 @skb_copy_datagram_from_iter(%struct.sk_buff*, i32, %struct.iov_iter*, i64) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i64 @virtio_net_hdr_to_skb(%struct.sk_buff*, %struct.virtio_net_hdr*, i32) #2

declare dso_local i32 @tun_is_little_endian(%struct.tun_struct*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #2

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #2

declare dso_local i32 @skb_probe_transport_header(%struct.sk_buff*) #2

declare dso_local i32 @local_bh_disable(...) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #2

declare dso_local i32 @do_xdp_generic(%struct.bpf_prog*, %struct.sk_buff*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @local_bh_enable(...) #2

declare dso_local i32 @rcu_access_pointer(i32) #2

declare dso_local i64 @__skb_get_hash_symmetric(%struct.sk_buff*) #2

declare dso_local i64 @eth_get_headlen(%struct.TYPE_13__*, i32*, i64) #2

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #2

declare dso_local i32 @napi_free_frags(%struct.TYPE_11__*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @napi_gro_frags(%struct.TYPE_11__*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #2

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @napi_schedule(%struct.TYPE_11__*) #2

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local i32 @tun_rx_batched(%struct.tun_struct*, %struct.tun_file*, %struct.sk_buff*, i32) #2

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #2

declare dso_local %struct.tun_pcpu_stats* @get_cpu_ptr(%struct.TYPE_12__*) #2

declare dso_local i32 @u64_stats_update_begin(i32*) #2

declare dso_local i32 @u64_stats_update_end(i32*) #2

declare dso_local i32 @put_cpu_ptr(%struct.tun_pcpu_stats*) #2

declare dso_local i32 @tun_flow_update(%struct.tun_struct*, i64, %struct.tun_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
