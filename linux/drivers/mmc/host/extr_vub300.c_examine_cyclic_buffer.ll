; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_examine_cyclic_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_examine_cyclic_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.offload_registers_access* }
%struct.offload_registers_access = type { i64*, i32* }
%struct.mmc_command = type { i32, i64* }

@MAXREGMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vub300_mmc_host*, %struct.mmc_command*, i64)* @examine_cyclic_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @examine_cyclic_buffer(%struct.vub300_mmc_host* %0, %struct.mmc_command* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vub300_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.offload_registers_access*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.offload_registers_access*, align 8
  %20 = alloca i64, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 24
  %25 = and i32 255, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 16
  %31 = and i32 255, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 8
  %37 = and i32 255, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %40 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 0
  %43 = and i32 255, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* @MAXREGMASK, align 4
  %46 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %47 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %45, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %55 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load %struct.offload_registers_access*, %struct.offload_registers_access** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %60, i64 %62
  store %struct.offload_registers_access* %63, %struct.offload_registers_access** %13, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %66 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %154

71:                                               ; preds = %3
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %74 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %154

79:                                               ; preds = %71
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %82 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %154

87:                                               ; preds = %79
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %90 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %88, %93
  br i1 %94, label %95, label %154

95:                                               ; preds = %87
  store i64 0, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = shl i64 %96, 24
  %98 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 %97, i64* %101, align 8
  %102 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %103 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 24
  %108 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %109 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 %107, %113
  %115 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %116 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %114, %120
  %122 = load %struct.offload_registers_access*, %struct.offload_registers_access** %13, align 8
  %123 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 0
  %128 = or i32 %121, %127
  %129 = sext i32 %128 to i64
  %130 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %131 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  store i64 %129, i64* %133, align 8
  %134 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %135 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %143 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %151 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  store i32 1, i32* %4, align 4
  br label %290

154:                                              ; preds = %87, %79, %71, %3
  store i32 1, i32* %15, align 4
  %155 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %156 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %161, 1
  store i64 %162, i64* %16, align 8
  %163 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %164 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %282, %154
  %172 = load i64, i64* %16, align 8
  %173 = icmp ult i64 0, %172
  br i1 %173, label %174, label %289

174:                                              ; preds = %171
  %175 = load i32, i32* @MAXREGMASK, align 4
  %176 = load i32, i32* %17, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %18, align 4
  %178 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %179 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load %struct.offload_registers_access*, %struct.offload_registers_access** %183, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %184, i64 %186
  store %struct.offload_registers_access* %187, %struct.offload_registers_access** %19, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %190 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %188, %193
  br i1 %194, label %195, label %282

195:                                              ; preds = %174
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %198 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %196, %201
  br i1 %202, label %203, label %282

203:                                              ; preds = %195
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %206 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %204, %209
  br i1 %210, label %211, label %282

211:                                              ; preds = %203
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %214 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %212, %217
  br i1 %218, label %219, label %282

219:                                              ; preds = %211
  store i64 0, i64* %20, align 8
  %220 = load i64, i64* %20, align 8
  %221 = shl i64 %220, 24
  %222 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %223 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  store i64 %221, i64* %225, align 8
  %226 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %227 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %230, 24
  %232 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %233 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 16
  %238 = or i32 %231, %237
  %239 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %240 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 8
  %245 = or i32 %238, %244
  %246 = load %struct.offload_registers_access*, %struct.offload_registers_access** %19, align 8
  %247 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %250, 0
  %252 = or i32 %245, %251
  %253 = sext i32 %252 to i64
  %254 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %255 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %254, i32 0, i32 1
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  store i64 %253, i64* %257, align 8
  %258 = load i32, i32* %15, align 4
  %259 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %260 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %259, i32 0, i32 1
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i64, i64* %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, %258
  store i32 %266, i32* %264, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %270 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %269, i32 0, i32 1
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = sub i64 %275, %268
  store i64 %276, i64* %274, align 8
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %279 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, %277
  store i32 %281, i32* %279, align 8
  store i32 1, i32* %4, align 4
  br label %290

282:                                              ; preds = %211, %203, %195, %174
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  %285 = load i64, i64* %16, align 8
  %286 = sub i64 %285, 1
  store i64 %286, i64* %16, align 8
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %171

289:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %290

290:                                              ; preds = %289, %219, %95
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
