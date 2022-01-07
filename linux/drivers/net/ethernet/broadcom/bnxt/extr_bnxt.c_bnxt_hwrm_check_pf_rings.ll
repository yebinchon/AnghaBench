; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_check_pf_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_check_pf_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_cfg_input = type { i32, i32 }

@FUNC_CFG_REQ_FLAGS_TX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_RX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_CMPL_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_VNIC_ASSETS_TEST = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_NQ_ASSETS_TEST = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32, i32, i32, i32, i32)* @bnxt_hwrm_check_pf_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_check_pf_rings(%struct.bnxt* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hwrm_func_cfg_input, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = bitcast %struct.hwrm_func_cfg_input* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @__bnxt_hwrm_reserve_pf_rings(%struct.bnxt* %19, %struct.hwrm_func_cfg_input* %15, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @FUNC_CFG_REQ_FLAGS_TX_ASSETS_TEST, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %29 = call i64 @BNXT_NEW_RM(%struct.bnxt* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %7
  %32 = load i32, i32* @FUNC_CFG_REQ_FLAGS_RX_ASSETS_TEST, align 4
  %33 = load i32, i32* @FUNC_CFG_REQ_FLAGS_CMPL_ASSETS_TEST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FUNC_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FUNC_CFG_REQ_FLAGS_VNIC_ASSETS_TEST, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %16, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %16, align 4
  %41 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load i32, i32* @FUNC_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST, align 4
  %49 = load i32, i32* @FUNC_CFG_REQ_FLAGS_NQ_ASSETS_TEST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %16, align 4
  br label %57

53:                                               ; preds = %31
  %54 = load i32, i32* @FUNC_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST, align 4
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %53, %47
  br label %58

58:                                               ; preds = %57, %7
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %63 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %64 = call i32 @hwrm_send_message_silent(%struct.bnxt* %62, %struct.hwrm_func_cfg_input* %15, i32 8, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__bnxt_hwrm_reserve_pf_rings(%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
