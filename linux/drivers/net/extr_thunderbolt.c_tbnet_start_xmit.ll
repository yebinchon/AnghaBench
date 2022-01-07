; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.net_device = type { i32 }
%struct.tbnet = type { %struct.TYPE_7__, %struct.TYPE_8__, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.thunderbolt_ip_frame_header = type { i8*, i8*, i8* }
%struct.tbnet_frame = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@TBNET_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TBNET_MATCH_FRAGS_ID = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @tbnet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tbnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thunderbolt_ip_frame_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.tbnet* @netdev_priv(%struct.net_device* %22)
  store %struct.tbnet* %23, %struct.tbnet** %6, align 8
  %24 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca %struct.tbnet_frame*, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %29 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %28, i32 0, i32 2
  %30 = call i64 @atomic_read(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @skb_headlen(%struct.sk_buff* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @TBNET_MAX_PAYLOAD_SIZE, align 4
  %41 = call i32 @DIV_ROUND_UP(i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %43 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %42, i32 0, i32 1
  %44 = call i32 @tbnet_available_buffers(%struct.TYPE_8__* %43)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %49 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_stop_queue(i32 %50)
  %52 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %325

53:                                               ; preds = %2
  %54 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %55 = call %struct.tbnet_frame* @tbnet_get_tx_buffer(%struct.tbnet* %54)
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %56
  store %struct.tbnet_frame* %55, %struct.tbnet_frame** %57, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %58
  %60 = load %struct.tbnet_frame*, %struct.tbnet_frame** %59, align 8
  %61 = icmp ne %struct.tbnet_frame* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %310

63:                                               ; preds = %53
  %64 = load i64, i64* %17, align 8
  %65 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %64
  %66 = load %struct.tbnet_frame*, %struct.tbnet_frame** %65, align 8
  %67 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.thunderbolt_ip_frame_header* @page_address(i32 %68)
  store %struct.thunderbolt_ip_frame_header* %69, %struct.thunderbolt_ip_frame_header** %10, align 8
  %70 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %71 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %70, i64 1
  %72 = bitcast %struct.thunderbolt_ip_frame_header* %71 to i8*
  store i8* %72, i8** %19, align 8
  br label %73

73:                                               ; preds = %167, %63
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @TBNET_MAX_PAYLOAD_SIZE, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %177

77:                                               ; preds = %73
  %78 = load i32, i32* @TBNET_MAX_PAYLOAD_SIZE, align 4
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* @TBNET_MAX_PAYLOAD_SIZE, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %82 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i8* @cpu_to_le16(i64 %83)
  %85 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %86 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i8* @cpu_to_le16(i64 %87)
  %89 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %90 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %149, %77
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i8*, i8** %19, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i8*, i8** %19, align 8
  %105 = zext i32 %103 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  store i8* %106, i8** %19, align 8
  %107 = load i32, i32* %21, align 4
  %108 = load i8*, i8** %16, align 8
  %109 = zext i32 %107 to i64
  %110 = getelementptr i8, i8* %108, i64 %109
  store i8* %110, i8** %16, align 8
  br label %152

111:                                              ; preds = %91
  %112 = load i8*, i8** %19, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @memcpy(i8* %112, i8* %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %21, align 4
  %118 = sub i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %19, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr i8, i8* %120, i64 %121
  store i8* %122, i8** %19, align 8
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %111
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @kunmap_atomic(i8* %126)
  store i32 0, i32* %18, align 4
  br label %128

128:                                              ; preds = %125, %111
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ult i32 %129, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load i32, i32* %15, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %15, align 4
  %139 = call i8* @tbnet_kmap_frag(%struct.sk_buff* %136, i32 %137, i32* %11)
  store i8* %139, i8** %16, align 8
  store i32 1, i32* %18, align 4
  br label %148

140:                                              ; preds = %128
  %141 = load i32, i32* %21, align 4
  %142 = icmp ugt i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %310

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %21, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %91, label %152

152:                                              ; preds = %149, %95
  %153 = load i32, i32* @TBNET_MAX_PAYLOAD_SIZE, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sub i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i64, i64* %17, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %17, align 8
  %158 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %159 = call %struct.tbnet_frame* @tbnet_get_tx_buffer(%struct.tbnet* %158)
  %160 = load i64, i64* %17, align 8
  %161 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %160
  store %struct.tbnet_frame* %159, %struct.tbnet_frame** %161, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %162
  %164 = load %struct.tbnet_frame*, %struct.tbnet_frame** %163, align 8
  %165 = icmp ne %struct.tbnet_frame* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %152
  br label %310

167:                                              ; preds = %152
  %168 = load i64, i64* %17, align 8
  %169 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %168
  %170 = load %struct.tbnet_frame*, %struct.tbnet_frame** %169, align 8
  %171 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call %struct.thunderbolt_ip_frame_header* @page_address(i32 %172)
  store %struct.thunderbolt_ip_frame_header* %173, %struct.thunderbolt_ip_frame_header** %10, align 8
  %174 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %175 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %174, i64 1
  %176 = bitcast %struct.thunderbolt_ip_frame_header* %175 to i8*
  store i8* %176, i8** %19, align 8
  br label %73

177:                                              ; preds = %73
  %178 = load i32, i32* %12, align 4
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %181 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  %182 = load i64, i64* %17, align 8
  %183 = call i8* @cpu_to_le16(i64 %182)
  %184 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %185 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load i64, i64* %9, align 8
  %187 = call i8* @cpu_to_le16(i64 %186)
  %188 = load %struct.thunderbolt_ip_frame_header*, %struct.thunderbolt_ip_frame_header** %10, align 8
  %189 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, %struct.thunderbolt_ip_frame_header* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = add i64 %191, 24
  %193 = trunc i64 %192 to i32
  %194 = load i64, i64* %17, align 8
  %195 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %194
  %196 = load %struct.tbnet_frame*, %struct.tbnet_frame** %195, align 8
  %197 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 4
  br label %199

199:                                              ; preds = %240, %177
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %199
  %204 = load i8*, i8** %19, align 8
  %205 = load i8*, i8** %16, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @memcpy(i8* %204, i8* %205, i32 %206)
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %12, align 4
  %210 = sub i32 %209, %208
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i8*, i8** %19, align 8
  %213 = zext i32 %211 to i64
  %214 = getelementptr i8, i8* %212, i64 %213
  store i8* %214, i8** %19, align 8
  %215 = load i32, i32* %18, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %203
  %218 = load i8*, i8** %16, align 8
  %219 = call i32 @kunmap_atomic(i8* %218)
  store i32 0, i32* %18, align 4
  br label %220

220:                                              ; preds = %217, %203
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %222)
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ult i32 %221, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %15, align 4
  %231 = call i8* @tbnet_kmap_frag(%struct.sk_buff* %228, i32 %229, i32* %11)
  store i8* %231, i8** %16, align 8
  store i32 1, i32* %18, align 4
  br label %240

232:                                              ; preds = %220
  %233 = load i32, i32* %12, align 4
  %234 = icmp ugt i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %310

239:                                              ; preds = %232
  br label %240

240:                                              ; preds = %239, %227
  br label %199

241:                                              ; preds = %199
  %242 = load i8*, i8** %19, align 8
  %243 = load i8*, i8** %16, align 8
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @memcpy(i8* %242, i8* %243, i32 %244)
  %246 = load i32, i32* %18, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load i8*, i8** %16, align 8
  %250 = call i32 @kunmap_atomic(i8* %249)
  br label %251

251:                                              ; preds = %248, %241
  %252 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %254 = load i64, i64* %17, align 8
  %255 = add i64 %254, 1
  %256 = call i32 @tbnet_xmit_csum_and_map(%struct.tbnet* %252, %struct.sk_buff* %253, %struct.tbnet_frame** %27, i64 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %251
  br label %310

259:                                              ; preds = %251
  store i32 0, i32* %14, align 4
  br label %260

260:                                              ; preds = %277, %259
  %261 = load i32, i32* %14, align 4
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %17, align 8
  %264 = add i64 %263, 1
  %265 = icmp ult i64 %262, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %260
  %267 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %268 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.tbnet_frame*, %struct.tbnet_frame** %27, i64 %272
  %274 = load %struct.tbnet_frame*, %struct.tbnet_frame** %273, align 8
  %275 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %274, i32 0, i32 0
  %276 = call i32 @tb_ring_tx(i32 %270, %struct.TYPE_9__* %275)
  br label %277

277:                                              ; preds = %266
  %278 = load i32, i32* %14, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %260

280:                                              ; preds = %260
  %281 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %282 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %281, i32 0, i32 3
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @TBNET_MATCH_FRAGS_ID, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %280
  %290 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %291 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %290, i32 0, i32 2
  %292 = call i32 @atomic_inc(i32* %291)
  br label %293

293:                                              ; preds = %289, %280
  %294 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %295 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %300 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %303 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add i32 %305, %301
  store i32 %306, i32* %304, align 8
  %307 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %308 = call i32 @dev_consume_skb_any(%struct.sk_buff* %307)
  %309 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %309, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %325

310:                                              ; preds = %258, %238, %166, %146, %62
  %311 = load i64, i64* %17, align 8
  %312 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %313 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = sub i64 %315, %311
  store i64 %316, i64* %314, align 8
  %317 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %318 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %317)
  %319 = load %struct.tbnet*, %struct.tbnet** %6, align 8
  %320 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %324, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %325

325:                                              ; preds = %310, %293, %47
  %326 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %326)
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local %struct.tbnet* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tbnet_available_buffers(%struct.TYPE_8__*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local %struct.tbnet_frame* @tbnet_get_tx_buffer(%struct.tbnet*) #1

declare dso_local %struct.thunderbolt_ip_frame_header* @page_address(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @tbnet_kmap_frag(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tbnet_xmit_csum_and_map(%struct.tbnet*, %struct.sk_buff*, %struct.tbnet_frame**, i64) #1

declare dso_local i32 @tb_ring_tx(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
