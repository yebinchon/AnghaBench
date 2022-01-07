; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, i32, i32, i32, i32, i64, %struct.sk_buff*, i8* }
%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@jiffies = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tx DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, %struct.sk_buff*, i32, i32, i32)* @e1000_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_tx_map(%struct.e1000_ring* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.e1000_adapter*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 3
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %25, align 8
  store %struct.e1000_adapter* %26, %struct.e1000_adapter** %12, align 8
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %12, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @skb_headlen(%struct.sk_buff* %30)
  store i32 %31, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %33 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %101, %5
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %102

38:                                               ; preds = %35
  %39 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %40 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %39, i32 0, i32 2
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %40, align 8
  %42 = load i32, i32* %19, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %41, i64 %43
  store %struct.e1000_buffer* %44, %struct.e1000_buffer** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %50 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @jiffies, align 8
  %52 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %53 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %19, align 4
  %55 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %56 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i64 @dma_map_single(i32* %58, i64 %64, i32 %65, i32 %66)
  %68 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %69 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %71 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %75 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dma_mapping_error(i32* %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %38
  br label %233

80:                                               ; preds = %38
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %18, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %80
  %92 = load i32, i32* %19, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %96 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %99, %91
  br label %101

101:                                              ; preds = %100, %80
  br label %35

102:                                              ; preds = %35
  store i32 0, i32* %20, align 4
  br label %103

103:                                              ; preds = %177, %102
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %180

107:                                              ; preds = %103
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %23, align 8
  %115 = load i32*, i32** %23, align 8
  %116 = call i32 @skb_frag_size(i32* %115)
  store i32 %116, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %167, %107
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %117
  %121 = load i32, i32* %19, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %125 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %128, %120
  %130 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %130, i32 0, i32 2
  %132 = load %struct.e1000_buffer*, %struct.e1000_buffer** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %132, i64 %134
  store %struct.e1000_buffer* %135, %struct.e1000_buffer** %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @min(i32 %136, i32 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %141 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** @jiffies, align 8
  %143 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %144 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = load i32*, i32** %23, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* @DMA_TO_DEVICE, align 4
  %154 = call i64 @skb_frag_dma_map(i32* %149, i32* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %156 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  %157 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %158 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %162 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @dma_mapping_error(i32* %160, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %129
  br label %233

167:                                              ; preds = %129
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %15, align 4
  %170 = sub i32 %169, %168
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %18, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %117

176:                                              ; preds = %117
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %20, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %103

180:                                              ; preds = %103
  %181 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %182 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %181)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %188

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %186
  %189 = phi i64 [ %184, %186 ], [ 1, %187 ]
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = sub i32 %191, 1
  %193 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %194 = call i32 @skb_headlen(%struct.sk_buff* %193)
  %195 = mul i32 %192, %194
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add i32 %195, %198
  store i32 %199, i32* %21, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %202 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %201, i32 0, i32 2
  %203 = load %struct.e1000_buffer*, %struct.e1000_buffer** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %203, i64 %205
  %207 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %206, i32 0, i32 6
  store %struct.sk_buff* %200, %struct.sk_buff** %207, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %210 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %209, i32 0, i32 2
  %211 = load %struct.e1000_buffer*, %struct.e1000_buffer** %210, align 8
  %212 = load i32, i32* %19, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %211, i64 %213
  %215 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %214, i32 0, i32 3
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* %21, align 4
  %217 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %218 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %217, i32 0, i32 2
  %219 = load %struct.e1000_buffer*, %struct.e1000_buffer** %218, align 8
  %220 = load i32, i32* %19, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %219, i64 %221
  %223 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %222, i32 0, i32 4
  store i32 %216, i32* %223, align 8
  %224 = load i32, i32* %19, align 4
  %225 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %226 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %225, i32 0, i32 2
  %227 = load %struct.e1000_buffer*, %struct.e1000_buffer** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %227, i64 %229
  %231 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %230, i32 0, i32 1
  store i32 %224, i32* %231, align 4
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %6, align 4
  br label %271

233:                                              ; preds = %166, %79
  %234 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 0
  %236 = call i32 @dev_err(i32* %235, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %237 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %238 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %237, i32 0, i32 5
  store i64 0, i64* %238, align 8
  %239 = load i32, i32* %18, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load i32, i32* %18, align 4
  %243 = add i32 %242, -1
  store i32 %243, i32* %18, align 4
  br label %244

244:                                              ; preds = %241, %233
  br label %245

245:                                              ; preds = %258, %244
  %246 = load i32, i32* %18, align 4
  %247 = add i32 %246, -1
  store i32 %247, i32* %18, align 4
  %248 = icmp ne i32 %246, 0
  br i1 %248, label %249, label %270

249:                                              ; preds = %245
  %250 = load i32, i32* %19, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %254 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %19, align 4
  %257 = add i32 %256, %255
  store i32 %257, i32* %19, align 4
  br label %258

258:                                              ; preds = %252, %249
  %259 = load i32, i32* %19, align 4
  %260 = add i32 %259, -1
  store i32 %260, i32* %19, align 4
  %261 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %262 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %261, i32 0, i32 2
  %263 = load %struct.e1000_buffer*, %struct.e1000_buffer** %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %263, i64 %265
  store %struct.e1000_buffer* %266, %struct.e1000_buffer** %14, align 8
  %267 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %268 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %269 = call i32 @e1000_put_txbuf(%struct.e1000_ring* %267, %struct.e1000_buffer* %268, i32 1)
  br label %245

270:                                              ; preds = %245
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %270, %188
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @e1000_put_txbuf(%struct.e1000_ring*, %struct.e1000_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
