; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_write_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_write_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_txq = type { %struct.ulptx_sge_pair*, i64 }
%struct.ulptx_sge_pair = type { i8**, i8** }
%struct.ulptx_sgl = type { %struct.ulptx_sge_pair*, i8*, i8*, i8* }
%struct.skb_shared_info = type { i32, i32* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ULP_TX_SC_DSGL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_write_sgl(%struct.sk_buff* %0, %struct.sge_txq* %1, %struct.ulptx_sgl* %2, i64* %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca %struct.ulptx_sgl*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ulptx_sge_pair*, align 8
  %16 = alloca %struct.skb_shared_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %8, align 8
  store %struct.ulptx_sgl* %2, %struct.ulptx_sgl** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %23)
  store %struct.skb_shared_info* %24, %struct.skb_shared_info** %16, align 8
  %25 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %26 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %18, align 8
  %33 = alloca %struct.ulptx_sge_pair, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @skb_headlen(%struct.sk_buff* %34)
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %6
  %42 = load i32, i32* %14, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %45 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i8* @cpu_to_be64(i64 %51)
  %53 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %54 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %17, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %72

57:                                               ; preds = %6
  %58 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %59 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @skb_frag_size(i32* %61)
  %63 = call i8* @htonl(i32 %62)
  %64 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %65 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @cpu_to_be64(i64 %68)
  %70 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %71 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %57, %41
  %73 = load i32, i32* @ULP_TX_SC_DSGL, align 4
  %74 = call i32 @ULPTX_CMD_V(i32 %73)
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @ULPTX_NSGE_V(i32 %75)
  %77 = or i32 %74, %76
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %80 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %17, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  store i32 1, i32* %20, align 4
  br label %265

88:                                               ; preds = %72
  %89 = load i64*, i64** %10, align 8
  %90 = bitcast i64* %89 to %struct.ulptx_sge_pair*
  %91 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %92 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.ulptx_sge_pair*
  %95 = icmp ugt %struct.ulptx_sge_pair* %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %99 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %98, i32 0, i32 0
  %100 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %99, align 8
  br label %101

101:                                              ; preds = %97, %96
  %102 = phi %struct.ulptx_sge_pair* [ %33, %96 ], [ %100, %97 ]
  store %struct.ulptx_sge_pair* %102, %struct.ulptx_sge_pair** %15, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %105 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %103, %106
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %159, %101
  %110 = load i32, i32* %17, align 4
  %111 = icmp uge i32 %110, 2
  br i1 %111, label %112, label %164

112:                                              ; preds = %109
  %113 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %114 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @skb_frag_size(i32* %118)
  %120 = call i8* @cpu_to_be32(i32 %119)
  %121 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %122 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  store i8* %120, i8** %124, align 8
  %125 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %126 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = call i32 @skb_frag_size(i32* %131)
  %133 = call i8* @cpu_to_be32(i32 %132)
  %134 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %135 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  store i8* %133, i8** %137, align 8
  %138 = load i64*, i64** %12, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @cpu_to_be64(i64 %142)
  %144 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %145 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  store i8* %143, i8** %147, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @cpu_to_be64(i64 %153)
  %155 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %156 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  store i8* %154, i8** %158, align 8
  br label %159

159:                                              ; preds = %112
  %160 = load i32, i32* %17, align 4
  %161 = sub i32 %160, 2
  store i32 %161, i32* %17, align 4
  %162 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %163 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %162, i32 1
  store %struct.ulptx_sge_pair* %163, %struct.ulptx_sge_pair** %15, align 8
  br label %109

164:                                              ; preds = %109
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %164
  %168 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %169 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @skb_frag_size(i32* %173)
  %175 = call i8* @cpu_to_be32(i32 %174)
  %176 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %177 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %175, i8** %179, align 8
  %180 = call i8* @cpu_to_be32(i32 0)
  %181 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %182 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %181, i32 0, i32 1
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  store i8* %180, i8** %184, align 8
  %185 = load i64*, i64** %12, align 8
  %186 = load i32, i32* %13, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %185, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @cpu_to_be64(i64 %190)
  %192 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %193 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %192, i32 0, i32 0
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  store i8* %191, i8** %195, align 8
  br label %196

196:                                              ; preds = %167, %164
  %197 = load i64*, i64** %10, align 8
  %198 = bitcast i64* %197 to %struct.ulptx_sge_pair*
  %199 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %200 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.ulptx_sge_pair*
  %203 = icmp ugt %struct.ulptx_sge_pair* %198, %202
  %204 = zext i1 %203 to i32
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %257

207:                                              ; preds = %196
  %208 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %209 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to %struct.ulptx_sge_pair*
  %212 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %213 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %212, i32 0, i32 0
  %214 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %213, align 8
  %215 = ptrtoint %struct.ulptx_sge_pair* %211 to i64
  %216 = ptrtoint %struct.ulptx_sge_pair* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 16
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i64 @likely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %207
  %224 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %225 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %224, i32 0, i32 0
  %226 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %225, align 8
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @memcpy(%struct.ulptx_sge_pair* %226, %struct.ulptx_sge_pair* %33, i32 %227)
  br label %229

229:                                              ; preds = %223, %207
  %230 = load i64*, i64** %10, align 8
  %231 = bitcast i64* %230 to %struct.ulptx_sge_pair*
  %232 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %233 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to %struct.ulptx_sge_pair*
  %236 = ptrtoint %struct.ulptx_sge_pair* %231 to i64
  %237 = ptrtoint %struct.ulptx_sge_pair* %235 to i64
  %238 = sub i64 %236, %237
  %239 = sdiv exact i64 %238, 16
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %22, align 4
  %241 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %242 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %241, i32 0, i32 0
  %243 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %242, align 8
  %244 = load i32, i32* %21, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %33, i64 %245
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @memcpy(%struct.ulptx_sge_pair* %243, %struct.ulptx_sge_pair* %246, i32 %247)
  %249 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %250 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %249, i32 0, i32 0
  %251 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %250, align 8
  %252 = bitcast %struct.ulptx_sge_pair* %251 to i8*
  %253 = load i32, i32* %22, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr i8, i8* %252, i64 %254
  %256 = bitcast i8* %255 to i64*
  store i64* %256, i64** %10, align 8
  br label %257

257:                                              ; preds = %229, %196
  %258 = load i64*, i64** %10, align 8
  %259 = ptrtoint i64* %258 to i64
  %260 = and i64 %259, 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = load i64*, i64** %10, align 8
  store i64 0, i64* %263, align 8
  br label %264

264:                                              ; preds = %262, %257
  store i32 0, i32* %20, align 4
  br label %265

265:                                              ; preds = %264, %87
  %266 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %266)
  %267 = load i32, i32* %20, align 4
  switch i32 %267, label %269 [
    i32 0, label %268
    i32 1, label %268
  ]

268:                                              ; preds = %265, %265
  ret void

269:                                              ; preds = %265
  unreachable
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @ULPTX_CMD_V(i32) #1

declare dso_local i32 @ULPTX_NSGE_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.ulptx_sge_pair*, %struct.ulptx_sge_pair*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
