; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_dump_mcp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_dump_mcp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"<--- start MCP states dump --->\0A\00", align 1
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_MCP_STATE_P0 = common dso_local global i32 0, align 4
@BNX2_MCP_STATE_P1 = common dso_local global i32 0, align 4
@BNX2_MCP_STATE_P0_5708 = common dso_local global i32 0, align 4
@BNX2_MCP_STATE_P1_5708 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"DEBUG: MCP_STATE_P0[%08x] MCP_STATE_P1[%08x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"DEBUG: MCP mode[%08x] state[%08x] evt_mask[%08x]\0A\00", align 1
@BNX2_MCP_CPU_MODE = common dso_local global i32 0, align 4
@BNX2_MCP_CPU_STATE = common dso_local global i32 0, align 4
@BNX2_MCP_CPU_EVENT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"DEBUG: pc[%08x] pc[%08x] instr[%08x]\0A\00", align 1
@BNX2_MCP_CPU_PROGRAM_COUNTER = common dso_local global i32 0, align 4
@BNX2_MCP_CPU_INSTRUCTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"DEBUG: shmem states:\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"DEBUG: drv_mb[%08x] fw_mb[%08x] link_status[%08x]\00", align 1
@BNX2_DRV_MB = common dso_local global i32 0, align 4
@BNX2_FW_MB = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c" drv_pulse_mb[%08x]\0A\00", align 1
@BNX2_DRV_PULSE_MB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"DEBUG: dev_info_signature[%08x] reset_type[%08x]\00", align 1
@BNX2_DEV_INFO_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_BC_STATE_RESET_TYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c" condition[%08x]\0A\00", align 1
@BNX2_BC_STATE_CONDITION = common dso_local global i32 0, align 4
@BNX2_BC_RESET_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"DEBUG: 0x3fc[%08x]\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"<--- end MCP states dump --->\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_dump_mcp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_dump_mcp_state(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %12 = call i64 @BNX2_CHIP(%struct.bnx2* %11)
  %13 = load i64, i64* @BNX2_CHIP_5709, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @BNX2_MCP_STATE_P0, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @BNX2_MCP_STATE_P1, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @BNX2_MCP_STATE_P0_5708, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @BNX2_MCP_STATE_P1_5708, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %23, i32 %24)
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %26, i32 %27)
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %32 = load i32, i32* @BNX2_MCP_CPU_MODE, align 4
  %33 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %31, i32 %32)
  %34 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %35 = load i32, i32* @BNX2_MCP_CPU_STATE, align 4
  %36 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %34, i32 %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %38 = load i32, i32* @BNX2_MCP_CPU_EVENT_MASK, align 4
  %39 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %37, i32 %38)
  %40 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %43 = load i32, i32* @BNX2_MCP_CPU_PROGRAM_COUNTER, align 4
  %44 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %42, i32 %43)
  %45 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %46 = load i32, i32* @BNX2_MCP_CPU_PROGRAM_COUNTER, align 4
  %47 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %45, i32 %46)
  %48 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %49 = load i32, i32* @BNX2_MCP_CPU_INSTRUCTION, align 4
  %50 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %48, i32 %49)
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %47, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %56 = load i32, i32* @BNX2_DRV_MB, align 4
  %57 = call i32 @bnx2_shmem_rd(%struct.bnx2* %55, i32 %56)
  %58 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %59 = load i32, i32* @BNX2_FW_MB, align 4
  %60 = call i32 @bnx2_shmem_rd(%struct.bnx2* %58, i32 %59)
  %61 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %62 = load i32, i32* @BNX2_LINK_STATUS, align 4
  %63 = call i32 @bnx2_shmem_rd(%struct.bnx2* %61, i32 %62)
  %64 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  %65 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %66 = load i32, i32* @BNX2_DRV_PULSE_MB, align 4
  %67 = call i32 @bnx2_shmem_rd(%struct.bnx2* %65, i32 %66)
  %68 = call i32 @pr_cont(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %71 = load i32, i32* @BNX2_DEV_INFO_SIGNATURE, align 4
  %72 = call i32 @bnx2_shmem_rd(%struct.bnx2* %70, i32 %71)
  %73 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %74 = load i32, i32* @BNX2_BC_STATE_RESET_TYPE, align 4
  %75 = call i32 @bnx2_shmem_rd(%struct.bnx2* %73, i32 %74)
  %76 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = load i32, i32* @BNX2_BC_STATE_CONDITION, align 4
  %79 = call i32 @bnx2_shmem_rd(%struct.bnx2* %77, i32 %78)
  %80 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %79)
  %81 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %82 = load i32, i32* @BNX2_BC_RESET_TYPE, align 4
  %83 = call i32 @DP_SHMEM_LINE(%struct.bnx2* %81, i32 %82)
  %84 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %85 = call i32 @DP_SHMEM_LINE(%struct.bnx2* %84, i32 972)
  %86 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %87 = call i32 @DP_SHMEM_LINE(%struct.bnx2* %86, i32 988)
  %88 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %89 = call i32 @DP_SHMEM_LINE(%struct.bnx2* %88, i32 1004)
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %92 = call i32 @bnx2_shmem_rd(%struct.bnx2* %91, i32 1020)
  %93 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_reg_rd_ind(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @DP_SHMEM_LINE(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
