; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_txschq_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_txschq_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_txschq_config = type { i64, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msg_rsp = type { i32 }
%struct.nix_txsch = type { i32, i32* }
%struct.nix_hw = type { %struct.nix_txsch* }

@NIX_TXSCH_LVL_CNT = common dso_local global i64 0, align 8
@MAX_REGS_PER_MBOX_MSG = common dso_local global i32 0, align 4
@NIX_AF_INVAL_TXSCHQ_CFG = common dso_local global i32 0, align 4
@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i64 0, align 8
@NIX_TXSCH_LVL_TL1 = common dso_local global i64 0, align 8
@TXSCHQ_IDX_SHIFT = common dso_local global i32 0, align 4
@NIX_TXSCHQ_TL1_CFG_DONE = common dso_local global i64 0, align 8
@NIX_AF_SMQ_FLUSH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_txschq_cfg(%struct.rvu* %0, %struct.nix_txschq_config* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_txschq_config*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rvu_hwinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nix_txsch*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nix_hw*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_txschq_config* %1, %struct.nix_txschq_config** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %23 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %24 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.rvu*, %struct.rvu** %5, align 8
  %28 = getelementptr inbounds %struct.rvu, %struct.rvu* %27, i32 0, i32 1
  %29 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %28, align 8
  store %struct.rvu_hwinfo* %29, %struct.rvu_hwinfo** %10, align 8
  %30 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %31 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NIX_TXSCH_LVL_CNT, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %37 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX_REGS_PER_MBOX_MSG, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %3
  %42 = load i32, i32* @NIX_AF_INVAL_TXSCHQ_CFG, align 4
  store i32 %42, i32* %4, align 4
  br label %227

43:                                               ; preds = %35
  %44 = load %struct.rvu*, %struct.rvu** %5, align 8
  %45 = load i32, i32* @BLKTYPE_NIX, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @rvu_get_blkaddr(%struct.rvu* %44, i32 %45, i64 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %51, i32* %4, align 4
  br label %227

52:                                               ; preds = %43
  %53 = load %struct.rvu*, %struct.rvu** %5, align 8
  %54 = getelementptr inbounds %struct.rvu, %struct.rvu* %53, i32 0, i32 1
  %55 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %55, i32 %56)
  store %struct.nix_hw* %57, %struct.nix_hw** %17, align 8
  %58 = load %struct.nix_hw*, %struct.nix_hw** %17, align 8
  %59 = icmp ne %struct.nix_hw* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %227

63:                                               ; preds = %52
  %64 = load %struct.rvu*, %struct.rvu** %5, align 8
  %65 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  %66 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @rvu_get_lf(%struct.rvu* %64, i32* %70, i64 %71, i32 0)
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %76, i32* %4, align 4
  br label %227

77:                                               ; preds = %63
  %78 = load %struct.nix_hw*, %struct.nix_hw** %17, align 8
  %79 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %78, i32 0, i32 0
  %80 = load %struct.nix_txsch*, %struct.nix_txsch** %79, align 8
  %81 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %82 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %80, i64 %83
  store %struct.nix_txsch* %84, %struct.nix_txsch** %14, align 8
  %85 = load %struct.nix_txsch*, %struct.nix_txsch** %14, align 8
  %86 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %21, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @RVU_PFVF_FUNC_MASK, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %77
  %93 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %94 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.rvu*, %struct.rvu** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @nix_tl1_default_cfg(%struct.rvu* %99, i64 %100)
  store i32 %101, i32* %4, align 4
  br label %227

102:                                              ; preds = %92, %77
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %223, %102
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %106 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %226

109:                                              ; preds = %103
  %110 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %111 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load %struct.nix_txschq_config*, %struct.nix_txschq_config** %6, align 8
  %118 = getelementptr inbounds %struct.nix_txschq_config, %struct.nix_txschq_config* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 65535
  store i32 %125, i32* %13, align 4
  %126 = load %struct.rvu*, %struct.rvu** %5, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.nix_txsch*, %struct.nix_txsch** %14, align 8
  %130 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @is_txschq_config_valid(%struct.rvu* %126, i64 %127, i32 %128, i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %109
  %137 = load i32, i32* @NIX_AF_INVAL_TXSCHQ_CFG, align 4
  store i32 %137, i32* %4, align 4
  br label %227

138:                                              ; preds = %109
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @NIX_AF_SMQX_CFG(i32 0)
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load %struct.rvu*, %struct.rvu** %5, align 8
  %144 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  %145 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @rvu_get_lf(%struct.rvu* %143, i32* %149, i64 %150, i32 0)
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = and i64 %153, -2130706433
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %22, align 4
  %157 = shl i32 %156, 24
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %142, %138
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @NIX_AF_TL1X_SCHEDULE(i32 0)
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %197

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @NIX_AF_TL1X_GREEN_BYTES(i32 0)
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %197

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @TXSCHQ_IDX_SHIFT, align 4
  %171 = call i64 @TXSCHQ_IDX(i32 %169, i32 %170)
  store i64 %171, i64* %8, align 8
  %172 = load %struct.rvu*, %struct.rvu** %5, align 8
  %173 = getelementptr inbounds %struct.rvu, %struct.rvu* %172, i32 0, i32 0
  %174 = call i32 @mutex_lock(i32* %173)
  %175 = load i32*, i32** %21, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @TXSCH_MAP_FUNC(i32 %178)
  store i64 %179, i64* %15, align 8
  %180 = load i32*, i32** %21, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @TXSCH_MAP_FLAGS(i32 %183)
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* @NIX_TXSCHQ_TL1_CFG_DONE, align 8
  %186 = load i64, i64* %16, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %16, align 8
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %16, align 8
  %190 = call i32 @TXSCH_MAP(i64 %188, i64 %189)
  %191 = load i32*, i32** %21, align 8
  %192 = load i64, i64* %8, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 %190, i32* %193, align 4
  %194 = load %struct.rvu*, %struct.rvu** %5, align 8
  %195 = getelementptr inbounds %struct.rvu, %struct.rvu* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  br label %197

197:                                              ; preds = %168, %164, %160
  %198 = load %struct.rvu*, %struct.rvu** %5, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @rvu_write64(%struct.rvu* %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @NIX_AF_SMQX_CFG(i32 0)
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %197
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @BIT_ULL(i32 49)
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  %212 = load %struct.rvu*, %struct.rvu** %5, align 8
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @BIT_ULL(i32 49)
  %216 = call i32 @rvu_poll_reg(%struct.rvu* %212, i32 %213, i32 %214, i32 %215, i32 1)
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = load i32, i32* @NIX_AF_SMQ_FLUSH_FAILED, align 4
  store i32 %220, i32* %4, align 4
  br label %227

221:                                              ; preds = %211
  br label %222

222:                                              ; preds = %221, %206, %197
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %19, align 4
  br label %103

226:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %226, %219, %136, %98, %75, %60, %50, %41
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i64) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i64, i32) #1

declare dso_local i32 @nix_tl1_default_cfg(%struct.rvu*, i64) #1

declare dso_local i32 @is_txschq_config_valid(%struct.rvu*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_SMQX_CFG(i32) #1

declare dso_local i32 @NIX_AF_TL1X_SCHEDULE(i32) #1

declare dso_local i32 @NIX_AF_TL1X_GREEN_BYTES(i32) #1

declare dso_local i64 @TXSCHQ_IDX(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TXSCH_MAP_FUNC(i32) #1

declare dso_local i64 @TXSCH_MAP_FLAGS(i32) #1

declare dso_local i32 @TXSCH_MAP(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_poll_reg(%struct.rvu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
