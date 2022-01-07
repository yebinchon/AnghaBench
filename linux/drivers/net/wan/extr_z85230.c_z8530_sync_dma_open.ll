; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_channel = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32**, i64, i32**, i32*, i32*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DTRREQ = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@TxINT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@WT_FN_RDYFN = common dso_local global i32 0, align 4
@WT_RDY_RT = common dso_local global i32 0, align 4
@INT_ERR_Rx = common dso_local global i32 0, align 4
@WT_RDY_ENAB = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@z8530_dma_sync = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_sync_dma_open(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.z8530_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %5, align 8
  %8 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %9 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 64
  %14 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %15 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %17 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %16, i32 0, i32 17
  store i64 0, i64* %17, align 8
  %18 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %19 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %18, i32 0, i32 16
  store i32* null, i32** %19, align 8
  %20 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %21 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %20, i32 0, i32 15
  store i32* null, i32** %21, align 8
  %22 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %23 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %25 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %27 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %301

35:                                               ; preds = %2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i32, i32* @GFP_DMA, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @get_zeroed_page(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %43 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %42, i32 0, i32 12
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  store i32* %41, i32** %45, align 8
  %46 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %47 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %46, i32 0, i32 12
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOBUFS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %301

55:                                               ; preds = %35
  %56 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %57 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %56, i32 0, i32 12
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sdiv i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %66 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %65, i32 0, i32 12
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* %64, i32** %68, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load i32, i32* @GFP_DMA, align 4
  %71 = or i32 %69, %70
  %72 = call i64 @get_zeroed_page(i32 %71)
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 14
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* %74, i32** %78, align 8
  %79 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %80 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %79, i32 0, i32 14
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %55
  %86 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %87 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %86, i32 0, i32 12
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = ptrtoint i32* %90 to i64
  %92 = call i32 @free_page(i64 %91)
  %93 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %94 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %93, i32 0, i32 12
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @ENOBUFS, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %301

99:                                               ; preds = %55
  %100 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %101 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %100, i32 0, i32 14
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sdiv i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %110 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %109, i32 0, i32 14
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* %108, i32** %112, align 8
  %113 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %114 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %113, i32 0, i32 4
  store i32 0, i32* %114, align 8
  %115 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %116 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %115, i32 0, i32 5
  store i32 1, i32* %116, align 4
  %117 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %118 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %117, i32 0, i32 13
  store i64 0, i64* %118, align 8
  %119 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %120 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %119, i32 0, i32 6
  store i32 1, i32* %120, align 8
  %121 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %122 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @spin_lock_irqsave(i32 %123, i64 %124)
  %126 = load i32, i32* @DTRREQ, align 4
  %127 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %128 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @R14, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %126
  store i32 %133, i32* %131, align 4
  %134 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %135 = load i64, i64* @R14, align 8
  %136 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %137 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @R14, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @write_zsreg(%struct.z8530_channel* %134, i64 %135, i32 %141)
  %143 = load i32, i32* @TxINT_ENAB, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %146 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @R1, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %144
  store i32 %151, i32* %149, align 4
  %152 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %153 = load i64, i64* @R1, align 8
  %154 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %155 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @R1, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @write_zsreg(%struct.z8530_channel* %152, i64 %153, i32 %159)
  %161 = load i32, i32* @WT_FN_RDYFN, align 4
  %162 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %163 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @R1, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %161
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @WT_RDY_RT, align 4
  %170 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %171 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @R1, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %169
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* @INT_ERR_Rx, align 4
  %178 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %179 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %178, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @R1, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %177
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @TxINT_ENAB, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %188 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @R1, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %186
  store i32 %193, i32* %191, align 4
  %194 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %195 = load i64, i64* @R1, align 8
  %196 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %197 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @R1, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @write_zsreg(%struct.z8530_channel* %194, i64 %195, i32 %201)
  %203 = load i32, i32* @WT_RDY_ENAB, align 4
  %204 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %205 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %204, i32 0, i32 7
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @R1, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %203
  store i32 %210, i32* %208, align 4
  %211 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %212 = load i64, i64* @R1, align 8
  %213 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %214 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %213, i32 0, i32 7
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @R1, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @write_zsreg(%struct.z8530_channel* %211, i64 %212, i32 %218)
  %220 = call i64 (...) @claim_dma_lock()
  store i64 %220, i64* %7, align 8
  %221 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %222 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %221, i32 0, i32 11
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @disable_dma(i32 %223)
  %225 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %226 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @clear_dma_ff(i32 %227)
  %229 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %230 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %229, i32 0, i32 11
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @DMA_MODE_READ, align 4
  %233 = or i32 %232, 16
  %234 = call i32 @set_dma_mode(i32 %231, i32 %233)
  %235 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %236 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %239 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %238, i32 0, i32 12
  %240 = load i32**, i32*** %239, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @virt_to_bus(i32* %242)
  %244 = call i32 @set_dma_addr(i32 %237, i32 %243)
  %245 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %246 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %245, i32 0, i32 11
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %249 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @set_dma_count(i32 %247, i32 %250)
  %252 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %253 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %252, i32 0, i32 11
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @enable_dma(i32 %254)
  %256 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %257 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @disable_dma(i32 %258)
  %260 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %261 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @clear_dma_ff(i32 %262)
  %264 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %265 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @DMA_MODE_WRITE, align 4
  %268 = call i32 @set_dma_mode(i32 %266, i32 %267)
  %269 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %270 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @disable_dma(i32 %271)
  %273 = load i64, i64* %7, align 8
  %274 = call i32 @release_dma_lock(i64 %273)
  %275 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %276 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %275, i32 0, i32 2
  store i32 1, i32* %276, align 8
  %277 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %278 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %277, i32 0, i32 3
  store i32 1, i32* %278, align 4
  %279 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %280 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %279, i32 0, i32 4
  store i32 1, i32* %280, align 8
  %281 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %282 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %281, i32 0, i32 9
  store i32* @z8530_dma_sync, i32** %282, align 8
  %283 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %284 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %283, i32 1)
  %285 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %286 = load i64, i64* @R3, align 8
  %287 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %288 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %287, i32 0, i32 7
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @R3, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @RxENABLE, align 4
  %294 = or i32 %292, %293
  %295 = call i32 @write_zsreg(%struct.z8530_channel* %285, i64 %286, i32 %294)
  %296 = load %struct.z8530_channel*, %struct.z8530_channel** %5, align 8
  %297 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 8
  %299 = load i64, i64* %6, align 8
  %300 = call i32 @spin_unlock_irqrestore(i32 %298, i64 %299)
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %99, %85, %52, %32
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @z8530_rtsdtr(%struct.z8530_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
