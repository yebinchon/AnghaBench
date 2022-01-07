; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reset_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32, i32 }
%struct.hwrm_fw_reset_input = type { i32, i32, i32, i32, i32 }

@ERROR_RECOVERY_QCFG_RESP_FLAGS_HOST = common dso_local global i32 0, align 4
@ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU = common dso_local global i32 0, align 4
@HWRM_FW_RESET = common dso_local global i32 0, align 4
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP = common dso_local global i32 0, align 4
@FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP = common dso_local global i32 0, align 4
@FW_RESET_REQ_FLAGS_RESET_GRACEFUL = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to reset FW rc=%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_reset_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_reset_all(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_fw_health*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_fw_reset_input, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 3
  %9 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %8, align 8
  store %struct.bnxt_fw_health* %9, %struct.bnxt_fw_health** %3, align 8
  %10 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ERROR_RECOVERY_QCFG_RESP_FLAGS_HOST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bnxt_fw_reset_writel(%struct.bnxt* %24, i32 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %17

30:                                               ; preds = %17
  br label %67

31:                                               ; preds = %1
  %32 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %31
  %39 = bitcast %struct.hwrm_fw_reset_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 20, i1 false)
  %40 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %41 = load i32, i32* @HWRM_FW_RESET, align 4
  %42 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %40, %struct.hwrm_fw_reset_input* %5, i32 %41, i32 -1, i32 -1)
  %43 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cpu_to_le64(i32 %45)
  %47 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %5, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP, align 4
  %49 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %5, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP, align 4
  %51 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %5, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @FW_RESET_REQ_FLAGS_RESET_GRACEFUL, align 4
  %53 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %5, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %55 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %56 = call i32 @hwrm_send_message(%struct.bnxt* %54, %struct.hwrm_fw_reset_input* %5, i32 20, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %38
  %60 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %61 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @netdev_warn(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %38
  br label %66

66:                                               ; preds = %65, %31
  br label %67

67:                                               ; preds = %66, %30
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local i32 @bnxt_fw_reset_writel(%struct.bnxt*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_fw_reset_input*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_fw_reset_input*, i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
