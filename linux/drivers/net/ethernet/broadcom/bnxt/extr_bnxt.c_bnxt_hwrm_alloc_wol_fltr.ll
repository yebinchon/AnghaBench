; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_alloc_wol_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_alloc_wol_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.hwrm_wol_filter_alloc_output* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hwrm_wol_filter_alloc_output = type { i32 }
%struct.hwrm_wol_filter_alloc_input = type { i32, i32, i32, i32, i32 }

@HWRM_WOL_FILTER_ALLOC = common dso_local global i32 0, align 4
@WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT = common dso_local global i32 0, align 4
@WOL_FILTER_ALLOC_REQ_ENABLES_MAC_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_wol_filter_alloc_input, align 4
  %4 = alloca %struct.hwrm_wol_filter_alloc_output*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = bitcast %struct.hwrm_wol_filter_alloc_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 20, i1 false)
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 4
  %9 = load %struct.hwrm_wol_filter_alloc_output*, %struct.hwrm_wol_filter_alloc_output** %8, align 8
  store %struct.hwrm_wol_filter_alloc_output* %9, %struct.hwrm_wol_filter_alloc_output** %4, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = load i32, i32* @HWRM_WOL_FILTER_ALLOC, align 4
  %12 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %10, %struct.hwrm_wol_filter_alloc_input* %3, i32 %11, i32 -1, i32 -1)
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT, align 4
  %20 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @WOL_FILTER_ALLOC_REQ_ENABLES_MAC_ADDRESS, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %25, i32 %30, i32 %31)
  %33 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %37 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %38 = call i32 @_hwrm_send_message(%struct.bnxt* %36, %struct.hwrm_wol_filter_alloc_input* %3, i32 20, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load %struct.hwrm_wol_filter_alloc_output*, %struct.hwrm_wol_filter_alloc_output** %4, align 8
  %43 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_output, %struct.hwrm_wol_filter_alloc_output* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %1
  %48 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_wol_filter_alloc_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_wol_filter_alloc_input*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
