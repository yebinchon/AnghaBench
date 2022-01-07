; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_asserted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_asserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT1 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"IGU ERROR\0A\00", align 1
@HW_LOCK_RESOURCE_PORT0_ATT_MASK = common dso_local global i64 0, align 8
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"aeu_mask %x  newly asserted %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"new mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"attn_state %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"new state %x\0A\00", align 1
@ATTN_HARD_WIRED_MASK = common dso_local global i32 0, align 4
@ATTN_NIG_FOR_FUNC = common dso_local global i32 0, align 4
@ATTN_SW_TIMER_4_FUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"ATTN_SW_TIMER_4_FUNC!\0A\00", align 1
@GPIO_2_FUNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"GPIO_2_FUNC!\0A\00", align 1
@GPIO_3_FUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"GPIO_3_FUNC!\0A\00", align 1
@GPIO_4_FUNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"GPIO_4_FUNC!\0A\00", align 1
@ATTN_GENERAL_ATTN_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_1!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_1 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_2!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_2 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_3!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_3 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_4!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_4 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_5 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_5!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_5 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_6 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_6!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_6 = common dso_local global i32 0, align 4
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_COMMAND_REG = common dso_local global i32 0, align 4
@COMMAND_REG_ATTN_BITS_SET = common dso_local global i32 0, align 4
@BAR_IGU_INTMEM = common dso_local global i32 0, align 4
@IGU_CMD_ATTN_BIT_SET_UPPER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"about to mask 0x%08x at %s addr 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@IGU_REG_ATTENTION_ACK_BITS = common dso_local global i32 0, align 4
@MAX_IGU_ATTN_ACK_TO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"Failed to verify IGU ack on time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_asserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_asserted(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT1, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %40, i64 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @REG_RD(%struct.bnx2x* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @NETIF_MSG_HW, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @DP(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 1023
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @NETIF_MSG_HW, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @DP(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @REG_WR(%struct.bnx2x* %61, i32 %62, i32 %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %65, i64 %69)
  %71 = load i32, i32* @NETIF_MSG_HW, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @DP(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @NETIF_MSG_HW, align 4
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @DP(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ATTN_HARD_WIRED_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %214

90:                                               ; preds = %39
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @REG_RD(%struct.bnx2x* %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @REG_WR(%struct.bnx2x* %104, i32 %105, i32 0)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %108 = call i32 @bnx2x_link_attn(%struct.bnx2x* %107)
  br label %109

109:                                              ; preds = %103, %95
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @ATTN_SW_TIMER_4_FUNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @NETIF_MSG_HW, align 4
  %117 = call i32 (i32, i8*, ...) @DP(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @GPIO_2_FUNC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @NETIF_MSG_HW, align 4
  %125 = call i32 (i32, i8*, ...) @DP(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @GPIO_3_FUNC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @NETIF_MSG_HW, align 4
  %133 = call i32 (i32, i8*, ...) @DP(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @GPIO_4_FUNC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @NETIF_MSG_HW, align 4
  %141 = call i32 (i32, i8*, ...) @DP(i32 %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @ATTN_GENERAL_ATTN_1, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* @NETIF_MSG_HW, align 4
  %152 = call i32 (i32, i8*, ...) @DP(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %154 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_1, align 4
  %155 = call i32 @REG_WR(%struct.bnx2x* %153, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @ATTN_GENERAL_ATTN_2, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @NETIF_MSG_HW, align 4
  %163 = call i32 (i32, i8*, ...) @DP(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %164 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %165 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_2, align 4
  %166 = call i32 @REG_WR(%struct.bnx2x* %164, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %161, %156
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @ATTN_GENERAL_ATTN_3, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* @NETIF_MSG_HW, align 4
  %174 = call i32 (i32, i8*, ...) @DP(i32 %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %175 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %176 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_3, align 4
  %177 = call i32 @REG_WR(%struct.bnx2x* %175, i32 %176, i32 0)
  br label %178

178:                                              ; preds = %172, %167
  br label %213

179:                                              ; preds = %142
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @ATTN_GENERAL_ATTN_4, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* @NETIF_MSG_HW, align 4
  %186 = call i32 (i32, i8*, ...) @DP(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %187 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %188 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_4, align 4
  %189 = call i32 @REG_WR(%struct.bnx2x* %187, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @ATTN_GENERAL_ATTN_5, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* @NETIF_MSG_HW, align 4
  %197 = call i32 (i32, i8*, ...) @DP(i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_5, align 4
  %200 = call i32 @REG_WR(%struct.bnx2x* %198, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @ATTN_GENERAL_ATTN_6, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* @NETIF_MSG_HW, align 4
  %208 = call i32 (i32, i8*, ...) @DP(i32 %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %209 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %210 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_6, align 4
  %211 = call i32 @REG_WR(%struct.bnx2x* %209, i32 %210, i32 0)
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %178
  br label %214

214:                                              ; preds = %213, %39
  %215 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %216 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @INT_BLOCK_HC, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i32, i32* @HC_REG_COMMAND_REG, align 4
  %223 = load i32, i32* %5, align 4
  %224 = mul nsw i32 %223, 32
  %225 = add nsw i32 %222, %224
  %226 = load i32, i32* @COMMAND_REG_ATTN_BITS_SET, align 4
  %227 = add nsw i32 %225, %226
  store i32 %227, i32* %10, align 4
  br label %233

228:                                              ; preds = %214
  %229 = load i32, i32* @BAR_IGU_INTMEM, align 4
  %230 = load i32, i32* @IGU_CMD_ATTN_BIT_SET_UPPER, align 4
  %231 = mul nsw i32 %230, 8
  %232 = add nsw i32 %229, %231
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %228, %221
  %234 = load i32, i32* @NETIF_MSG_HW, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %237 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @INT_BLOCK_HC, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %244 = load i32, i32* %10, align 4
  %245 = call i32 (i32, i8*, ...) @DP(i32 %234, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %235, i8* %243, i32 %244)
  %246 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @REG_WR(%struct.bnx2x* %246, i32 %247, i32 %248)
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %293

254:                                              ; preds = %233
  %255 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %256 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @INT_BLOCK_HC, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %286

261:                                              ; preds = %254
  store i32 0, i32* %11, align 4
  br label %262

262:                                              ; preds = %276, %261
  %263 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %264 = load i32, i32* @IGU_REG_ATTENTION_ACK_BITS, align 4
  %265 = call i32 @REG_RD(%struct.bnx2x* %263, i32 %264)
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* @MAX_IGU_ATTN_ACK_TO, align 4
  %275 = icmp slt i32 %273, %274
  br label %276

276:                                              ; preds = %271, %266
  %277 = phi i1 [ false, %266 ], [ %275, %271 ]
  br i1 %277, label %262, label %278

278:                                              ; preds = %276
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* @NETIF_MSG_HW, align 4
  %283 = call i32 (i32, i8*, ...) @DP(i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %278
  %285 = call i32 (...) @barrier()
  br label %286

286:                                              ; preds = %284, %254
  %287 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @REG_WR(%struct.bnx2x* %287, i32 %288, i32 %289)
  %291 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %292 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %291)
  br label %293

293:                                              ; preds = %286, %233
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_attn(%struct.bnx2x*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
