; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_async_event_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_async_event_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_cfg_input = type { i8*, i8*, i32, i8* }
%struct.hwrm_func_vf_cfg_input = type { i8*, i8*, i32, i8* }

@HWRM_FUNC_CFG = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_ASYNC_EVENT_CR = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@HWRM_FUNC_VF_CFG = common dso_local global i32 0, align 4
@FUNC_VF_CFG_REQ_ENABLES_ASYNC_EVENT_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_hwrm_set_async_event_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_set_async_event_cr(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_func_cfg_input, align 8
  %7 = alloca %struct.hwrm_func_vf_cfg_input, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = call i64 @BNXT_PF(%struct.bnxt* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = bitcast %struct.hwrm_func_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = bitcast %struct.hwrm_func_cfg_input* %6 to %struct.hwrm_func_vf_cfg_input*
  %15 = load i32, i32* @HWRM_FUNC_CFG, align 4
  %16 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_func_vf_cfg_input* %14, i32 %15, i32 -1, i32 -1)
  %17 = call i8* @cpu_to_le16(i32 65535)
  %18 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @FUNC_CFG_REQ_ENABLES_ASYNC_EVENT_CR, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = bitcast %struct.hwrm_func_cfg_input* %6 to %struct.hwrm_func_vf_cfg_input*
  %27 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %28 = call i32 @hwrm_send_message(%struct.bnxt* %25, %struct.hwrm_func_vf_cfg_input* %26, i32 32, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %2
  %30 = bitcast %struct.hwrm_func_vf_cfg_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 32, i1 false)
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = load i32, i32* @HWRM_FUNC_VF_CFG, align 4
  %33 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %31, %struct.hwrm_func_vf_cfg_input* %7, i32 %32, i32 -1, i32 -1)
  %34 = load i32, i32* @FUNC_VF_CFG_REQ_ENABLES_ASYNC_EVENT_CR, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %7, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %7, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %42 = call i32 @hwrm_send_message(%struct.bnxt* %40, %struct.hwrm_func_vf_cfg_input* %7, i32 32, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %29, %11
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
