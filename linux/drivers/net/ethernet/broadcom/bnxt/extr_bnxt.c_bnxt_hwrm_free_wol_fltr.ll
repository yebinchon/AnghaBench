; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_free_wol_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_free_wol_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_wol_filter_free_input = type { i32, i32, i32, i32 }

@HWRM_WOL_FILTER_FREE = common dso_local global i32 0, align 4
@WOL_FILTER_FREE_REQ_ENABLES_WOL_FILTER_ID = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_free_wol_fltr(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_wol_filter_free_input, align 4
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = bitcast %struct.hwrm_wol_filter_free_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = load i32, i32* @HWRM_WOL_FILTER_FREE, align 4
  %8 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %6, %struct.hwrm_wol_filter_free_input* %3, i32 %7, i32 -1, i32 -1)
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.hwrm_wol_filter_free_input, %struct.hwrm_wol_filter_free_input* %3, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @WOL_FILTER_FREE_REQ_ENABLES_WOL_FILTER_ID, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = getelementptr inbounds %struct.hwrm_wol_filter_free_input, %struct.hwrm_wol_filter_free_input* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.hwrm_wol_filter_free_input, %struct.hwrm_wol_filter_free_input* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %24 = call i32 @hwrm_send_message(%struct.bnxt* %22, %struct.hwrm_wol_filter_free_input* %3, i32 16, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_wol_filter_free_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_wol_filter_free_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
