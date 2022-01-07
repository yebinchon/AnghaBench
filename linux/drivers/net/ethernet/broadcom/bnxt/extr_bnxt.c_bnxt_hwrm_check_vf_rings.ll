; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_check_vf_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_check_vf_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_vf_cfg_input = type { i32, i32 }

@FUNC_VF_CFG_REQ_FLAGS_TX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_RX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_CMPL_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_VNIC_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32, i32, i32, i32, i32)* @bnxt_hwrm_check_vf_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_check_vf_rings(%struct.bnxt* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hwrm_func_vf_cfg_input, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = bitcast %struct.hwrm_func_vf_cfg_input* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %21 = call i32 @BNXT_NEW_RM(%struct.bnxt* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %62

24:                                               ; preds = %7
  %25 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @__bnxt_hwrm_reserve_vf_rings(%struct.bnxt* %25, %struct.hwrm_func_vf_cfg_input* %16, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_TX_ASSETS_TEST, align 4
  %34 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_RX_ASSETS_TEST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_CMPL_ASSETS_TEST, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_VNIC_ASSETS_TEST, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %17, align 4
  %44 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %24
  %51 = load i32, i32* @FUNC_VF_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST, align 4
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %50, %24
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %16, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %59 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %60 = call i32 @hwrm_send_message_silent(%struct.bnxt* %58, %struct.hwrm_func_vf_cfg_input* %16, i32 8, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %23
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BNXT_NEW_RM(%struct.bnxt*) #2

declare dso_local i32 @__bnxt_hwrm_reserve_vf_rings(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
