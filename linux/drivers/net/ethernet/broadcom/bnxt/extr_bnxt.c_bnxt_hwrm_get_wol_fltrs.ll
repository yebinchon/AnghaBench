; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_get_wol_fltrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_get_wol_fltrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.TYPE_2__, %struct.hwrm_wol_filter_qcfg_output* }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_wol_filter_qcfg_output = type { i64, i32, i32 }
%struct.hwrm_wol_filter_qcfg_input = type { i8*, i8*, i32 }

@HWRM_WOL_FILTER_QCFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnxt*, i64)* @bnxt_hwrm_get_wol_fltrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnxt_hwrm_get_wol_fltrs(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hwrm_wol_filter_qcfg_input, align 8
  %6 = alloca %struct.hwrm_wol_filter_qcfg_output*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast %struct.hwrm_wol_filter_qcfg_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 4
  %12 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %11, align 8
  store %struct.hwrm_wol_filter_qcfg_output* %12, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = load i32, i32* @HWRM_WOL_FILTER_QCFG, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_wol_filter_qcfg_input* %5, i32 %14, i32 -1, i32 -1)
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @cpu_to_le16(i64 %19)
  %21 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_input, %struct.hwrm_wol_filter_qcfg_input* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_input, %struct.hwrm_wol_filter_qcfg_input* %5, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %30 = call i32 @_hwrm_send_message(%struct.bnxt* %28, %struct.hwrm_wol_filter_qcfg_input* %5, i32 24, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %2
  %34 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %35 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %42 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %50 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %53 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %40
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_wol_filter_qcfg_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_wol_filter_qcfg_input*, i32, i32) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
