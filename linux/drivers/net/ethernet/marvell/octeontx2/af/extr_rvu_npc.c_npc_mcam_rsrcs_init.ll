; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_rsrcs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_rsrcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.npc_mcam }
%struct.npc_mcam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@NPC_AF_CONST = common dso_local global i32 0, align 4
@NPC_MCAM_KEY_X4 = common dso_local global i32 0, align 4
@NPC_MCAM_KEY_X2 = common dso_local global i32 0, align 4
@RSVD_MCAM_ENTRIES_PER_NIXLF = common dso_local global i32 0, align 4
@RSVD_MCAM_ENTRIES_PER_PF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Insufficient NPC MCAM size %d for pkt I/O, exiting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32)* @npc_mcam_rsrcs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npc_mcam_rsrcs_init(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.npc_mcam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rvu*, %struct.rvu** %4, align 8
  %12 = call i32 @rvu_get_nixlf_count(%struct.rvu* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rvu*, %struct.rvu** %4, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.npc_mcam* %16, %struct.npc_mcam** %7, align 8
  %17 = load %struct.rvu*, %struct.rvu** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NPC_AF_CONST, align 4
  %20 = call i32 @rvu_read64(%struct.rvu* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = ashr i32 %21, 44
  %23 = and i32 %22, 15
  %24 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %25 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 28
  %28 = and i32 %27, 65535
  %29 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %30 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 48
  %33 = and i32 %32, 65535
  %34 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %35 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.rvu*, %struct.rvu** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @NPC_AF_INTFX_KEX_CFG(i32 0)
  %40 = call i32 @rvu_read64(%struct.rvu* %37, i32 %38, i32 %39)
  %41 = ashr i32 %40, 32
  %42 = and i32 %41, 7
  store i32 %42, i32* %10, align 4
  %43 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %44 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BIT_ULL(i32 %46)
  %48 = sdiv i32 %45, %47
  %49 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %50 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %54 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %57 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @NPC_MCAM_KEY_X4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %63 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %62, i32 0, i32 4
  store i32 4, i32* %63, align 8
  br label %75

64:                                               ; preds = %2
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @NPC_MCAM_KEY_X2, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %70 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %69, i32 0, i32 4
  store i32 2, i32* %70, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %73 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %72, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @RSVD_MCAM_ENTRIES_PER_NIXLF, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.rvu*, %struct.rvu** %4, align 8
  %80 = getelementptr inbounds %struct.rvu, %struct.rvu* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @RSVD_MCAM_ENTRIES_PER_PF, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %78, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %89 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %75
  %94 = load %struct.rvu*, %struct.rvu** %4, align 8
  %95 = getelementptr inbounds %struct.rvu, %struct.rvu* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %98 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_warn(i32 %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %292

103:                                              ; preds = %75
  %104 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %105 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %110 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %112 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %115 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %117 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %122 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  %123 = load %struct.rvu*, %struct.rvu** %4, align 8
  %124 = getelementptr inbounds %struct.rvu, %struct.rvu* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %127 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BITS_TO_LONGS(i32 %128)
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @devm_kcalloc(i32 %125, i32 %129, i32 8, i32 %130)
  %132 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %133 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %132, i32 0, i32 20
  store i8* %131, i8** %133, align 8
  %134 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %135 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %134, i32 0, i32 20
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %103
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %292

141:                                              ; preds = %103
  %142 = load %struct.rvu*, %struct.rvu** %4, align 8
  %143 = getelementptr inbounds %struct.rvu, %struct.rvu* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %146 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @BITS_TO_LONGS(i32 %147)
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @devm_kcalloc(i32 %144, i32 %148, i32 8, i32 %149)
  %151 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %152 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %151, i32 0, i32 19
  store i8* %150, i8** %152, align 8
  %153 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %154 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %153, i32 0, i32 19
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %141
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %292

160:                                              ; preds = %141
  %161 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %162 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %165 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.rvu*, %struct.rvu** %4, align 8
  %167 = getelementptr inbounds %struct.rvu, %struct.rvu* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %170 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @devm_kcalloc(i32 %168, i32 %171, i32 4, i32 %172)
  %174 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %175 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %174, i32 0, i32 18
  store i8* %173, i8** %175, align 8
  %176 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %177 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %176, i32 0, i32 18
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %160
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %292

183:                                              ; preds = %160
  %184 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %185 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 8
  %188 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %189 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 4
  %190 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %191 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @BITS_PER_LONG, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %183
  %196 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %197 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @BITS_PER_LONG, align 4
  %200 = call i32 @round_down(i32 %198, i32 %199)
  %201 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %202 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %195, %183
  %204 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %205 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %208 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %206, %209
  %211 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %212 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %211, i32 0, i32 10
  store i32 %210, i32* %212, align 8
  %213 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %214 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %217 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %216, i32 0, i32 11
  store i32 %215, i32* %217, align 4
  %218 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %219 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %222 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %221, i32 0, i32 12
  store i32 %220, i32* %222, align 8
  %223 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %224 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %223, i32 0, i32 13
  %225 = call i32 @rvu_alloc_bitmap(%struct.TYPE_4__* %224)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %203
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %3, align 4
  br label %292

230:                                              ; preds = %203
  %231 = load %struct.rvu*, %struct.rvu** %4, align 8
  %232 = getelementptr inbounds %struct.rvu, %struct.rvu* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %235 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %234, i32 0, i32 13
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @devm_kcalloc(i32 %233, i32 %237, i32 4, i32 %238)
  %240 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %241 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %240, i32 0, i32 17
  store i8* %239, i8** %241, align 8
  %242 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %243 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %242, i32 0, i32 17
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %230
  br label %284

247:                                              ; preds = %230
  %248 = load %struct.rvu*, %struct.rvu** %4, align 8
  %249 = getelementptr inbounds %struct.rvu, %struct.rvu* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %252 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @devm_kcalloc(i32 %250, i32 %253, i32 4, i32 %254)
  %256 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %257 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %256, i32 0, i32 16
  store i8* %255, i8** %257, align 8
  %258 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %259 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %258, i32 0, i32 16
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %247
  br label %284

263:                                              ; preds = %247
  %264 = load %struct.rvu*, %struct.rvu** %4, align 8
  %265 = getelementptr inbounds %struct.rvu, %struct.rvu* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %268 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %267, i32 0, i32 13
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @devm_kcalloc(i32 %266, i32 %270, i32 4, i32 %271)
  %273 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %274 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %273, i32 0, i32 15
  store i8* %272, i8** %274, align 8
  %275 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %276 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %275, i32 0, i32 15
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %263
  br label %284

280:                                              ; preds = %263
  %281 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %282 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %281, i32 0, i32 14
  %283 = call i32 @mutex_init(i32* %282)
  store i32 0, i32* %3, align 4
  br label %292

284:                                              ; preds = %279, %262, %246
  %285 = load %struct.npc_mcam*, %struct.npc_mcam** %7, align 8
  %286 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %285, i32 0, i32 13
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @kfree(i32 %288)
  %290 = load i32, i32* @ENOMEM, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %284, %280, %228, %180, %157, %138, %93
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @rvu_get_nixlf_count(%struct.rvu*) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NPC_AF_INTFX_KEX_CFG(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @rvu_alloc_bitmap(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
