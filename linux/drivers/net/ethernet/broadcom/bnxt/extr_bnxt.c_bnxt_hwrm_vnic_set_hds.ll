; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_hds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_hds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i32 }
%struct.hwrm_vnic_plcmodes_cfg_input = type { i8*, i8*, i8*, i8*, i8*, i32 }

@HWRM_VNIC_PLCMODES_CFG = common dso_local global i32 0, align 4
@VNIC_PLCMODES_CFG_REQ_FLAGS_JUMBO_PLACEMENT = common dso_local global i32 0, align 4
@VNIC_PLCMODES_CFG_REQ_FLAGS_HDS_IPV4 = common dso_local global i32 0, align 4
@VNIC_PLCMODES_CFG_REQ_FLAGS_HDS_IPV6 = common dso_local global i32 0, align 4
@VNIC_PLCMODES_CFG_REQ_ENABLES_JUMBO_THRESH_VALID = common dso_local global i32 0, align 4
@VNIC_PLCMODES_CFG_REQ_ENABLES_HDS_THRESHOLD_VALID = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64)* @bnxt_hwrm_vnic_set_hds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_set_hds(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnxt_vnic_info*, align 8
  %6 = alloca %struct.hwrm_vnic_plcmodes_cfg_input, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 1
  %9 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %9, i64 %10
  store %struct.bnxt_vnic_info* %11, %struct.bnxt_vnic_info** %5, align 8
  %12 = bitcast %struct.hwrm_vnic_plcmodes_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = load i32, i32* @HWRM_VNIC_PLCMODES_CFG, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 %14, i32 -1, i32 -1)
  %16 = load i32, i32* @VNIC_PLCMODES_CFG_REQ_FLAGS_JUMBO_PLACEMENT, align 4
  %17 = load i32, i32* @VNIC_PLCMODES_CFG_REQ_FLAGS_HDS_IPV4, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VNIC_PLCMODES_CFG_REQ_FLAGS_HDS_IPV6, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.hwrm_vnic_plcmodes_cfg_input, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @VNIC_PLCMODES_CFG_REQ_ENABLES_JUMBO_THRESH_VALID, align 4
  %24 = load i32, i32* @VNIC_PLCMODES_CFG_REQ_ENABLES_HDS_THRESHOLD_VALID, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.hwrm_vnic_plcmodes_cfg_input, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_vnic_plcmodes_cfg_input, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.hwrm_vnic_plcmodes_cfg_input, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.hwrm_vnic_plcmodes_cfg_input, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %45 = call i32 @hwrm_send_message(%struct.bnxt* %43, %struct.hwrm_vnic_plcmodes_cfg_input* %6, i32 48, i32 %44)
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_plcmodes_cfg_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_plcmodes_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
