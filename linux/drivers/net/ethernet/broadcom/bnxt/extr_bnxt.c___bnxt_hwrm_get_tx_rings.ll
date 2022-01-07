; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_get_tx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_get_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.hwrm_func_qcfg_output* }
%struct.hwrm_func_qcfg_output = type { i32 }
%struct.hwrm_func_qcfg_input = type { i32, i32 }

@HWRM_FUNC_QCFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bnxt_hwrm_get_tx_rings(%struct.bnxt* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hwrm_func_qcfg_output*, align 8
  %9 = alloca %struct.hwrm_func_qcfg_input, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %12, align 8
  store %struct.hwrm_func_qcfg_output* %13, %struct.hwrm_func_qcfg_output** %8, align 8
  %14 = bitcast %struct.hwrm_func_qcfg_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 67073
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %22 = load i32, i32* @HWRM_FUNC_QCFG, align 4
  %23 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %21, %struct.hwrm_func_qcfg_input* %9, i32 %22, i32 -1, i32 -1)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_func_qcfg_input, %struct.hwrm_func_qcfg_input* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %28 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %29 = call i32 @_hwrm_send_message(%struct.bnxt* %27, %struct.hwrm_func_qcfg_input* %9, i32 8, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %8, align 8
  %34 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %20
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
