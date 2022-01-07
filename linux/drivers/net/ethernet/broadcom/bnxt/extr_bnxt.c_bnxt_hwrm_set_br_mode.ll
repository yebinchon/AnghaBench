; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_br_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_br_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_cfg_input = type { i32, i32, i32, i32 }

@HWRM_FUNC_CFG = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_EVB_MODE = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i64 0, align 8
@FUNC_CFG_REQ_EVB_MODE_VEB = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEPA = common dso_local global i64 0, align 8
@FUNC_CFG_REQ_EVB_MODE_VEPA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64)* @bnxt_hwrm_set_br_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_set_br_mode(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hwrm_func_cfg_input, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast %struct.hwrm_func_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = load i32, i32* @HWRM_FUNC_CFG, align 4
  %11 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %9, %struct.hwrm_func_cfg_input* %6, i32 %10, i32 -1, i32 -1)
  %12 = call i32 @cpu_to_le16(i32 65535)
  %13 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @FUNC_CFG_REQ_ENABLES_EVB_MODE, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @BRIDGE_MODE_VEB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @FUNC_CFG_REQ_EVB_MODE_VEB, align 4
  %22 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @BRIDGE_MODE_VEPA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @FUNC_CFG_REQ_EVB_MODE_VEPA, align 4
  %29 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %37 = call i32 @hwrm_send_message(%struct.bnxt* %35, %struct.hwrm_func_cfg_input* %6, i32 16, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
