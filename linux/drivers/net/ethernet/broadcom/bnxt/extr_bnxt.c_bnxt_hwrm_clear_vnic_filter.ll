; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_clear_vnic_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_clear_vnic_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i64, i32* }
%struct.hwrm_cfa_l2_filter_free_input = type { i32, i32 }

@HWRM_CFA_L2_FILTER_FREE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_clear_vnic_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_clear_vnic_filter(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_vnic_info*, align 8
  %8 = alloca %struct.hwrm_cfa_l2_filter_free_input, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i64 1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  %19 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %19, i64 %20
  store %struct.bnxt_vnic_info* %21, %struct.bnxt_vnic_info** %7, align 8
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %43, %16
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %25 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = bitcast %struct.hwrm_cfa_l2_filter_free_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %31 = load i32, i32* @HWRM_CFA_L2_FILTER_FREE, align 4
  %32 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %30, %struct.hwrm_cfa_l2_filter_free_input* %8, i32 %31, i32 -1, i32 -1)
  %33 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %34 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_free_input, %struct.hwrm_cfa_l2_filter_free_input* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %41 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %42 = call i32 @_hwrm_send_message(%struct.bnxt* %40, %struct.hwrm_cfa_l2_filter_free_input* %8, i32 8, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %48 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %12

52:                                               ; preds = %12
  %53 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_cfa_l2_filter_free_input*, i32, i32, i32) #1

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_cfa_l2_filter_free_input*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
