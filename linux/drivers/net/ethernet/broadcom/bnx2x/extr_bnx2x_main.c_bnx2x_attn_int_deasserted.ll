; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__, %struct.attn_route*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.attn_route = type { i32* }

@BNX2X_RECOVERY_INIT = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_2_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_3_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_4_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_AFTER_INVERT_5_FUNC_0 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"attn: %08x %08x %08x %08x %08x\0A\00", align 1
@MAX_DYNAMIC_ATTN_GRPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"group[%d]: %08x %08x %08x %08x %08x\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_COMMAND_REG = common dso_local global i32 0, align 4
@COMMAND_REG_ATTN_BITS_CLR = common dso_local global i32 0, align 4
@BAR_IGU_INTMEM = common dso_local global i32 0, align 4
@IGU_CMD_ATTN_BIT_CLR_UPPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"about to mask 0x%08x at %s addr 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IGU ERROR\0A\00", align 1
@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_PORT0_ATT_MASK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"aeu_mask %x  newly deasserted %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"new mask %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"attn_state %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"new state %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.attn_route, align 8
  %6 = alloca %struct.attn_route*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i32 @BP_PORT(%struct.bnx2x* %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = call i32 @bnx2x_acquire_alr(%struct.bnx2x* %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i64 @bnx2x_chk_parity_attn(%struct.bnx2x* %17, i32* %12, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @BNX2X_RECOVERY_INIT, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 3
  %26 = call i32 @schedule_delayed_work(i32* %25, i32 0)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @bnx2x_int_disable(%struct.bnx2x* %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call i32 @bnx2x_release_alr(%struct.bnx2x* %29)
  br label %327

31:                                               ; preds = %2
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_1_FUNC_0, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %33, %35
  %37 = call i8* @REG_RD(%struct.bnx2x* %32, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_2_FUNC_0, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 4
  %46 = add nsw i32 %43, %45
  %47 = call i8* @REG_RD(%struct.bnx2x* %42, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_3_FUNC_0, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %53, %55
  %57 = call i8* @REG_RD(%struct.bnx2x* %52, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %58, i32* %61, align 4
  %62 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %63 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_4_FUNC_0, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 %63, %65
  %67 = call i8* @REG_RD(%struct.bnx2x* %62, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %31
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = load i32, i32* @MISC_REG_AEU_AFTER_INVERT_5_FUNC_0, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 4
  %80 = add nsw i32 %77, %79
  %81 = call i8* @REG_RD(%struct.bnx2x* %76, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %82, i32* %85, align 4
  br label %90

86:                                               ; preds = %31
  %87 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %75
  %91 = load i32, i32* @NETIF_MSG_HW, align 4
  %92 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, i32, ...) @DP(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %99, i32 %103, i32 %107, i32 %111)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %219, %90
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @MAX_DYNAMIC_ATTN_GRPS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %222

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %8, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %218

123:                                              ; preds = %117
  %124 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 2
  %126 = load %struct.attn_route*, %struct.attn_route** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %126, i64 %128
  store %struct.attn_route* %129, %struct.attn_route** %6, align 8
  %130 = load i32, i32* @NETIF_MSG_HW, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %133 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %138 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %143 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %148 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %153 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @DP(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %136, i32 %141, i32 %146, i32 %151, i32 %156)
  %158 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %159 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %164 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %162, %167
  %169 = call i32 @bnx2x_attn_int_deasserted4(%struct.bnx2x* %158, i32 %168)
  %170 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %171 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %176 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %174, %179
  %181 = call i32 @bnx2x_attn_int_deasserted3(%struct.bnx2x* %170, i32 %180)
  %182 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %183 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %188 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %186, %191
  %193 = call i32 @bnx2x_attn_int_deasserted1(%struct.bnx2x* %182, i32 %192)
  %194 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %195 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %200 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %198, %203
  %205 = call i32 @bnx2x_attn_int_deasserted2(%struct.bnx2x* %194, i32 %204)
  %206 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %207 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %5, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.attn_route*, %struct.attn_route** %6, align 8
  %212 = getelementptr inbounds %struct.attn_route, %struct.attn_route* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %210, %215
  %217 = call i32 @bnx2x_attn_int_deasserted0(%struct.bnx2x* %206, i32 %216)
  br label %218

218:                                              ; preds = %123, %117
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %113

222:                                              ; preds = %113
  %223 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %224 = call i32 @bnx2x_release_alr(%struct.bnx2x* %223)
  %225 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %226 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @INT_BLOCK_HC, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load i32, i32* @HC_REG_COMMAND_REG, align 4
  %233 = load i32, i32* %7, align 4
  %234 = mul nsw i32 %233, 32
  %235 = add nsw i32 %232, %234
  %236 = load i32, i32* @COMMAND_REG_ATTN_BITS_CLR, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %9, align 4
  br label %243

238:                                              ; preds = %222
  %239 = load i32, i32* @BAR_IGU_INTMEM, align 4
  %240 = load i32, i32* @IGU_CMD_ATTN_BIT_CLR_UPPER, align 4
  %241 = mul nsw i32 %240, 8
  %242 = add nsw i32 %239, %241
  store i32 %242, i32* %9, align 4
  br label %243

243:                                              ; preds = %238, %231
  %244 = load i32, i32* %4, align 4
  %245 = xor i32 %244, -1
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* @NETIF_MSG_HW, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %249 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @INT_BLOCK_HC, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %256 = load i32, i32* %9, align 4
  %257 = call i32 (i32, i8*, i32, ...) @DP(i32 %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %247, i8* %255, i32 %256)
  %258 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @REG_WR(%struct.bnx2x* %258, i32 %259, i32 %260)
  %262 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %263 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %4, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %243
  %270 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %243
  %272 = load i32, i32* %7, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %275, %274 ], [ %277, %276 ]
  store i32 %279, i32* %9, align 4
  %280 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %281 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %281, %283
  %285 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %280, i64 %284)
  %286 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %287 = load i32, i32* %9, align 4
  %288 = call i8* @REG_RD(%struct.bnx2x* %286, i32 %287)
  %289 = ptrtoint i8* %288 to i32
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* @NETIF_MSG_HW, align 4
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* %4, align 4
  %293 = call i32 (i32, i8*, i32, ...) @DP(i32 %290, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %291, i32 %292)
  %294 = load i32, i32* %4, align 4
  %295 = and i32 %294, 1023
  %296 = load i32, i32* %11, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %11, align 4
  %298 = load i32, i32* @NETIF_MSG_HW, align 4
  %299 = load i32, i32* %11, align 4
  %300 = call i32 (i32, i8*, i32, ...) @DP(i32 %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %299)
  %301 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @REG_WR(%struct.bnx2x* %301, i32 %302, i32 %303)
  %305 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %306 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %306, %308
  %310 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %305, i64 %309)
  %311 = load i32, i32* @NETIF_MSG_HW, align 4
  %312 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %313 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i32, i8*, i32, ...) @DP(i32 %311, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %4, align 4
  %317 = xor i32 %316, -1
  %318 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %319 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, %317
  store i32 %321, i32* %319, align 8
  %322 = load i32, i32* @NETIF_MSG_HW, align 4
  %323 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %324 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 (i32, i8*, i32, ...) @DP(i32 %322, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %278, %20
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_alr(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_chk_parity_attn(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bnx2x_int_disable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_alr(%struct.bnx2x*) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_attn_int_deasserted4(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_attn_int_deasserted3(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_attn_int_deasserted1(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_attn_int_deasserted2(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_attn_int_deasserted0(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
