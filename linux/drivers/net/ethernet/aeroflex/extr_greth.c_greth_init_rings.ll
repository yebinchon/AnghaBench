; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.greth_private = type { i32, i32, %struct.TYPE_2__*, i32, i64, i64, i64, i32, i32**, i32**, %struct.sk_buff**, i32, i64, %struct.greth_bd*, %struct.greth_bd* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32* }
%struct.greth_bd = type { i32, i32 }

@GRETH_RXBD_NUM = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Error allocating DMA ring.\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not create initial DMA mapping\0A\00", align 1
@GRETH_BD_EN = common dso_local global i32 0, align 4
@GRETH_BD_IE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GRETH_TXBD_NUM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GRETH_BD_WR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.greth_private*)* @greth_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_init_rings(%struct.greth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.greth_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.greth_bd*, align 8
  %6 = alloca %struct.greth_bd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.greth_private* %0, %struct.greth_private** %3, align 8
  %9 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %10 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %9, i32 0, i32 14
  %11 = load %struct.greth_bd*, %struct.greth_bd** %10, align 8
  store %struct.greth_bd* %11, %struct.greth_bd** %5, align 8
  %12 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %13 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %12, i32 0, i32 13
  %14 = load %struct.greth_bd*, %struct.greth_bd** %13, align 8
  store %struct.greth_bd* %14, %struct.greth_bd** %6, align 8
  %15 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %16 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %15, i32 0, i32 12
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %99, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %20
  %25 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %26 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %29 = load i64, i64* @NET_IP_ALIGN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.sk_buff* @netdev_alloc_skb(i32 %27, i64 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %36 = call i64 @netif_msg_ifup(%struct.greth_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %40 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %34
  br label %313

44:                                               ; preds = %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i64, i64* @NET_IP_ALIGN, align 8
  %47 = call i32 @skb_reserve(%struct.sk_buff* %45, i64 %46)
  %48 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %49 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %55 = load i64, i64* @NET_IP_ALIGN, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_map_single(i32 %50, i32* %53, i64 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %60 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @dma_mapping_error(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %44
  %66 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %67 = call i64 @netif_msg_ifup(%struct.greth_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %71 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %65
  br label %313

75:                                               ; preds = %44
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %78 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %77, i32 0, i32 10
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %79, i64 %81
  store %struct.sk_buff* %76, %struct.sk_buff** %82, align 8
  %83 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %83, i64 %85
  %87 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %86, i32 0, i32 1
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @greth_write_bd(i32* %87, i32 %88)
  %90 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %90, i64 %92
  %94 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %93, i32 0, i32 0
  %95 = load i32, i32* @GRETH_BD_EN, align 4
  %96 = load i32, i32* @GRETH_BD_IE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @greth_write_bd(i32* %94, i32 %97)
  br label %99

99:                                               ; preds = %75
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %20

102:                                              ; preds = %20
  br label %269

103:                                              ; preds = %1
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %184, %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %187

108:                                              ; preds = %104
  %109 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kmalloc(i64 %109, i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %114 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %113, i32 0, i32 9
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  store i32* %112, i32** %118, align 8
  %119 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %120 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %119, i32 0, i32 9
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %108
  %128 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %129 = call i64 @netif_msg_ifup(%struct.greth_private* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %133 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %131, %127
  br label %313

137:                                              ; preds = %108
  %138 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %139 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %142 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %141, i32 0, i32 9
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i32 @dma_map_single(i32 %140, i32* %147, i64 %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %152 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @dma_mapping_error(i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %137
  %158 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %159 = call i64 @netif_msg_ifup(%struct.greth_private* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %163 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %157
  br label %313

167:                                              ; preds = %137
  %168 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %168, i64 %170
  %172 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %171, i32 0, i32 1
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @greth_write_bd(i32* %172, i32 %173)
  %175 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %175, i64 %177
  %179 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %178, i32 0, i32 0
  %180 = load i32, i32* @GRETH_BD_EN, align 4
  %181 = load i32, i32* @GRETH_BD_IE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @greth_write_bd(i32* %179, i32 %182)
  br label %184

184:                                              ; preds = %167
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %104

187:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %265, %187
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @GRETH_TXBD_NUM, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %268

192:                                              ; preds = %188
  %193 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i8* @kmalloc(i64 %193, i32 %194)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %198 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %197, i32 0, i32 8
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  store i32* %196, i32** %202, align 8
  %203 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %204 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %203, i32 0, i32 8
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %192
  %212 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %213 = call i64 @netif_msg_ifup(%struct.greth_private* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %217 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %220

220:                                              ; preds = %215, %211
  br label %313

221:                                              ; preds = %192
  %222 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %223 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %226 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %225, i32 0, i32 8
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %233 = load i32, i32* @DMA_TO_DEVICE, align 4
  %234 = call i32 @dma_map_single(i32 %224, i32* %231, i64 %232, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %236 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = call i64 @dma_mapping_error(i32 %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %221
  %242 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %243 = call i64 @netif_msg_ifup(%struct.greth_private* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %247 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @dev_err(i32 %248, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %250

250:                                              ; preds = %245, %241
  br label %313

251:                                              ; preds = %221
  %252 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %252, i64 %254
  %256 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %255, i32 0, i32 1
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @greth_write_bd(i32* %256, i32 %257)
  %259 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %259, i64 %261
  %263 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %262, i32 0, i32 0
  %264 = call i32 @greth_write_bd(i32* %263, i32 0)
  br label %265

265:                                              ; preds = %251
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %188

268:                                              ; preds = %188
  br label %269

269:                                              ; preds = %268, %102
  %270 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %271 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %270, i64 %273
  %275 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %274, i32 0, i32 0
  %276 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %277 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %276, i64 %279
  %281 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %280, i32 0, i32 0
  %282 = call i32 @greth_read_bd(i32* %281)
  %283 = load i32, i32* @GRETH_BD_WR, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @greth_write_bd(i32* %275, i32 %284)
  %286 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %287 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %286, i32 0, i32 6
  store i64 0, i64* %287, align 8
  %288 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %289 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %288, i32 0, i32 5
  store i64 0, i64* %289, align 8
  %290 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %291 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %290, i32 0, i32 4
  store i64 0, i64* %291, align 8
  %292 = load i32, i32* @GRETH_TXBD_NUM, align 4
  %293 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %294 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %296 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %295, i32 0, i32 2
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %301 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @GRETH_REGSAVE(i32 %299, i32 %302)
  %304 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %305 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %304, i32 0, i32 2
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %310 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @GRETH_REGSAVE(i32 %308, i32 %311)
  store i32 0, i32* %2, align 4
  br label %318

313:                                              ; preds = %250, %220, %166, %136, %74, %43
  %314 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %315 = call i32 @greth_clean_rings(%struct.greth_private* %314)
  %316 = load i32, i32* @ENOMEM, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %313, %269
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @netif_msg_ifup(%struct.greth_private*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_map_single(i32, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @greth_write_bd(i32*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @greth_clean_rings(%struct.greth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
