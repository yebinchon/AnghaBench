; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_update_svid_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_update_svid_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bnx2x = type { i32, i32 }
%struct.bnx2x_func_switch_update_params = type { i32, i32 }
%struct.bnx2x_func_state_params = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bnx2x_func_switch_update_params }

@BNX2X_F_CMD_SWITCH_UPDATE = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_4__* null, align 8
@FUNC_MF_CFG_E1HOV_TAG_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_E1HOV_TAG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Got an SVID event, but no tag is configured in shmem\0A\00", align 1
@NIG_REG_LLH0_FUNC_VLAN_ID = common dso_local global i64 0, align 8
@BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to configure FW of S-tag Change to %02x\0A\00", align 1
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Configured S-tag %02x\0A\00", align 1
@DRV_MSG_CODE_OEM_UPDATE_SVID_OK = common dso_local global i32 0, align 4
@DRV_MSG_CODE_OEM_UPDATE_SVID_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_handle_update_svid_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_handle_update_svid_cmd(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_switch_update_params*, align 8
  %4 = alloca %struct.bnx2x_func_state_params, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = call i32 @memset(%struct.bnx2x_func_state_params* %4, i32 0, i32 24)
  %8 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.bnx2x_func_switch_update_params* %9, %struct.bnx2x_func_switch_update_params** %3, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 2
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* @BNX2X_F_CMD_SWITCH_UPDATE, align 4
  %14 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %16 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 0
  %17 = call i32 @__set_bit(i32 %15, i32* %16)
  %18 = load i32, i32* @RAMROD_RETRY, align 4
  %19 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 0
  %20 = call i32 @__set_bit(i32 %18, i32* %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i64 @IS_MF_UFP(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i64 @IS_MF_BD(%struct.bnx2x* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %24, %1
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MF_CFG_RD(%struct.bnx2x* %31, i32 %37)
  %39 = load i32, i32* @FUNC_MF_CFG_E1HOV_TAG_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FUNC_MF_CFG_E1HOV_TAG_DEFAULT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %50

48:                                               ; preds = %28
  %49 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %91

50:                                               ; preds = %44
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = load i64, i64* @NIG_REG_LLH0_FUNC_VLAN_ID, align 8
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = call i32 @BP_PORT(%struct.bnx2x* %53)
  %55 = mul nsw i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_WR(%struct.bnx2x* %51, i64 %57, i32 %60)
  %62 = load i32, i32* @BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG, align 4
  %63 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %63, i32 0, i32 1
  %65 = call i32 @__set_bit(i32 %62, i32* %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %72 = call i64 @bnx2x_func_state_change(%struct.bnx2x* %71, %struct.bnx2x_func_state_params* %4)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %50
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %91

79:                                               ; preds = %50
  %80 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DP(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79
  br label %87

86:                                               ; preds = %24
  br label %91

87:                                               ; preds = %85
  %88 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %89 = load i32, i32* @DRV_MSG_CODE_OEM_UPDATE_SVID_OK, align 4
  %90 = call i32 @bnx2x_fw_command(%struct.bnx2x* %88, i32 %89, i32 0)
  br label %95

91:                                               ; preds = %86, %74, %48
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = load i32, i32* @DRV_MSG_CODE_OEM_UPDATE_SVID_FAILURE, align 4
  %94 = call i32 @bnx2x_fw_command(%struct.bnx2x* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %91, %87
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_func_state_params*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @IS_MF_UFP(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_BD(%struct.bnx2x*) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
