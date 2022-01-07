; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.pci_dev*, %struct.ixgb_desc_ring }
%struct.pci_dev = type { i32 }
%struct.ixgb_desc_ring = type { i32, i32, %struct.ixgb_buffer* }
%struct.ixgb_buffer = type { i32, i64, i32, i32, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@IXGB_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_adapter*, %struct.sk_buff*, i32)* @ixgb_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_tx_map(%struct.ixgb_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgb_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgb_desc_ring*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.ixgb_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %20, i32 0, i32 1
  store %struct.ixgb_desc_ring* %21, %struct.ixgb_desc_ring** %8, align 8
  %22 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %16, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %36 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %130, %3
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %131

41:                                               ; preds = %38
  %42 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %43 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %42, i32 0, i32 2
  %44 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %44, i64 %46
  store %struct.ixgb_buffer* %47, %struct.ixgb_buffer** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IXGB_MAX_DATA_PER_TXD, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = icmp ugt i32 %61, 8
  br label %63

63:                                               ; preds = %60, %56, %53, %41
  %64 = phi i1 [ false, %56 ], [ false, %53 ], [ false, %41 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  %70 = sub i32 %69, 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %74 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %76 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON(i32 %79)
  %81 = load i8*, i8** @jiffies, align 8
  %82 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %83 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %85 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @DMA_TO_DEVICE, align 4
  %96 = call i64 @dma_map_single(i32* %87, i64 %93, i32 %94, i32 %95)
  %97 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %98 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %102 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @dma_mapping_error(i32* %100, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %71
  br label %249

107:                                              ; preds = %71
  %108 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %109 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %107
  %121 = load i32, i32* %15, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %125 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %128, %120
  br label %130

130:                                              ; preds = %129, %107
  br label %38

131:                                              ; preds = %38
  store i32 0, i32* %18, align 4
  br label %132

132:                                              ; preds = %228, %131
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %231

136:                                              ; preds = %132
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32* %143, i32** %19, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = call i32 @skb_frag_size(i32* %144)
  store i32 %145, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %216, %136
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %227

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %154 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %157, %149
  %159 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %160 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %159, i32 0, i32 2
  %161 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %161, i64 %163
  store %struct.ixgb_buffer* %164, %struct.ixgb_buffer** %10, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @IXGB_MAX_DATA_PER_TXD, align 4
  %167 = call i32 @min(i32 %165, i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %158
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub i32 %172, 1
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  %181 = icmp ugt i32 %180, 8
  br label %182

182:                                              ; preds = %179, %175, %170, %158
  %183 = phi i1 [ false, %175 ], [ false, %170 ], [ false, %158 ], [ %181, %179 ]
  %184 = zext i1 %183 to i32
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %13, align 4
  %189 = sub i32 %188, 4
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %193 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i8*, i8** @jiffies, align 8
  %195 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %196 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %198 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %197, i32 0, i32 2
  store i32 1, i32* %198, align 8
  %199 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 0
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @DMA_TO_DEVICE, align 4
  %205 = call i64 @skb_frag_dma_map(i32* %200, i32* %201, i32 %202, i32 %203, i32 %204)
  %206 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %207 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 0
  %210 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %211 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @dma_mapping_error(i32* %209, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %190
  br label %249

216:                                              ; preds = %190
  %217 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %218 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %217, i32 0, i32 3
  store i32 0, i32* %218, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %11, align 4
  %221 = sub i32 %220, %219
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add i32 %223, %222
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %14, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %146

227:                                              ; preds = %146
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %18, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %132

231:                                              ; preds = %132
  %232 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %233 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %234 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %233, i32 0, i32 2
  %235 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %234, align 8
  %236 = load i32, i32* %15, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %235, i64 %237
  %239 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %238, i32 0, i32 4
  store %struct.sk_buff* %232, %struct.sk_buff** %239, align 8
  %240 = load i32, i32* %15, align 4
  %241 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %242 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %241, i32 0, i32 2
  %243 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %243, i64 %245
  %247 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %246, i32 0, i32 3
  store i32 %240, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  store i32 %248, i32* %4, align 4
  br label %287

249:                                              ; preds = %215, %106
  %250 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 0
  %252 = call i32 @dev_err(i32* %251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %253 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %254 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %253, i32 0, i32 1
  store i64 0, i64* %254, align 8
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i32, i32* %14, align 4
  %259 = add i32 %258, -1
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %257, %249
  br label %261

261:                                              ; preds = %274, %260
  %262 = load i32, i32* %14, align 4
  %263 = add i32 %262, -1
  store i32 %263, i32* %14, align 4
  %264 = icmp ne i32 %262, 0
  br i1 %264, label %265, label %286

265:                                              ; preds = %261
  %266 = load i32, i32* %15, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %270 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %15, align 4
  %273 = add i32 %272, %271
  store i32 %273, i32* %15, align 4
  br label %274

274:                                              ; preds = %268, %265
  %275 = load i32, i32* %15, align 4
  %276 = add i32 %275, -1
  store i32 %276, i32* %15, align 4
  %277 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %8, align 8
  %278 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %277, i32 0, i32 2
  %279 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %278, align 8
  %280 = load i32, i32* %15, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %279, i64 %281
  store %struct.ixgb_buffer* %282, %struct.ixgb_buffer** %10, align 8
  %283 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %284 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %10, align 8
  %285 = call i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter* %283, %struct.ixgb_buffer* %284)
  br label %261

286:                                              ; preds = %261
  store i32 0, i32* %4, align 4
  br label %287

287:                                              ; preds = %286, %231
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter*, %struct.ixgb_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
