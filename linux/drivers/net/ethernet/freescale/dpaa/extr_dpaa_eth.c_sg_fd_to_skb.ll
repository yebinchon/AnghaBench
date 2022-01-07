; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_sg_fd_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_sg_fd_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dpaa_priv = type { i32 }
%struct.qm_fd = type { i32 }
%struct.qm_sg_entry = type { i32 }
%struct.page = type { i32 }
%struct.dpaa_bp = type { i32, i32, i32 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@DPAA_SGT_MAX_ENTRIES = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No final bit on SGT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dpaa_priv*, %struct.qm_fd*)* @sg_fd_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sg_fd_to_skb(%struct.dpaa_priv* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca %struct.qm_fd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qm_sg_entry*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.dpaa_bp*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %4, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %5, align 8
  %22 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %23 = call i32 @qm_fd_get_offset(%struct.qm_fd* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %25 = call i32 @qm_fd_addr(%struct.qm_fd* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @phys_to_virt(i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %31 = call i32 @IS_ALIGNED(i64 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = bitcast i8* %39 to %struct.qm_sg_entry*
  store %struct.qm_sg_entry* %40, %struct.qm_sg_entry** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  store i32 0, i32* %21, align 4
  br label %41

41:                                               ; preds = %184, %2
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* @DPAA_SGT_MAX_ENTRIES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %187

45:                                               ; preds = %41
  %46 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %46, i64 %48
  %50 = call i32 @qm_sg_entry_is_ext(%struct.qm_sg_entry* %49)
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %52, i64 %54
  %56 = call i32 @qm_sg_addr(%struct.qm_sg_entry* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i8* @phys_to_virt(i32 %57)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %62 = call i32 @IS_ALIGNED(i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %67, i64 %69
  %71 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %72)
  store %struct.dpaa_bp* %73, %struct.dpaa_bp** %11, align 8
  %74 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %75 = icmp ne %struct.dpaa_bp* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %45
  br label %196

77:                                               ; preds = %45
  %78 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %79 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @this_cpu_ptr(i32 %80)
  store i32* %81, i32** %20, align 8
  %82 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %83 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %87 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %90 = call i32 @dma_unmap_single(i32 %84, i32 %85, i32 %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %77
  %94 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %95 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SKB_DATA_ALIGN(i32 4)
  %98 = add i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call %struct.sk_buff* @build_skb(i8* %99, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %16, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = icmp ne %struct.sk_buff* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @WARN_ON(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %196

109:                                              ; preds = %93
  %110 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %111 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %112 = call i32 @rx_csum_offload(%struct.dpaa_priv* %110, %struct.qm_fd* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %117 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @WARN_ON(i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @skb_reserve(%struct.sk_buff* %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %126 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %126, i64 %128
  %130 = call i32 @qm_sg_entry_get_len(%struct.qm_sg_entry* %129)
  %131 = call i32 @skb_put(%struct.sk_buff* %125, i32 %130)
  br label %172

132:                                              ; preds = %77
  %133 = load i8*, i8** %13, align 8
  %134 = call %struct.page* @virt_to_page(i8* %133)
  store %struct.page* %134, %struct.page** %9, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call %struct.page* @virt_to_head_page(i8* %135)
  store %struct.page* %136, %struct.page** %10, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = and i64 %138, %141
  %143 = load %struct.page*, %struct.page** %9, align 8
  %144 = call i64 @page_address(%struct.page* %143)
  %145 = load %struct.page*, %struct.page** %10, align 8
  %146 = call i64 @page_address(%struct.page* %145)
  %147 = sub i64 %144, %146
  %148 = add i64 %142, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %18, align 4
  %150 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %150, i64 %152
  %154 = call i32 @qm_sg_entry_get_off(%struct.qm_sg_entry* %153)
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %14, align 4
  %157 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %157, i64 %159
  %161 = call i32 @qm_sg_entry_get_len(%struct.qm_sg_entry* %160)
  store i32 %161, i32* %15, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %163 = load i32, i32* %21, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load %struct.page*, %struct.page** %10, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %169 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @skb_add_rx_frag(%struct.sk_buff* %162, i32 %164, %struct.page* %165, i32 %166, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %132, %109
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %176, i64 %178
  %180 = call i64 @qm_sg_entry_is_final(%struct.qm_sg_entry* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %187

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %41

187:                                              ; preds = %182, %41
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* @DPAA_SGT_MAX_ENTRIES, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @WARN_ONCE(i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @skb_free_frag(i8* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %195, %struct.sk_buff** %3, align 8
  br label %271

196:                                              ; preds = %108, %76
  %197 = load i32, i32* %21, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %221, %196
  %200 = load i32, i32* %21, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %224

202:                                              ; preds = %199
  %203 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %203, i64 %205
  %207 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %208)
  store %struct.dpaa_bp* %209, %struct.dpaa_bp** %11, align 8
  %210 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %211 = icmp ne %struct.dpaa_bp* %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %202
  %213 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %214 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32* @this_cpu_ptr(i32 %215)
  store i32* %216, i32** %20, align 8
  %217 = load i32*, i32** %20, align 8
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %212, %202
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %21, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %21, align 4
  br label %199

224:                                              ; preds = %199
  store i32 0, i32* %21, align 4
  br label %225

225:                                              ; preds = %265, %224
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* @DPAA_SGT_MAX_ENTRIES, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %225
  %230 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %231 = load i32, i32* %21, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %230, i64 %232
  %234 = call i32 @qm_sg_addr(%struct.qm_sg_entry* %233)
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = call i8* @phys_to_virt(i32 %235)
  store i8* %236, i8** %13, align 8
  %237 = load i8*, i8** %13, align 8
  %238 = call i32 @skb_free_frag(i8* %237)
  %239 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %239, i64 %241
  %243 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %244)
  store %struct.dpaa_bp* %245, %struct.dpaa_bp** %11, align 8
  %246 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %247 = icmp ne %struct.dpaa_bp* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %229
  %249 = load %struct.dpaa_bp*, %struct.dpaa_bp** %11, align 8
  %250 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32* @this_cpu_ptr(i32 %251)
  store i32* %252, i32** %20, align 8
  %253 = load i32*, i32** %20, align 8
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %248, %229
  %257 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %8, align 8
  %258 = load i32, i32* %21, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %257, i64 %259
  %261 = call i64 @qm_sg_entry_is_final(%struct.qm_sg_entry* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %268

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %21, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %21, align 4
  br label %225

268:                                              ; preds = %263, %225
  %269 = load i8*, i8** %12, align 8
  %270 = call i32 @skb_free_frag(i8* %269)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %271

271:                                              ; preds = %268, %187
  %272 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %272
}

declare dso_local i32 @qm_fd_get_offset(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_addr(%struct.qm_fd*) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @qm_sg_entry_is_ext(%struct.qm_sg_entry*) #1

declare dso_local i32 @qm_sg_addr(%struct.qm_sg_entry*) #1

declare dso_local %struct.dpaa_bp* @dpaa_bpid2pool(i32) #1

declare dso_local i32* @this_cpu_ptr(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @rx_csum_offload(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qm_sg_entry_get_len(%struct.qm_sg_entry*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @qm_sg_entry_get_off(%struct.qm_sg_entry*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @qm_sg_entry_is_final(%struct.qm_sg_entry*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @skb_free_frag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
