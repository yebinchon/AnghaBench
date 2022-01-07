; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_alloc_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_alloc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npc_mcam = type { i32, i64*, i32, i32, i32, i32, i64*, i32*, i32, i32* }
%struct.npc_mcam_alloc_entry_req = type { i64, i32, i32, i64 }
%struct.npc_mcam_alloc_entry_rsp = type { i32, i32, i32*, i32 }

@NPC_MAX_NONCONTIG_ENTRIES = common dso_local global i32 0, align 4
@NPC_MCAM_ALLOC_FAILED = common dso_local global i32 0, align 4
@NPC_MCAM_LOWER_PRIO = common dso_local global i64 0, align 8
@NPC_MCAM_HIGHER_PRIO = common dso_local global i64 0, align 8
@NPC_MCAM_INVALID_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npc_mcam*, i32, %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_rsp*)* @npc_mcam_alloc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npc_mcam_alloc_entries(%struct.npc_mcam* %0, i32 %1, %struct.npc_mcam_alloc_entry_req* %2, %struct.npc_mcam_alloc_entry_rsp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.npc_mcam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.npc_mcam_alloc_entry_req*, align 8
  %9 = alloca %struct.npc_mcam_alloc_entry_rsp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.npc_mcam* %0, %struct.npc_mcam** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.npc_mcam_alloc_entry_req* %2, %struct.npc_mcam_alloc_entry_req** %8, align 8
  store %struct.npc_mcam_alloc_entry_rsp* %3, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %24 = load i32, i32* @NPC_MAX_NONCONTIG_ENTRIES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i32 0, i32* %20, align 4
  %28 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %29 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %28, i32 0, i32 8
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %32 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %37 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %36, i32 0, i32 8
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @NPC_MCAM_ALLOC_FAILED, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %407

40:                                               ; preds = %4
  %41 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %42 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %47 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %48 = call i32 @npc_get_mcam_search_range_priority(%struct.npc_mcam* %46, %struct.npc_mcam_alloc_entry_req* %47, i32* %15, i32* %16, i32* %20)
  br label %117

49:                                               ; preds = %40
  %50 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %51 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %54 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %57 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @npc_mcam_get_free_count(i64* %52, i32 %55, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %61 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %64 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @npc_mcam_get_free_count(i64* %62, i32 0, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %68 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %76 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %49
  %80 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %81 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %15, align 4
  %83 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %84 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  br label %116

86:                                               ; preds = %49
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sdiv i32 %88, 2
  %90 = add nsw i32 %87, %89
  %91 = load i32, i32* %14, align 4
  %92 = sdiv i32 %91, 2
  %93 = add nsw i32 %90, %92
  %94 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %95 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %86
  %99 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %100 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %15, align 4
  %103 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %104 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %107 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 2
  %110 = sub nsw i32 %105, %109
  store i32 %110, i32* %16, align 4
  store i32 1, i32* %20, align 4
  br label %115

111:                                              ; preds = %86
  store i32 1, i32* %20, align 4
  store i32 0, i32* %15, align 4
  %112 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %113 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %111, %98
  br label %116

116:                                              ; preds = %115, %79
  br label %117

117:                                              ; preds = %295, %273, %243, %116, %45
  %118 = load i32, i32* %20, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %122 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %121, i32 0, i32 6
  %123 = load i64*, i64** %122, align 8
  store i64* %123, i64** %21, align 8
  %124 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %125 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %15, align 4
  %129 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %130 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %16, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %16, align 4
  br label %141

137:                                              ; preds = %117
  %138 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %139 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  store i64* %140, i64** %21, align 8
  br label %141

141:                                              ; preds = %137, %120
  %142 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %143 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %141
  %147 = load i64*, i64** %21, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %151 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @npc_mcam_find_zero_area(i64* %147, i32 %148, i32 %149, i32 %152, i32* %22)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %156 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %146
  %160 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %161 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %17, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %22, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %168 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %173

169:                                              ; preds = %146
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %172 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %159
  br label %222

174:                                              ; preds = %141
  %175 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %176 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %178

178:                                              ; preds = %218, %174
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %181 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %221

184:                                              ; preds = %178
  %185 = load i64*, i64** %21, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @find_next_zero_bit(i64* %185, i32 %186, i32 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %221

193:                                              ; preds = %184
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %15, align 4
  %197 = sub nsw i32 %195, %196
  %198 = add nsw i32 %194, %197
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %204 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %17, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %209

209:                                              ; preds = %202, %193
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %27, i64 %212
  store i32 %210, i32* %213, align 4
  %214 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %215 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  br label %178

221:                                              ; preds = %192, %178
  br label %222

222:                                              ; preds = %221, %173
  %223 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %224 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %222
  %228 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %229 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %232 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %227
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %15, align 4
  %238 = sub nsw i32 %236, %237
  %239 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %240 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %238, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %235
  store i32 1, i32* %20, align 4
  store i32 0, i32* %15, align 4
  %244 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %245 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %16, align 4
  br label %117

247:                                              ; preds = %235, %227, %222
  %248 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %249 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %301

252:                                              ; preds = %247
  %253 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %254 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %257 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %301

260:                                              ; preds = %252
  %261 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %262 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @NPC_MCAM_LOWER_PRIO, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %281

266:                                              ; preds = %260
  %267 = load i32, i32* %15, align 4
  %268 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %269 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  %272 = icmp ne i32 %267, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %275 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %15, align 4
  %278 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %279 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %117

281:                                              ; preds = %266, %260
  %282 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %283 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @NPC_MCAM_HIGHER_PRIO, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %299

287:                                              ; preds = %281
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %15, align 4
  %290 = sub nsw i32 %288, %289
  %291 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %292 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %290, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %287
  store i32 0, i32* %15, align 4
  %296 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %297 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %16, align 4
  store i32 1, i32* %20, align 4
  br label %117

299:                                              ; preds = %287, %281
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300, %252, %247
  %302 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %303 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %350, label %306

306:                                              ; preds = %301
  %307 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %308 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %350

311:                                              ; preds = %306
  store i32 0, i32* %17, align 4
  %312 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %313 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  store i32 %315, i32* %18, align 4
  br label %316

316:                                              ; preds = %346, %311
  %317 = load i32, i32* %18, align 4
  %318 = icmp sge i32 %317, 0
  br i1 %318, label %319, label %349

319:                                              ; preds = %316
  %320 = load i32, i32* %20, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %334

322:                                              ; preds = %319
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %27, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %328 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %17, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %17, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  store i32 %326, i32* %333, align 4
  br label %345

334:                                              ; preds = %319
  %335 = load i32, i32* %18, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %27, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %340 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %18, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 %338, i32* %344, align 4
  br label %345

345:                                              ; preds = %334, %322
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %18, align 4
  br label %316

349:                                              ; preds = %316
  br label %350

350:                                              ; preds = %349, %306, %301
  store i32 0, i32* %18, align 4
  br label %351

351:                                              ; preds = %395, %350
  %352 = load i32, i32* %18, align 4
  %353 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %354 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp slt i32 %352, %355
  br i1 %356, label %357, label %398

357:                                              ; preds = %351
  %358 = load %struct.npc_mcam_alloc_entry_req*, %struct.npc_mcam_alloc_entry_req** %8, align 8
  %359 = getelementptr inbounds %struct.npc_mcam_alloc_entry_req, %struct.npc_mcam_alloc_entry_req* %358, i32 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %357
  %363 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %364 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %18, align 4
  %367 = add nsw i32 %365, %366
  br label %376

368:                                              ; preds = %357
  %369 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %370 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %369, i32 0, i32 2
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %18, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  br label %376

376:                                              ; preds = %368, %362
  %377 = phi i32 [ %367, %362 ], [ %375, %368 ]
  store i32 %377, i32* %17, align 4
  %378 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %379 = load i32, i32* %17, align 4
  %380 = call i32 @npc_mcam_set_bit(%struct.npc_mcam* %378, i32 %379)
  %381 = load i32, i32* %7, align 4
  %382 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %383 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %382, i32 0, i32 7
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %381, i32* %387, align 4
  %388 = load i32, i32* @NPC_MCAM_INVALID_MAP, align 4
  %389 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %390 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %389, i32 0, i32 9
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %17, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %388, i32* %394, align 4
  br label %395

395:                                              ; preds = %376
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %18, align 4
  br label %351

398:                                              ; preds = %351
  %399 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %400 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.npc_mcam_alloc_entry_rsp*, %struct.npc_mcam_alloc_entry_rsp** %9, align 8
  %403 = getelementptr inbounds %struct.npc_mcam_alloc_entry_rsp, %struct.npc_mcam_alloc_entry_rsp* %402, i32 0, i32 3
  store i32 %401, i32* %403, align 8
  %404 = load %struct.npc_mcam*, %struct.npc_mcam** %6, align 8
  %405 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %404, i32 0, i32 8
  %406 = call i32 @mutex_unlock(i32* %405)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %407

407:                                              ; preds = %398, %35
  %408 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %408)
  %409 = load i32, i32* %5, align 4
  ret i32 %409
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @npc_get_mcam_search_range_priority(%struct.npc_mcam*, %struct.npc_mcam_alloc_entry_req*, i32*, i32*, i32*) #2

declare dso_local i32 @npc_mcam_get_free_count(i64*, i32, i32) #2

declare dso_local i32 @npc_mcam_find_zero_area(i64*, i32, i32, i32, i32*) #2

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #2

declare dso_local i32 @npc_mcam_set_bit(%struct.npc_mcam*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
