; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, i32, i32, i32, i32, i32, %struct.rvu_block* }
%struct.rvu_block = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_CFG = common dso_local global i32 0, align 4
@NIX_AF_CONST = common dso_local global i32 0, align 4
@NIX_AF_CINT_DELAY = common dso_local global i32 0, align 4
@BLKADDR_NIX0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OL2 = common dso_local global i32 0, align 4
@NPC_LID_LA = common dso_local global i32 0, align 4
@NPC_LT_LA_ETHER = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OIP4 = common dso_local global i32 0, align 4
@NPC_LID_LC = common dso_local global i32 0, align 4
@NPC_LT_LC_IP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_IIP4 = common dso_local global i32 0, align 4
@NPC_LID_LF = common dso_local global i32 0, align 4
@NPC_LT_LF_TU_IP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OIP6 = common dso_local global i32 0, align 4
@NPC_LT_LC_IP6 = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_IIP6 = common dso_local global i32 0, align 4
@NPC_LT_LF_TU_IP6 = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OTCP = common dso_local global i32 0, align 4
@NPC_LID_LD = common dso_local global i32 0, align 4
@NPC_LT_LD_TCP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_ITCP = common dso_local global i32 0, align 4
@NPC_LID_LG = common dso_local global i32 0, align 4
@NPC_LT_LG_TU_TCP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OUDP = common dso_local global i32 0, align 4
@NPC_LT_LD_UDP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_IUDP = common dso_local global i32 0, align 4
@NPC_LT_LG_TU_UDP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_OSCTP = common dso_local global i32 0, align 4
@NPC_LT_LD_SCTP = common dso_local global i32 0, align 4
@NIX_AF_RX_DEF_ISCTP = common dso_local global i32 0, align 4
@NPC_LT_LG_TU_SCTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_nix_init(%struct.rvu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_hwinfo*, align 8
  %5 = alloca %struct.rvu_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  %9 = load %struct.rvu*, %struct.rvu** %3, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 1
  %11 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  store %struct.rvu_hwinfo* %11, %struct.rvu_hwinfo** %4, align 8
  %12 = load %struct.rvu*, %struct.rvu** %3, align 8
  %13 = load i32, i32* @BLKTYPE_NIX, align 4
  %14 = call i32 @rvu_get_blkaddr(%struct.rvu* %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %268

18:                                               ; preds = %1
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %20 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %19, i32 0, i32 6
  %21 = load %struct.rvu_block*, %struct.rvu_block** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %21, i64 %23
  store %struct.rvu_block* %24, %struct.rvu_block** %5, align 8
  %25 = load %struct.rvu*, %struct.rvu** %3, align 8
  %26 = call i64 @is_rvu_9xxx_A0(%struct.rvu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load %struct.rvu*, %struct.rvu** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NIX_AF_CFG, align 4
  %32 = load %struct.rvu*, %struct.rvu** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NIX_AF_CFG, align 4
  %35 = call i32 @rvu_read64(%struct.rvu* %32, i32 %33, i32 %34)
  %36 = sext i32 %35 to i64
  %37 = or i64 %36, 94
  %38 = trunc i64 %37 to i32
  %39 = call i32 @rvu_write64(%struct.rvu* %29, i32 %30, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %28, %18
  %41 = load %struct.rvu*, %struct.rvu** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nix_calibrate_x2p(%struct.rvu* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %268

48:                                               ; preds = %40
  %49 = load %struct.rvu*, %struct.rvu** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @NIX_AF_CONST, align 4
  %52 = call i32 @rvu_read64(%struct.rvu* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 12
  %55 = and i32 %54, 15
  %56 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %57 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 15
  %61 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %62 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %64 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %67 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %71 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %73 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %75 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %74, i32 0, i32 4
  store i32 1, i32* %75, align 8
  %76 = load %struct.rvu*, %struct.rvu** %3, align 8
  %77 = load %struct.rvu_block*, %struct.rvu_block** %5, align 8
  %78 = call i32 @nix_aq_init(%struct.rvu* %76, %struct.rvu_block* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %48
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %268

83:                                               ; preds = %48
  %84 = load %struct.rvu*, %struct.rvu** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @NIX_AF_CINT_DELAY, align 4
  %87 = call i32 @rvu_write64(%struct.rvu* %84, i32 %85, i32 %86, i32 0)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @BLKADDR_NIX0, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %267

91:                                               ; preds = %83
  %92 = load %struct.rvu*, %struct.rvu** %3, align 8
  %93 = getelementptr inbounds %struct.rvu, %struct.rvu* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @devm_kzalloc(i32 %94, i32 4, i32 %95)
  %97 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %98 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %100 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %268

106:                                              ; preds = %91
  %107 = load %struct.rvu*, %struct.rvu** %3, align 8
  %108 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %109 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @nix_setup_txschq(%struct.rvu* %107, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %268

117:                                              ; preds = %106
  %118 = load %struct.rvu*, %struct.rvu** %3, align 8
  %119 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %120 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @nix_af_mark_format_setup(%struct.rvu* %118, i32 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %268

128:                                              ; preds = %117
  %129 = load %struct.rvu*, %struct.rvu** %3, align 8
  %130 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %131 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @nix_setup_mcast(%struct.rvu* %129, i32 %132, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %268

139:                                              ; preds = %128
  %140 = load %struct.rvu*, %struct.rvu** %3, align 8
  %141 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %142 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @nix_setup_lso(%struct.rvu* %140, i32 %143, i32 %144)
  %146 = load %struct.rvu*, %struct.rvu** %3, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @NIX_AF_RX_DEF_OL2, align 4
  %149 = load i32, i32* @NPC_LID_LA, align 4
  %150 = shl i32 %149, 8
  %151 = load i32, i32* @NPC_LT_LA_ETHER, align 4
  %152 = shl i32 %151, 4
  %153 = or i32 %150, %152
  %154 = or i32 %153, 15
  %155 = call i32 @rvu_write64(%struct.rvu* %146, i32 %147, i32 %148, i32 %154)
  %156 = load %struct.rvu*, %struct.rvu** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @NIX_AF_RX_DEF_OIP4, align 4
  %159 = load i32, i32* @NPC_LID_LC, align 4
  %160 = shl i32 %159, 8
  %161 = load i32, i32* @NPC_LT_LC_IP, align 4
  %162 = shl i32 %161, 4
  %163 = or i32 %160, %162
  %164 = or i32 %163, 15
  %165 = call i32 @rvu_write64(%struct.rvu* %156, i32 %157, i32 %158, i32 %164)
  %166 = load %struct.rvu*, %struct.rvu** %3, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @NIX_AF_RX_DEF_IIP4, align 4
  %169 = load i32, i32* @NPC_LID_LF, align 4
  %170 = shl i32 %169, 8
  %171 = load i32, i32* @NPC_LT_LF_TU_IP, align 4
  %172 = shl i32 %171, 4
  %173 = or i32 %170, %172
  %174 = or i32 %173, 15
  %175 = call i32 @rvu_write64(%struct.rvu* %166, i32 %167, i32 %168, i32 %174)
  %176 = load %struct.rvu*, %struct.rvu** %3, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @NIX_AF_RX_DEF_OIP6, align 4
  %179 = load i32, i32* @NPC_LID_LC, align 4
  %180 = shl i32 %179, 8
  %181 = load i32, i32* @NPC_LT_LC_IP6, align 4
  %182 = shl i32 %181, 4
  %183 = or i32 %180, %182
  %184 = or i32 %183, 15
  %185 = call i32 @rvu_write64(%struct.rvu* %176, i32 %177, i32 %178, i32 %184)
  %186 = load %struct.rvu*, %struct.rvu** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @NIX_AF_RX_DEF_IIP6, align 4
  %189 = load i32, i32* @NPC_LID_LF, align 4
  %190 = shl i32 %189, 8
  %191 = load i32, i32* @NPC_LT_LF_TU_IP6, align 4
  %192 = shl i32 %191, 4
  %193 = or i32 %190, %192
  %194 = or i32 %193, 15
  %195 = call i32 @rvu_write64(%struct.rvu* %186, i32 %187, i32 %188, i32 %194)
  %196 = load %struct.rvu*, %struct.rvu** %3, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @NIX_AF_RX_DEF_OTCP, align 4
  %199 = load i32, i32* @NPC_LID_LD, align 4
  %200 = shl i32 %199, 8
  %201 = load i32, i32* @NPC_LT_LD_TCP, align 4
  %202 = shl i32 %201, 4
  %203 = or i32 %200, %202
  %204 = or i32 %203, 15
  %205 = call i32 @rvu_write64(%struct.rvu* %196, i32 %197, i32 %198, i32 %204)
  %206 = load %struct.rvu*, %struct.rvu** %3, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @NIX_AF_RX_DEF_ITCP, align 4
  %209 = load i32, i32* @NPC_LID_LG, align 4
  %210 = shl i32 %209, 8
  %211 = load i32, i32* @NPC_LT_LG_TU_TCP, align 4
  %212 = shl i32 %211, 4
  %213 = or i32 %210, %212
  %214 = or i32 %213, 15
  %215 = call i32 @rvu_write64(%struct.rvu* %206, i32 %207, i32 %208, i32 %214)
  %216 = load %struct.rvu*, %struct.rvu** %3, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @NIX_AF_RX_DEF_OUDP, align 4
  %219 = load i32, i32* @NPC_LID_LD, align 4
  %220 = shl i32 %219, 8
  %221 = load i32, i32* @NPC_LT_LD_UDP, align 4
  %222 = shl i32 %221, 4
  %223 = or i32 %220, %222
  %224 = or i32 %223, 15
  %225 = call i32 @rvu_write64(%struct.rvu* %216, i32 %217, i32 %218, i32 %224)
  %226 = load %struct.rvu*, %struct.rvu** %3, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @NIX_AF_RX_DEF_IUDP, align 4
  %229 = load i32, i32* @NPC_LID_LG, align 4
  %230 = shl i32 %229, 8
  %231 = load i32, i32* @NPC_LT_LG_TU_UDP, align 4
  %232 = shl i32 %231, 4
  %233 = or i32 %230, %232
  %234 = or i32 %233, 15
  %235 = call i32 @rvu_write64(%struct.rvu* %226, i32 %227, i32 %228, i32 %234)
  %236 = load %struct.rvu*, %struct.rvu** %3, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @NIX_AF_RX_DEF_OSCTP, align 4
  %239 = load i32, i32* @NPC_LID_LD, align 4
  %240 = shl i32 %239, 8
  %241 = load i32, i32* @NPC_LT_LD_SCTP, align 4
  %242 = shl i32 %241, 4
  %243 = or i32 %240, %242
  %244 = or i32 %243, 15
  %245 = call i32 @rvu_write64(%struct.rvu* %236, i32 %237, i32 %238, i32 %244)
  %246 = load %struct.rvu*, %struct.rvu** %3, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @NIX_AF_RX_DEF_ISCTP, align 4
  %249 = load i32, i32* @NPC_LID_LG, align 4
  %250 = shl i32 %249, 8
  %251 = load i32, i32* @NPC_LT_LG_TU_SCTP, align 4
  %252 = shl i32 %251, 4
  %253 = or i32 %250, %252
  %254 = or i32 %253, 15
  %255 = call i32 @rvu_write64(%struct.rvu* %246, i32 %247, i32 %248, i32 %254)
  %256 = load %struct.rvu*, %struct.rvu** %3, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @nix_rx_flowkey_alg_cfg(%struct.rvu* %256, i32 %257)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %139
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %268

263:                                              ; preds = %139
  %264 = load %struct.rvu*, %struct.rvu** %3, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @nix_link_config(%struct.rvu* %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %83
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %267, %261, %137, %126, %115, %103, %81, %46, %17
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i64 @is_rvu_9xxx_A0(%struct.rvu*) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_calibrate_x2p(%struct.rvu*, i32) #1

declare dso_local i32 @nix_aq_init(%struct.rvu*, %struct.rvu_block*) #1

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @nix_setup_txschq(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_af_mark_format_setup(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_setup_mcast(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_setup_lso(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_rx_flowkey_alg_cfg(%struct.rvu*, i32) #1

declare dso_local i32 @nix_link_config(%struct.rvu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
