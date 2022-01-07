; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_rx_dma_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_rx_dma_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_2__*, %struct.rx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.rx_ring = type { i32, i64, i64, i32, i32, i8*, i8*, %struct.fbr_lookup** }
%struct.fbr_lookup = type { i32, i32, i64, i64*, i64**, i32*, i32*, i8**, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_FBRS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Cannot alloc memory for Free Buffer Ring %d\0A\00", align 1
@FBR_CHUNKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not alloc memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot alloc memory for Packet Status Ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot alloc memory for Status Block\0A\00", align 1
@NIC_DEFAULT_NUM_RFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_rx_dma_memory_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rx_ring*, align 8
  %11 = alloca %struct.fbr_lookup*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %14, i32 0, i32 2
  store %struct.rx_ring* %15, %struct.rx_ring** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 64, i32 %16)
  %18 = bitcast i8* %17 to %struct.fbr_lookup*
  %19 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %20 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %19, i32 0, i32 7
  %21 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %20, align 8
  %22 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %21, i64 0
  store %struct.fbr_lookup* %18, %struct.fbr_lookup** %22, align 8
  %23 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %24 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %23, i32 0, i32 7
  %25 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %24, align 8
  %26 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %25, i64 0
  %27 = load %struct.fbr_lookup*, %struct.fbr_lookup** %26, align 8
  %28 = icmp eq %struct.fbr_lookup* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %386

32:                                               ; preds = %1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 64, i32 %33)
  %35 = bitcast i8* %34 to %struct.fbr_lookup*
  %36 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %37 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %36, i32 0, i32 7
  %38 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %37, align 8
  %39 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %38, i64 1
  store %struct.fbr_lookup* %35, %struct.fbr_lookup** %39, align 8
  %40 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %41 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %40, i32 0, i32 7
  %42 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %41, align 8
  %43 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %42, i64 1
  %44 = load %struct.fbr_lookup*, %struct.fbr_lookup** %43, align 8
  %45 = icmp eq %struct.fbr_lookup* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %386

49:                                               ; preds = %32
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 2048
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %56 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %55, i32 0, i32 7
  %57 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %56, align 8
  %58 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %57, i64 0
  %59 = load %struct.fbr_lookup*, %struct.fbr_lookup** %58, align 8
  %60 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %59, i32 0, i32 0
  store i32 256, i32* %60, align 8
  %61 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %62 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %61, i32 0, i32 7
  %63 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %62, align 8
  %64 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %63, i64 0
  %65 = load %struct.fbr_lookup*, %struct.fbr_lookup** %64, align 8
  %66 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %65, i32 0, i32 1
  store i32 512, i32* %66, align 4
  %67 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 7
  %69 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %68, align 8
  %70 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %69, i64 1
  %71 = load %struct.fbr_lookup*, %struct.fbr_lookup** %70, align 8
  %72 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %71, i32 0, i32 0
  store i32 2048, i32* %72, align 8
  %73 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %74 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %73, i32 0, i32 7
  %75 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %74, align 8
  %76 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %75, i64 1
  %77 = load %struct.fbr_lookup*, %struct.fbr_lookup** %76, align 8
  %78 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %77, i32 0, i32 1
  store i32 512, i32* %78, align 4
  br label %135

79:                                               ; preds = %49
  %80 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 4096
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %86 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %85, i32 0, i32 7
  %87 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %86, align 8
  %88 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %87, i64 0
  %89 = load %struct.fbr_lookup*, %struct.fbr_lookup** %88, align 8
  %90 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %89, i32 0, i32 0
  store i32 512, i32* %90, align 8
  %91 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %92 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %91, i32 0, i32 7
  %93 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %92, align 8
  %94 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %93, i64 0
  %95 = load %struct.fbr_lookup*, %struct.fbr_lookup** %94, align 8
  %96 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %95, i32 0, i32 1
  store i32 1024, i32* %96, align 4
  %97 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %98 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %97, i32 0, i32 7
  %99 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %98, align 8
  %100 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %99, i64 1
  %101 = load %struct.fbr_lookup*, %struct.fbr_lookup** %100, align 8
  %102 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %101, i32 0, i32 0
  store i32 4096, i32* %102, align 8
  %103 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %104 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %103, i32 0, i32 7
  %105 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %104, align 8
  %106 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %105, i64 1
  %107 = load %struct.fbr_lookup*, %struct.fbr_lookup** %106, align 8
  %108 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %107, i32 0, i32 1
  store i32 512, i32* %108, align 4
  br label %134

109:                                              ; preds = %79
  %110 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %111 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %110, i32 0, i32 7
  %112 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %111, align 8
  %113 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %112, i64 0
  %114 = load %struct.fbr_lookup*, %struct.fbr_lookup** %113, align 8
  %115 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %114, i32 0, i32 0
  store i32 1024, i32* %115, align 8
  %116 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %117 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %116, i32 0, i32 7
  %118 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %117, align 8
  %119 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %118, i64 0
  %120 = load %struct.fbr_lookup*, %struct.fbr_lookup** %119, align 8
  %121 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %120, i32 0, i32 1
  store i32 768, i32* %121, align 4
  %122 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %123 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %122, i32 0, i32 7
  %124 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %123, align 8
  %125 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %124, i64 1
  %126 = load %struct.fbr_lookup*, %struct.fbr_lookup** %125, align 8
  %127 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %126, i32 0, i32 0
  store i32 16384, i32* %127, align 8
  %128 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %129 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %128, i32 0, i32 7
  %130 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %129, align 8
  %131 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %130, i64 1
  %132 = load %struct.fbr_lookup*, %struct.fbr_lookup** %131, align 8
  %133 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %132, i32 0, i32 1
  store i32 128, i32* %133, align 4
  br label %134

134:                                              ; preds = %109, %84
  br label %135

135:                                              ; preds = %134, %54
  %136 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %137 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %136, i32 0, i32 7
  %138 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %137, align 8
  %139 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %138, i64 0
  %140 = load %struct.fbr_lookup*, %struct.fbr_lookup** %139, align 8
  %141 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %144 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %143, i32 0, i32 7
  %145 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %144, align 8
  %146 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %145, i64 1
  %147 = load %struct.fbr_lookup*, %struct.fbr_lookup** %146, align 8
  %148 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %142, %149
  %151 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %152 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  store i64 0, i64* %4, align 8
  br label %153

153:                                              ; preds = %195, %135
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @NUM_FBRS, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %198

157:                                              ; preds = %153
  %158 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %159 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %158, i32 0, i32 7
  %160 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %159, align 8
  %161 = load i64, i64* %4, align 8
  %162 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %160, i64 %161
  %163 = load %struct.fbr_lookup*, %struct.fbr_lookup** %162, align 8
  store %struct.fbr_lookup* %163, %struct.fbr_lookup** %11, align 8
  %164 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %165 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 4, %167
  store i64 %168, i64* %7, align 8
  %169 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %7, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %176 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %175, i32 0, i32 2
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call i8* @dma_alloc_coherent(i32* %172, i32 %174, i64* %176, i32 %177)
  %179 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %180 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %179, i32 0, i32 8
  store i8* %178, i8** %180, align 8
  %181 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %182 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %157
  %186 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %4, align 8
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %386

194:                                              ; preds = %157
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %4, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %4, align 8
  br label %153

198:                                              ; preds = %153
  store i64 0, i64* %4, align 8
  br label %199

199:                                              ; preds = %323, %198
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* @NUM_FBRS, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %326

203:                                              ; preds = %199
  %204 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %205 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %204, i32 0, i32 7
  %206 = load %struct.fbr_lookup**, %struct.fbr_lookup*** %205, align 8
  %207 = load i64, i64* %4, align 8
  %208 = getelementptr inbounds %struct.fbr_lookup*, %struct.fbr_lookup** %206, i64 %207
  %209 = load %struct.fbr_lookup*, %struct.fbr_lookup** %208, align 8
  store %struct.fbr_lookup* %209, %struct.fbr_lookup** %11, align 8
  %210 = load i64, i64* @FBR_CHUNKS, align 8
  %211 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %212 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %210, %214
  store i64 %215, i64* %9, align 8
  store i64 0, i64* %5, align 8
  br label %216

216:                                              ; preds = %319, %203
  %217 = load i64, i64* %5, align 8
  %218 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %219 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* @FBR_CHUNKS, align 8
  %223 = udiv i64 %221, %222
  %224 = icmp ult i64 %217, %223
  br i1 %224, label %225, label %322

225:                                              ; preds = %216
  %226 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %227 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %226, i32 0, i32 1
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i64, i64* %9, align 8
  %231 = trunc i64 %230 to i32
  %232 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %233 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %232, i32 0, i32 3
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* %5, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i32, i32* @GFP_KERNEL, align 4
  %238 = call i8* @dma_alloc_coherent(i32* %229, i32 %231, i64* %236, i32 %237)
  %239 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %240 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %239, i32 0, i32 7
  %241 = load i8**, i8*** %240, align 8
  %242 = load i64, i64* %5, align 8
  %243 = getelementptr inbounds i8*, i8** %241, i64 %242
  store i8* %238, i8** %243, align 8
  %244 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %245 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %244, i32 0, i32 7
  %246 = load i8**, i8*** %245, align 8
  %247 = load i64, i64* %5, align 8
  %248 = getelementptr inbounds i8*, i8** %246, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %259, label %251

251:                                              ; preds = %225
  %252 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %253 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = call i32 (i32*, i8*, ...) @dev_err(i32* %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %386

259:                                              ; preds = %225
  %260 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %261 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %260, i32 0, i32 3
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* %5, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %12, align 8
  store i64 0, i64* %6, align 8
  br label %266

266:                                              ; preds = %315, %259
  %267 = load i64, i64* %6, align 8
  %268 = load i64, i64* @FBR_CHUNKS, align 8
  %269 = icmp ult i64 %267, %268
  br i1 %269, label %270, label %318

270:                                              ; preds = %266
  %271 = load i64, i64* %5, align 8
  %272 = load i64, i64* @FBR_CHUNKS, align 8
  %273 = mul i64 %271, %272
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %273, %274
  store i64 %275, i64* %13, align 8
  %276 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %277 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %276, i32 0, i32 7
  %278 = load i8**, i8*** %277, align 8
  %279 = load i64, i64* %5, align 8
  %280 = getelementptr inbounds i8*, i8** %278, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = bitcast i8* %281 to i64*
  %283 = load i64, i64* %6, align 8
  %284 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %285 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = mul i64 %283, %287
  %289 = getelementptr inbounds i64, i64* %282, i64 %288
  %290 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %291 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %290, i32 0, i32 4
  %292 = load i64**, i64*** %291, align 8
  %293 = load i64, i64* %13, align 8
  %294 = getelementptr inbounds i64*, i64** %292, i64 %293
  store i64* %289, i64** %294, align 8
  %295 = load i64, i64* %12, align 8
  %296 = call i32 @upper_32_bits(i64 %295)
  %297 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %298 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %297, i32 0, i32 6
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* %13, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32 %296, i32* %301, align 4
  %302 = load i64, i64* %12, align 8
  %303 = call i32 @lower_32_bits(i64 %302)
  %304 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %305 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %304, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32 %303, i32* %308, align 4
  %309 = load %struct.fbr_lookup*, %struct.fbr_lookup** %11, align 8
  %310 = getelementptr inbounds %struct.fbr_lookup, %struct.fbr_lookup* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %12, align 8
  %314 = add i64 %313, %312
  store i64 %314, i64* %12, align 8
  br label %315

315:                                              ; preds = %270
  %316 = load i64, i64* %6, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %6, align 8
  br label %266

318:                                              ; preds = %266
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %5, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %5, align 8
  br label %216

322:                                              ; preds = %216
  br label %323

323:                                              ; preds = %322
  %324 = load i64, i64* %4, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %4, align 8
  br label %199

326:                                              ; preds = %199
  %327 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %328 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = mul i64 4, %330
  store i64 %331, i64* %8, align 8
  %332 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %333 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %332, i32 0, i32 1
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = load i64, i64* %8, align 8
  %337 = trunc i64 %336 to i32
  %338 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %339 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %338, i32 0, i32 1
  %340 = load i32, i32* @GFP_KERNEL, align 4
  %341 = call i8* @dma_alloc_coherent(i32* %335, i32 %337, i64* %339, i32 %340)
  %342 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %343 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %342, i32 0, i32 6
  store i8* %341, i8** %343, align 8
  %344 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %345 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %344, i32 0, i32 6
  %346 = load i8*, i8** %345, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %356, label %348

348:                                              ; preds = %326
  %349 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %350 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %349, i32 0, i32 1
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = call i32 (i32*, i8*, ...) @dev_err(i32* %352, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %354 = load i32, i32* @ENOMEM, align 4
  %355 = sub nsw i32 0, %354
  store i32 %355, i32* %2, align 4
  br label %386

356:                                              ; preds = %326
  %357 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %358 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %357, i32 0, i32 1
  %359 = load %struct.TYPE_2__*, %struct.TYPE_2__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 0
  %361 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %362 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %361, i32 0, i32 2
  %363 = load i32, i32* @GFP_KERNEL, align 4
  %364 = call i8* @dma_alloc_coherent(i32* %360, i32 4, i64* %362, i32 %363)
  %365 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %366 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %365, i32 0, i32 5
  store i8* %364, i8** %366, align 8
  %367 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %368 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %367, i32 0, i32 5
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %379, label %371

371:                                              ; preds = %356
  %372 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %373 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %372, i32 0, i32 1
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 0
  %376 = call i32 (i32*, i8*, ...) @dev_err(i32* %375, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %377 = load i32, i32* @ENOMEM, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %2, align 4
  br label %386

379:                                              ; preds = %356
  %380 = load i32, i32* @NIC_DEFAULT_NUM_RFD, align 4
  %381 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %382 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %381, i32 0, i32 4
  store i32 %380, i32* %382, align 4
  %383 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %384 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %383, i32 0, i32 3
  %385 = call i32 @INIT_LIST_HEAD(i32* %384)
  store i32 0, i32* %2, align 4
  br label %386

386:                                              ; preds = %379, %371, %348, %251, %185, %46, %29
  %387 = load i32, i32* %2, align 4
  ret i32 %387
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
