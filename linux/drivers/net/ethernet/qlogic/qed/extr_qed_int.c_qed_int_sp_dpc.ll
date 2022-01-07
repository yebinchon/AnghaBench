; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sp_dpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sp_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__*, i32, i32, i32, %struct.qed_sb_attn_info* }
%struct.TYPE_2__ = type { %struct.qed_pi_info*, %struct.qed_sb_info }
%struct.qed_pi_info = type { i32, i32 (%struct.qed_hwfn.0*, i32)* }
%struct.qed_hwfn.0 = type opaque
%struct.qed_sb_info = type { i32, i32, i32 }
%struct.qed_sb_attn_info = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"DPC called - no p_sp_sb\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Status block is NULL - cannot ack interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DPC called - no p_sb_attn\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"DPC Called! (hwfn %p %d)\0A\00", align 1
@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Interrupt Status block is NULL - cannot check for new interrupts!\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Interrupt indices: 0x%08x --> 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Attentions Status block is NULL - cannot check for new attentions!\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Attention indices: 0x%08x --> 0x%08x\0A\00", align 1
@QED_SB_EVENT_MASK = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to allocate PTT\0A\00", align 1
@QED_SB_ATT_IDX = common dso_local global i32 0, align 4
@QED_SB_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_int_sp_dpc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_pi_info*, align 8
  %5 = alloca %struct.qed_sb_attn_info*, align 8
  %6 = alloca %struct.qed_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %3, align 8
  store %struct.qed_pi_info* null, %struct.qed_pi_info** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DP_ERR(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %213

23:                                               ; preds = %1
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.qed_sb_info* %27, %struct.qed_sb_info** %6, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.qed_pi_info*, %struct.qed_pi_info** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.qed_pi_info* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %35 = icmp ne %struct.qed_sb_info* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DP_ERR(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %213

41:                                               ; preds = %23
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 4
  %44 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %43, align 8
  %45 = icmp ne %struct.qed_sb_attn_info* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DP_ERR(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %213

51:                                               ; preds = %41
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %53 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %52, i32 0, i32 4
  %54 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %53, align 8
  store %struct.qed_sb_attn_info* %54, %struct.qed_sb_attn_info** %5, align 8
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %56 = load i32, i32* @NETIF_MSG_INTR, align 4
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %59 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %55, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.qed_hwfn* %57, i32 %60)
  %62 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %63 = load i32, i32* @IGU_INT_DISABLE, align 4
  %64 = call i32 @qed_sb_ack(%struct.qed_sb_info* %62, i32 %63, i32 0)
  %65 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %51
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DP_ERR(i32 %72, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %91

74:                                               ; preds = %51
  %75 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %76 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %79 = call i32 @qed_sb_update_sb_idx(%struct.qed_sb_info* %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.qed_hwfn*
  %85 = load i32, i32* @NETIF_MSG_INTR, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %88 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %84, i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %74, %69
  %92 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %93 = icmp ne %struct.qed_sb_attn_info* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %96 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %101 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DP_ERR(i32 %102, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %124

104:                                              ; preds = %94
  %105 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %106 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %109 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %110 = call i32 @qed_attn_update_idx(%struct.qed_hwfn* %108, %struct.qed_sb_attn_info* %109)
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %114 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.qed_hwfn*
  %118 = load i32, i32* @NETIF_MSG_INTR, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %121 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %117, i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %104, %99
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @QED_SB_EVENT_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %131 = load i32, i32* @IGU_INT_ENABLE, align 4
  %132 = call i32 @qed_sb_ack(%struct.qed_sb_info* %130, i32 %131, i32 1)
  br label %213

133:                                              ; preds = %124
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %135 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %140 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @DP_NOTICE(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %143 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %144 = load i32, i32* @IGU_INT_ENABLE, align 4
  %145 = call i32 @qed_sb_ack(%struct.qed_sb_info* %143, i32 %144, i32 1)
  br label %213

146:                                              ; preds = %133
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @QED_SB_ATT_IDX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %153 = call i32 @qed_int_attentions(%struct.qed_hwfn* %152)
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @QED_SB_IDX, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %154
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %188, %159
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %191

164:                                              ; preds = %160
  %165 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %166 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load %struct.qed_pi_info*, %struct.qed_pi_info** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.qed_pi_info, %struct.qed_pi_info* %169, i64 %171
  store %struct.qed_pi_info* %172, %struct.qed_pi_info** %4, align 8
  %173 = load %struct.qed_pi_info*, %struct.qed_pi_info** %4, align 8
  %174 = getelementptr inbounds %struct.qed_pi_info, %struct.qed_pi_info* %173, i32 0, i32 1
  %175 = load i32 (%struct.qed_hwfn.0*, i32)*, i32 (%struct.qed_hwfn.0*, i32)** %174, align 8
  %176 = icmp ne i32 (%struct.qed_hwfn.0*, i32)* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %164
  %178 = load %struct.qed_pi_info*, %struct.qed_pi_info** %4, align 8
  %179 = getelementptr inbounds %struct.qed_pi_info, %struct.qed_pi_info* %178, i32 0, i32 1
  %180 = load i32 (%struct.qed_hwfn.0*, i32)*, i32 (%struct.qed_hwfn.0*, i32)** %179, align 8
  %181 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %182 = bitcast %struct.qed_hwfn* %181 to %struct.qed_hwfn.0*
  %183 = load %struct.qed_pi_info*, %struct.qed_pi_info** %4, align 8
  %184 = getelementptr inbounds %struct.qed_pi_info, %struct.qed_pi_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %180(%struct.qed_hwfn.0* %182, i32 %185)
  br label %187

187:                                              ; preds = %177, %164
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %160

191:                                              ; preds = %160
  br label %192

192:                                              ; preds = %191, %154
  %193 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %194 = icmp ne %struct.qed_sb_attn_info* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @QED_SB_ATT_IDX, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %202 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %203 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  %206 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @qed_sb_ack_attn(%struct.qed_hwfn* %201, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %200, %195, %192
  %210 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %211 = load i32, i32* @IGU_INT_ENABLE, align 4
  %212 = call i32 @qed_sb_ack(%struct.qed_sb_info* %210, i32 %211, i32 1)
  br label %213

213:                                              ; preds = %209, %138, %129, %46, %36, %18
  ret void
}

declare dso_local i32 @DP_ERR(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.qed_pi_info*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_sb_ack(%struct.qed_sb_info*, i32, i32) #1

declare dso_local i32 @qed_sb_update_sb_idx(%struct.qed_sb_info*) #1

declare dso_local i32 @qed_attn_update_idx(%struct.qed_hwfn*, %struct.qed_sb_attn_info*) #1

declare dso_local i32 @DP_NOTICE(i32, i8*) #1

declare dso_local i32 @qed_int_attentions(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sb_ack_attn(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
