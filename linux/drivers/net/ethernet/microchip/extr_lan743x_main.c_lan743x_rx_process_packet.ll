; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { i32*, i32, i32, i32, i32, %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_descriptor*, %struct.TYPE_4__* }
%struct.lan743x_rx_buffer_info = type { %struct.sk_buff*, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.lan743x_rx_descriptor = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@RX_PROCESS_RESULT_NOTHING_TO_DO = common dso_local global i32 0, align 4
@RX_DESC_DATA0_OWN_ = common dso_local global i32 0, align 4
@RX_DESC_DATA0_FS_ = common dso_local global i32 0, align 4
@RX_DESC_DATA0_LS_ = common dso_local global i32 0, align 4
@RX_DESC_DATA0_EXT_ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_DESC_DATA2_TS_NS_MASK_ = common dso_local global i32 0, align 4
@RX_PROCESS_RESULT_PACKET_DROPPED = common dso_local global i32 0, align 4
@RX_PROCESS_RESULT_PACKET_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_rx*)* @lan743x_rx_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_rx_process_packet(%struct.lan743x_rx* %0) #0 {
  %2 = alloca %struct.lan743x_rx*, align 8
  %3 = alloca %struct.skb_shared_hwtstamps*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan743x_rx_buffer_info*, align 8
  %6 = alloca %struct.lan743x_rx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %2, align 8
  store %struct.skb_shared_hwtstamps* null, %struct.skb_shared_hwtstamps** %3, align 8
  %20 = load i32, i32* @RX_PROCESS_RESULT_NOTHING_TO_DO, align 4
  store i32 %20, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %21 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %22 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %30 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %1
  br label %379

34:                                               ; preds = %27
  %35 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %36 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %41 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %44 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %34
  br label %379

48:                                               ; preds = %39
  %49 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %50 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %183

54:                                               ; preds = %48
  %55 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %56 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %55, i32 0, i32 6
  %57 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %56, align 8
  %58 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %59 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %57, i64 %61
  store %struct.lan743x_rx_descriptor* %62, %struct.lan743x_rx_descriptor** %6, align 8
  %63 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %64 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RX_DESC_DATA0_OWN_, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %379

70:                                               ; preds = %54
  %71 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %72 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RX_DESC_DATA0_FS_, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %379

78:                                               ; preds = %70
  %79 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %80 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %83 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RX_DESC_DATA0_LS_, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %90 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  br label %130

92:                                               ; preds = %78
  %93 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %124, %92
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %103 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %102, i32 0, i32 6
  %104 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %104, i64 %106
  store %struct.lan743x_rx_descriptor* %107, %struct.lan743x_rx_descriptor** %6, align 8
  %108 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %109 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RX_DESC_DATA0_OWN_, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %379

115:                                              ; preds = %101
  %116 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %117 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RX_DESC_DATA0_LS_, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %10, align 4
  br label %129

124:                                              ; preds = %115
  %125 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %125, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %11, align 4
  br label %97

129:                                              ; preds = %122, %97
  br label %130

130:                                              ; preds = %129, %88
  %131 = load i32, i32* %10, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %182

133:                                              ; preds = %130
  %134 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %135 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %134, i32 0, i32 6
  %136 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %136, i64 %138
  store %struct.lan743x_rx_descriptor* %139, %struct.lan743x_rx_descriptor** %6, align 8
  %140 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %141 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RX_DESC_DATA0_EXT_, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %181

146:                                              ; preds = %133
  %147 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %146
  %155 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %156 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %155, i32 0, i32 6
  %157 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %157, i64 %159
  store %struct.lan743x_rx_descriptor* %160, %struct.lan743x_rx_descriptor** %6, align 8
  %161 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %162 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RX_DESC_DATA0_OWN_, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %379

168:                                              ; preds = %154
  %169 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %170 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RX_DESC_DATA0_EXT_, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %8, align 4
  br label %178

177:                                              ; preds = %168
  br label %379

178:                                              ; preds = %175
  br label %180

179:                                              ; preds = %146
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %180

180:                                              ; preds = %179, %178
  br label %181

181:                                              ; preds = %180, %133
  br label %182

182:                                              ; preds = %181, %130
  br label %183

183:                                              ; preds = %182, %48
  %184 = load i32, i32* %9, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %378

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %378

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %13, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %266

194:                                              ; preds = %189
  store %struct.sk_buff* null, %struct.sk_buff** %17, align 8
  %195 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %196 = call %struct.sk_buff* @lan743x_rx_allocate_skb(%struct.lan743x_rx* %195)
  store %struct.sk_buff* %196, %struct.sk_buff** %17, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @lan743x_rx_reuse_ring_element(%struct.lan743x_rx* %200, i32 %201)
  br label %313

203:                                              ; preds = %194
  %204 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %205 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %204, i32 0, i32 5
  %206 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %206, i64 %208
  store %struct.lan743x_rx_buffer_info* %209, %struct.lan743x_rx_buffer_info** %5, align 8
  %210 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %211 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %210, i32 0, i32 0
  %212 = load %struct.sk_buff*, %struct.sk_buff** %211, align 8
  store %struct.sk_buff* %212, %struct.sk_buff** %14, align 8
  %213 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %214 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %213, i32 0, i32 6
  %215 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %215, i64 %217
  store %struct.lan743x_rx_descriptor* %218, %struct.lan743x_rx_descriptor** %6, align 8
  %219 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %220 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %203
  %224 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %225 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %224, i32 0, i32 7
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %231 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %234 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %237 = call i32 @dma_unmap_single(i32* %229, i64 %232, i64 %235, i32 %236)
  %238 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %239 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %238, i32 0, i32 2
  store i64 0, i64* %239, align 8
  %240 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %241 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  br label %242

242:                                              ; preds = %223, %203
  %243 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %244 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %243, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %244, align 8
  %245 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %246 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @RX_DESC_DATA0_FRAME_LENGTH_GET_(i32 %247)
  store i32 %248, i32* %18, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sub nsw i32 %250, 4
  %252 = call i32 @skb_put(%struct.sk_buff* %249, i32 %251)
  %253 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %254 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %255 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %254, i32 0, i32 7
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @eth_type_trans(%struct.sk_buff* %253, i32 %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %261 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %265 = call i32 @lan743x_rx_init_ring_element(%struct.lan743x_rx* %262, i32 %263, %struct.sk_buff* %264)
  br label %312

266:                                              ; preds = %189
  %267 = load i32, i32* %9, align 4
  store i32 %267, i32* %19, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %282, %271
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp sge i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp sle i32 %277, %278
  br label %280

280:                                              ; preds = %276, %272
  %281 = phi i1 [ false, %272 ], [ %279, %276 ]
  br i1 %281, label %282, label %290

282:                                              ; preds = %280
  %283 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %284 = load i32, i32* %19, align 4
  %285 = call i32 @lan743x_rx_reuse_ring_element(%struct.lan743x_rx* %283, i32 %284)
  %286 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %287 = load i32, i32* %19, align 4
  %288 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %286, i32 %287)
  %289 = ptrtoint i8* %288 to i32
  store i32 %289, i32* %19, align 4
  br label %272

290:                                              ; preds = %280
  br label %311

291:                                              ; preds = %266
  br label %292

292:                                              ; preds = %302, %291
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %10, align 4
  %299 = icmp sle i32 %297, %298
  br label %300

300:                                              ; preds = %296, %292
  %301 = phi i1 [ true, %292 ], [ %299, %296 ]
  br i1 %301, label %302, label %310

302:                                              ; preds = %300
  %303 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @lan743x_rx_reuse_ring_element(%struct.lan743x_rx* %303, i32 %304)
  %306 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %307 = load i32, i32* %19, align 4
  %308 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %306, i32 %307)
  %309 = ptrtoint i8* %308 to i32
  store i32 %309, i32* %19, align 4
  br label %292

310:                                              ; preds = %300
  br label %311

311:                                              ; preds = %310, %290
  br label %312

312:                                              ; preds = %311, %242
  br label %313

313:                                              ; preds = %312, %199
  %314 = load i32, i32* %8, align 4
  %315 = icmp sge i32 %314, 0
  br i1 %315, label %316, label %341

316:                                              ; preds = %313
  %317 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %318 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %317, i32 0, i32 6
  %319 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %319, i64 %321
  store %struct.lan743x_rx_descriptor* %322, %struct.lan743x_rx_descriptor** %6, align 8
  %323 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %324 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %323, i32 0, i32 5
  %325 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %325, i64 %327
  store %struct.lan743x_rx_buffer_info* %328, %struct.lan743x_rx_buffer_info** %5, align 8
  %329 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %330 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %15, align 4
  %332 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %333 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @RX_DESC_DATA2_TS_NS_MASK_, align 4
  %336 = and i32 %334, %335
  store i32 %336, i32* %16, align 4
  %337 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %338 = load i32, i32* %8, align 4
  %339 = call i32 @lan743x_rx_reuse_ring_element(%struct.lan743x_rx* %337, i32 %338)
  %340 = load i32, i32* %8, align 4
  store i32 %340, i32* %13, align 4
  br label %341

341:                                              ; preds = %316, %313
  %342 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %343 = icmp ne %struct.sk_buff* %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* @RX_PROCESS_RESULT_PACKET_DROPPED, align 4
  store i32 %345, i32* %4, align 4
  br label %368

346:                                              ; preds = %341
  %347 = load i32, i32* %8, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %362

350:                                              ; preds = %346
  %351 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %352 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %351)
  store %struct.skb_shared_hwtstamps* %352, %struct.skb_shared_hwtstamps** %3, align 8
  %353 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %3, align 8
  %354 = icmp ne %struct.skb_shared_hwtstamps* %353, null
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %16, align 4
  %358 = call i32 @ktime_set(i32 %356, i32 %357)
  %359 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %3, align 8
  %360 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %355, %350
  br label %362

362:                                              ; preds = %361, %349
  %363 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %364 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %363, i32 0, i32 4
  %365 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %366 = call i32 @napi_gro_receive(i32* %364, %struct.sk_buff* %365)
  %367 = load i32, i32* @RX_PROCESS_RESULT_PACKET_RECEIVED, align 4
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %362, %344
  %369 = load i32, i32* %13, align 4
  %370 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %371 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  %372 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %373 = load i32, i32* %13, align 4
  %374 = call i8* @lan743x_rx_next_index(%struct.lan743x_rx* %372, i32 %373)
  %375 = ptrtoint i8* %374 to i32
  %376 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %377 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %376, i32 0, i32 2
  store i32 %375, i32* %377, align 4
  br label %378

378:                                              ; preds = %368, %186, %183
  br label %379

379:                                              ; preds = %378, %177, %167, %114, %77, %69, %47, %33
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local i8* @lan743x_rx_next_index(%struct.lan743x_rx*, i32) #1

declare dso_local %struct.sk_buff* @lan743x_rx_allocate_skb(%struct.lan743x_rx*) #1

declare dso_local i32 @lan743x_rx_reuse_ring_element(%struct.lan743x_rx*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @RX_DESC_DATA0_FRAME_LENGTH_GET_(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @lan743x_rx_init_ring_element(%struct.lan743x_rx*, i32, %struct.sk_buff*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
