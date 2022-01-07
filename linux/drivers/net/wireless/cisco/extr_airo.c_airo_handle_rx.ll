; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_18__*, i32*, i32, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.sk_buff = type { i32, i32, i32*, i32 }
%struct.rx_hdr = type { i64*, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@FLAG_MPI = common dso_local global i32 0, align 4
@FLAG_802_11 = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_RX = common dso_local global i32 0, align 4
@RXFID = common dso_local global i32 0, align 4
@BAP0 = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad size %d\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"gaplen too big. Problems will follow...\00", align 1
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @airo_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_rx(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rx_hdr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @FLAG_MPI, align 4
  %16 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load i32, i32* @FLAG_802_11, align 4
  %22 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %28 = call i32 @mpi_receive_802_11(%struct.airo_info* %27)
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %31 = call i32 @mpi_receive_802_3(%struct.airo_info* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %34 = load i32, i32* @EVACK, align 4
  %35 = load i32, i32* @EV_RX, align 4
  %36 = call i32 @OUT4500(%struct.airo_info* %33, i32 %34, i32 %35)
  br label %303

37:                                               ; preds = %1
  %38 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %39 = load i32, i32* @RXFID, align 4
  %40 = call i32 @IN4500(%struct.airo_info* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @FLAG_802_11, align 4
  %42 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 2
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %37
  %47 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @BAP0, align 4
  %50 = call i32 @bap_setup(%struct.airo_info* %47, i32 %48, i32 4, i32 %49)
  %51 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %52 = bitcast %struct.rx_hdr* %12 to i64*
  %53 = load i32, i32* @BAP0, align 4
  %54 = call i32 @bap_read(%struct.airo_info* %51, i64* %52, i32 24, i32 %53)
  %55 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @le16_to_cpu(i64 %56)
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %60, %46
  %63 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %64 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %67, %62
  br label %79

70:                                               ; preds = %37
  %71 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @BAP0, align 4
  %74 = call i32 @bap_setup(%struct.airo_info* %71, i32 %72, i32 54, i32 %73)
  %75 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %76 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  %77 = load i32, i32* @BAP0, align 4
  %78 = call i32 @bap_read(%struct.airo_info* %75, i64* %76, i32 2, i32 %77)
  br label %79

79:                                               ; preds = %70, %69
  %80 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %12, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le16_to_cpu(i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @AIRO_DEF_MTU, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %88 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i32, i8*, ...) @airo_print_err(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %261

94:                                               ; preds = %79
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %261

98:                                               ; preds = %94
  %99 = load i32, i32* @FLAG_802_11, align 4
  %100 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %101 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %100, i32 0, i32 2
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %106 = load i32, i32* @BAP0, align 4
  %107 = call i32 @bap_read(%struct.airo_info* %105, i64* %4, i32 8, i32 %106)
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @header_len(i64 %108)
  store i32 %109, i32* %9, align 4
  br label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %114, %115
  %117 = add nsw i32 %116, 2
  %118 = add nsw i32 %117, 2
  %119 = call %struct.sk_buff* @dev_alloc_skb(i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %3, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %261

130:                                              ; preds = %113
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 @skb_reserve(%struct.sk_buff* %131, i32 2)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i64* @skb_put(%struct.sk_buff* %133, i32 %136)
  store i64* %137, i64** %6, align 8
  %138 = load i32, i32* @FLAG_802_11, align 4
  %139 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %140 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %139, i32 0, i32 2
  %141 = call i64 @test_bit(i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %196

143:                                              ; preds = %130
  %144 = load i64, i64* %4, align 8
  %145 = load i64*, i64** %6, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %148 = load i64*, i64** %6, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, 2
  %152 = load i32, i32* @BAP0, align 4
  %153 = call i32 @bap_read(%struct.airo_info* %147, i64* %149, i32 %151, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %154, 24
  br i1 %155, label %156, label %161

156:                                              ; preds = %143
  %157 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %158 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %159 = load i32, i32* @BAP0, align 4
  %160 = call i32 @bap_read(%struct.airo_info* %157, i64* %158, i32 6, i32 %159)
  br label %161

161:                                              ; preds = %156, %143
  %162 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %163 = load i32, i32* @BAP0, align 4
  %164 = call i32 @bap_read(%struct.airo_info* %162, i64* %5, i32 8, i32 %163)
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @le16_to_cpu(i64 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %161
  %170 = load i32, i32* %10, align 4
  %171 = icmp sle i32 %170, 8
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %174 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @BAP0, align 4
  %177 = call i32 @bap_read(%struct.airo_info* %173, i64* %174, i32 %175, i32 %176)
  br label %185

178:                                              ; preds = %169
  %179 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %180 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %179, i32 0, i32 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, ...) @airo_print_err(i32 %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %178, %172
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %188 = load i64*, i64** %6, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sdiv i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @BAP0, align 4
  %195 = call i32 @bap_read(%struct.airo_info* %187, i64* %192, i32 %193, i32 %194)
  br label %260

196:                                              ; preds = %130
  %197 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %198 = load i64*, i64** %6, align 8
  %199 = load i32, i32* @ETH_ALEN, align 4
  %200 = mul nsw i32 %199, 2
  %201 = load i32, i32* @BAP0, align 4
  %202 = call i32 @bap_read(%struct.airo_info* %197, i64* %198, i32 %200, i32 %201)
  %203 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %204 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %196
  %209 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %210 = bitcast %struct.TYPE_17__* %14 to i64*
  %211 = load i32, i32* @BAP0, align 4
  %212 = call i32 @bap_read(%struct.airo_info* %209, i64* %210, i32 4, i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ntohs(i32 %214)
  %216 = icmp sgt i32 %215, 1500
  br i1 %216, label %217, label %222

217:                                              ; preds = %208
  %218 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @BAP0, align 4
  %221 = call i32 @bap_setup(%struct.airo_info* %218, i32 %219, i32 68, i32 %220)
  br label %239

222:                                              ; preds = %208
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = icmp ule i64 %224, 4
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %228 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %227)
  br label %261

229:                                              ; preds = %222
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = sub i64 %231, 4
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %8, align 4
  %234 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %235, %236
  %238 = call i32 @skb_trim(%struct.sk_buff* %234, i32 %237)
  br label %239

239:                                              ; preds = %229, %217
  br label %240

240:                                              ; preds = %239, %196
  %241 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %242 = load i64*, i64** %6, align 8
  %243 = load i32, i32* @ETH_ALEN, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @BAP0, align 4
  %248 = call i32 @bap_read(%struct.airo_info* %241, i64* %245, i32 %246, i32 %247)
  %249 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %250 = load i64*, i64** %6, align 8
  %251 = bitcast i64* %250 to i32*
  %252 = load i32, i32* %8, align 4
  %253 = call i64 @decapsulate(%struct.airo_info* %249, %struct.TYPE_17__* %14, i32* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %240
  %256 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %257 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %256)
  br label %259

258:                                              ; preds = %240
  store i32 1, i32* %13, align 4
  br label %259

259:                                              ; preds = %258, %255
  br label %260

260:                                              ; preds = %259, %186
  br label %261

261:                                              ; preds = %260, %226, %122, %97, %86
  %262 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %263 = load i32, i32* @EVACK, align 4
  %264 = load i32, i32* @EV_RX, align 4
  %265 = call i32 @OUT4500(%struct.airo_info* %262, i32 %263, i32 %264)
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %303

268:                                              ; preds = %261
  %269 = load i32, i32* @FLAG_802_11, align 4
  %270 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %271 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %270, i32 0, i32 2
  %272 = call i64 @test_bit(i32 %269, i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %268
  %275 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %276 = call i32 @skb_reset_mac_header(%struct.sk_buff* %275)
  %277 = load i32, i32* @PACKET_OTHERHOST, align 4
  %278 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 8
  %280 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %281 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 2
  store i32* %282, i32** %284, align 8
  %285 = load i32, i32* @ETH_P_802_2, align 4
  %286 = call i32 @htons(i32 %285)
  %287 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %288 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  br label %297

289:                                              ; preds = %268
  %290 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %291 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %292 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %291, i32 0, i32 0
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = call i32 @eth_type_trans(%struct.sk_buff* %290, %struct.TYPE_18__* %293)
  %295 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %289, %274
  %298 = load i32, i32* @CHECKSUM_NONE, align 4
  %299 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %300 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %302 = call i32 @netif_rx(%struct.sk_buff* %301)
  br label %303

303:                                              ; preds = %32, %297, %261
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mpi_receive_802_11(%struct.airo_info*) #1

declare dso_local i32 @mpi_receive_802_3(%struct.airo_info*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @bap_setup(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @bap_read(%struct.airo_info*, i64*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local i32 @header_len(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @decapsulate(%struct.airo_info*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_18__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
