; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_firmware_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_firmware_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hwrm_fw_reset_input = type { i32, i8*, i32 }
%struct.bnxt = type { i32 }

@HWRM_FW_RESET = common dso_local global i32 0, align 4
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_BOOT = common dso_local global i32 0, align 4
@FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST = common dso_local global i8* null, align 8
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_MGMT = common dso_local global i32 0, align 4
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_NETCTRL = common dso_local global i32 0, align 4
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_ROCE = common dso_local global i32 0, align 4
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP = common dso_local global i32 0, align 4
@FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP = common dso_local global i8* null, align 8
@FW_RESET_REQ_EMBEDDED_PROC_TYPE_AP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnxt_firmware_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_firmware_reset(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_fw_reset_input, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.hwrm_fw_reset_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.bnxt* @netdev_priv(%struct.net_device* %10)
  store %struct.bnxt* %11, %struct.bnxt** %7, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %13 = load i32, i32* @HWRM_FW_RESET, align 4
  %14 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %12, %struct.hwrm_fw_reset_input* %6, i32 %13, i32 -1, i32 -1)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %40 [
    i32 130, label %16
    i32 132, label %16
    i32 131, label %16
    i32 136, label %21
    i32 135, label %21
    i32 129, label %26
    i32 128, label %26
    i32 134, label %29
    i32 133, label %29
    i32 137, label %32
    i32 138, label %37
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_BOOT, align 4
  %18 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** @FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST, align 8
  %20 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  br label %43

21:                                               ; preds = %2, %2
  %22 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_MGMT, align 4
  %23 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** @FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST, align 8
  %25 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  br label %43

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_NETCTRL, align 4
  %28 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  br label %43

29:                                               ; preds = %2, %2
  %30 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_ROCE, align 4
  %31 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP, align 4
  %34 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** @FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP, align 8
  %36 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @FW_RESET_REQ_EMBEDDED_PROC_TYPE_AP, align 4
  %39 = getelementptr inbounds %struct.hwrm_fw_reset_input, %struct.hwrm_fw_reset_input* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %37, %32, %29, %26, %21, %16
  %44 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %45 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %46 = call i32 @hwrm_send_message(%struct.bnxt* %44, %struct.hwrm_fw_reset_input* %6, i32 24, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %53 = call i32 @bnxt_print_admin_err(%struct.bnxt* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %40
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_fw_reset_input*, i32, i32, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_fw_reset_input*, i32, i32) #2

declare dso_local i32 @bnxt_print_admin_err(%struct.bnxt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
