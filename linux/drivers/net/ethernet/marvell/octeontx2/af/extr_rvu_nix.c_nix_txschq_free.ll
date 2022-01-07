; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_txschq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_txschq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_txsch = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL4 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_CNT = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL2 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_SMQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"NIXLF%d: SMQ%d flush failed\0A\00", align 1
@NIX_TXSCH_LVL_TL1 = common dso_local global i32 0, align 4
@NIX_AF_NDC_TX_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"NDC-TX sync failed for NIXLF %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32)* @nix_txschq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_txschq_free(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rvu_hwinfo*, align 8
  %12 = alloca %struct.nix_txsch*, align 8
  %13 = alloca %struct.nix_hw*, align 8
  %14 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.rvu*, %struct.rvu** %4, align 8
  %16 = getelementptr inbounds %struct.rvu, %struct.rvu* %15, i32 0, i32 2
  %17 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %16, align 8
  store %struct.rvu_hwinfo* %17, %struct.rvu_hwinfo** %11, align 8
  %18 = load %struct.rvu*, %struct.rvu** %4, align 8
  %19 = load i32, i32* @BLKTYPE_NIX, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rvu_get_blkaddr(%struct.rvu* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %25, i32* %3, align 4
  br label %248

26:                                               ; preds = %2
  %27 = load %struct.rvu*, %struct.rvu** %4, align 8
  %28 = getelementptr inbounds %struct.rvu, %struct.rvu* %27, i32 0, i32 2
  %29 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %29, i32 %30)
  store %struct.nix_hw* %31, %struct.nix_hw** %13, align 8
  %32 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %33 = icmp ne %struct.nix_hw* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %248

37:                                               ; preds = %26
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %11, align 8
  %40 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rvu_get_lf(%struct.rvu* %38, i32* %44, i32 %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %50, i32* %3, align 4
  br label %248

51:                                               ; preds = %37
  %52 = load %struct.rvu*, %struct.rvu** %4, align 8
  %53 = getelementptr inbounds %struct.rvu, %struct.rvu* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i32, i32* @NIX_TXSCH_LVL_TL4, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %105, %51
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @NIX_TXSCH_LVL_TL2, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NIX_TXSCH_LVL_TL4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %105

69:                                               ; preds = %64, %60
  %70 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %71 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %70, i32 0, i32 0
  %72 = load %struct.nix_txsch*, %struct.nix_txsch** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %72, i64 %74
  store %struct.nix_txsch* %75, %struct.nix_txsch** %12, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %101, %69
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %79 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %85 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @TXSCH_MAP_FUNC(i64 %90)
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %101

95:                                               ; preds = %83
  %96 = load %struct.rvu*, %struct.rvu** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @nix_reset_tx_linkcfg(%struct.rvu* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %76

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %68
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %56

108:                                              ; preds = %56
  %109 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %110 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %109, i32 0, i32 0
  %111 = load %struct.nix_txsch*, %struct.nix_txsch** %110, align 8
  %112 = load i64, i64* @NIX_TXSCH_LVL_SMQ, align 8
  %113 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %111, i64 %112
  store %struct.nix_txsch* %113, %struct.nix_txsch** %12, align 8
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %166, %108
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %117 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %114
  %122 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %123 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @TXSCH_MAP_FUNC(i64 %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %166

133:                                              ; preds = %121
  %134 = load %struct.rvu*, %struct.rvu** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @NIX_AF_SMQX_CFG(i32 %136)
  %138 = call i32 @rvu_read64(%struct.rvu* %134, i32 %135, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = call i32 @BIT_ULL(i32 50)
  %140 = call i32 @BIT_ULL(i32 49)
  %141 = or i32 %139, %140
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load %struct.rvu*, %struct.rvu** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @NIX_AF_SMQX_CFG(i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @rvu_write64(%struct.rvu* %144, i32 %145, i32 %147, i32 %148)
  %150 = load %struct.rvu*, %struct.rvu** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @NIX_AF_SMQX_CFG(i32 %152)
  %154 = call i32 @BIT_ULL(i32 49)
  %155 = call i32 @rvu_poll_reg(%struct.rvu* %150, i32 %151, i32 %153, i32 %154, i32 1)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %133
  %159 = load %struct.rvu*, %struct.rvu** %4, align 8
  %160 = getelementptr inbounds %struct.rvu, %struct.rvu* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %133
  br label %166

166:                                              ; preds = %165, %132
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %114

169:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %220, %169
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %223

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %220

179:                                              ; preds = %174
  %180 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %181 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %180, i32 0, i32 0
  %182 = load %struct.nix_txsch*, %struct.nix_txsch** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %182, i64 %184
  store %struct.nix_txsch* %185, %struct.nix_txsch** %12, align 8
  store i32 0, i32* %9, align 4
  br label %186

186:                                              ; preds = %216, %179
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %189 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %186
  %194 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %195 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @TXSCH_MAP_FUNC(i64 %200)
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %193
  br label %216

205:                                              ; preds = %193
  %206 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %207 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %206, i32 0, i32 1
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @rvu_free_rsrc(%struct.TYPE_2__* %207, i32 %208)
  %210 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %211 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %205, %204
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %186

219:                                              ; preds = %186
  br label %220

220:                                              ; preds = %219, %178
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %170

223:                                              ; preds = %170
  %224 = load %struct.rvu*, %struct.rvu** %4, align 8
  %225 = getelementptr inbounds %struct.rvu, %struct.rvu* %224, i32 0, i32 1
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load %struct.rvu*, %struct.rvu** %4, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @NIX_AF_NDC_TX_SYNC, align 4
  %230 = call i32 @BIT_ULL(i32 12)
  %231 = load i32, i32* %7, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @rvu_write64(%struct.rvu* %227, i32 %228, i32 %229, i32 %232)
  %234 = load %struct.rvu*, %struct.rvu** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @NIX_AF_NDC_TX_SYNC, align 4
  %237 = call i32 @BIT_ULL(i32 12)
  %238 = call i32 @rvu_poll_reg(%struct.rvu* %234, i32 %235, i32 %236, i32 %237, i32 1)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %223
  %242 = load %struct.rvu*, %struct.rvu** %4, align 8
  %243 = getelementptr inbounds %struct.rvu, %struct.rvu* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %244, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %241, %223
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %247, %49, %34, %24
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TXSCH_MAP_FUNC(i64) #1

declare dso_local i32 @nix_reset_tx_linkcfg(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NIX_AF_SMQX_CFG(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_poll_reg(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @rvu_free_rsrc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
