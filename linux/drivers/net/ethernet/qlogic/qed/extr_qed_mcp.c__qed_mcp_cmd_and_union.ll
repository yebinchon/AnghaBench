; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c__qed_mcp_cmd_and_union.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c__qed_mcp_cmd_and_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i32, i32, i32, i32 }
%struct.qed_mcp_cmd_elem = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@CAN_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"The MFW mailbox is occupied by an uncompleted command. Failed to send command 0x%08x [param 0x%08x].\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"The MFW failed to respond to command 0x%08x [param 0x%08x].\0A\00", align 1
@AVOID_BLOCK = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"MFW mailbox: response 0x%08x param 0x%08x [after %d.%03d ms]\0A\00", align 1
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*, i64, i64)* @_qed_mcp_cmd_and_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qed_mcp_cmd_and_union(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_mcp_mb_params* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca %struct.qed_mcp_mb_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.qed_mcp_cmd_elem*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store %struct.qed_mcp_mb_params* %2, %struct.qed_mcp_mb_params** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i64 @DIV_ROUND_UP(i64 %17, i32 1000)
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %60, %5
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %26 = call i32 @qed_mcp_has_pending_cmd(%struct.qed_hwfn* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %65

29:                                               ; preds = %19
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %32 = call i32 @qed_mcp_update_pending_cmd(%struct.qed_hwfn* %30, %struct.qed_ptt* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %65

36:                                               ; preds = %29
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %227

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %50 = load i32, i32* @CAN_SLEEP, align 4
  %51 = call i64 @QED_MB_FLAGS_IS_SET(%struct.qed_mcp_mb_params* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @msleep(i64 %54)
  br label %59

56:                                               ; preds = %43
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @udelay(i64 %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %19, label %65

65:                                               ; preds = %60, %35, %28
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %72 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %75 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DP_NOTICE(%struct.qed_hwfn* %70, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %234

80:                                               ; preds = %65
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %82 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %83 = call i32 @qed_mcp_reread_offsets(%struct.qed_hwfn* %81, %struct.qed_ptt* %82)
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %85 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  store i64 %89, i64* %15, align 8
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %91 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call %struct.qed_mcp_cmd_elem* @qed_mcp_cmd_add_elem(%struct.qed_hwfn* %90, %struct.qed_mcp_mb_params* %91, i64 %92)
  store %struct.qed_mcp_cmd_elem* %93, %struct.qed_mcp_cmd_elem** %14, align 8
  %94 = load %struct.qed_mcp_cmd_elem*, %struct.qed_mcp_cmd_elem** %14, align 8
  %95 = icmp ne %struct.qed_mcp_cmd_elem* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %227

99:                                               ; preds = %80
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %101 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %102 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @__qed_mcp_cmd_and_union(%struct.qed_hwfn* %100, %struct.qed_ptt* %101, %struct.qed_mcp_mb_params* %102, i64 %103)
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %106 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_bh(i32* %108)
  br label %110

110:                                              ; preds = %152, %99
  %111 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %112 = load i32, i32* @CAN_SLEEP, align 4
  %113 = call i64 @QED_MB_FLAGS_IS_SET(%struct.qed_mcp_mb_params* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @msleep(i64 %116)
  br label %121

118:                                              ; preds = %110
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @udelay(i64 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %123 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @spin_lock_bh(i32* %125)
  %127 = load %struct.qed_mcp_cmd_elem*, %struct.qed_mcp_cmd_elem** %14, align 8
  %128 = getelementptr inbounds %struct.qed_mcp_cmd_elem, %struct.qed_mcp_cmd_elem* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %157

132:                                              ; preds = %121
  %133 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %134 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %135 = call i32 @qed_mcp_update_pending_cmd(%struct.qed_hwfn* %133, %struct.qed_ptt* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  br label %157

139:                                              ; preds = %132
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @EAGAIN, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %227

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %148 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock_bh(i32* %150)
  br label %152

152:                                              ; preds = %146
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %12, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %110, label %157

157:                                              ; preds = %152, %138, %131
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* %10, align 8
  %160 = icmp sge i64 %158, %159
  br i1 %160, label %161, label %196

161:                                              ; preds = %157
  %162 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %163 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %164 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %167 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @DP_NOTICE(%struct.qed_hwfn* %162, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %171 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %172 = call i32 @qed_mcp_print_cpu_info(%struct.qed_hwfn* %170, %struct.qed_ptt* %171)
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %174 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = call i32 @spin_lock_bh(i32* %176)
  %178 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %179 = load %struct.qed_mcp_cmd_elem*, %struct.qed_mcp_cmd_elem** %14, align 8
  %180 = call i32 @qed_mcp_cmd_del_elem(%struct.qed_hwfn* %178, %struct.qed_mcp_cmd_elem* %179)
  %181 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %182 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock_bh(i32* %184)
  %186 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %187 = load i32, i32* @AVOID_BLOCK, align 4
  %188 = call i64 @QED_MB_FLAGS_IS_SET(%struct.qed_mcp_mb_params* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %161
  %191 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %192 = call i32 @qed_mcp_cmd_set_blocking(%struct.qed_hwfn* %191, i32 1)
  br label %193

193:                                              ; preds = %190, %161
  %194 = load i32, i32* @EAGAIN, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %6, align 4
  br label %234

196:                                              ; preds = %157
  %197 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %198 = load %struct.qed_mcp_cmd_elem*, %struct.qed_mcp_cmd_elem** %14, align 8
  %199 = call i32 @qed_mcp_cmd_del_elem(%struct.qed_hwfn* %197, %struct.qed_mcp_cmd_elem* %198)
  %200 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %201 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = call i32 @spin_unlock_bh(i32* %203)
  %205 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %206 = load i32, i32* @QED_MSG_SP, align 4
  %207 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %208 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %211 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %11, align 8
  %215 = mul nsw i64 %213, %214
  %216 = sdiv i64 %215, 1000
  %217 = load i64, i64* %12, align 8
  %218 = load i64, i64* %11, align 8
  %219 = mul nsw i64 %217, %218
  %220 = srem i64 %219, 1000
  %221 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %205, i32 %206, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %209, i32 %212, i64 %216, i64 %220)
  %222 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %223 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %9, align 8
  %224 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 4
  store i32 0, i32* %6, align 4
  br label %234

227:                                              ; preds = %144, %96, %41
  %228 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %229 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = call i32 @spin_unlock_bh(i32* %231)
  %233 = load i32, i32* %16, align 4
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %227, %196, %193, %69
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_mcp_has_pending_cmd(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_update_pending_cmd(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @QED_MB_FLAGS_IS_SET(%struct.qed_mcp_mb_params*, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

declare dso_local i32 @qed_mcp_reread_offsets(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local %struct.qed_mcp_cmd_elem* @qed_mcp_cmd_add_elem(%struct.qed_hwfn*, %struct.qed_mcp_mb_params*, i64) #1

declare dso_local i32 @__qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*, i64) #1

declare dso_local i32 @qed_mcp_print_cpu_info(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_mcp_cmd_del_elem(%struct.qed_hwfn*, %struct.qed_mcp_cmd_elem*) #1

declare dso_local i32 @qed_mcp_cmd_set_blocking(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
