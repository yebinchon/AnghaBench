; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output* }
%struct.TYPE_2__ = type { i32* }
%struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output = type { i32 }
%struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input = type { i32 }

@HWRM_VNIC_RSS_COS_LB_CTX_ALLOC = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i64)* @bnxt_hwrm_vnic_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input, align 4
  %9 = alloca %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = bitcast %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 2
  %13 = load %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output** %12, align 8
  store %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output* %13, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output** %9, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = load i32, i32* @HWRM_VNIC_RSS_COS_LB_CTX_ALLOC, align 4
  %16 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %14, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %8, i32 %15, i32 -1, i32 -1)
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %21 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %22 = call i32 @_hwrm_send_message(%struct.bnxt* %20, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %8, i32 4, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %3
  %26 = load %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output** %9, align 8
  %27 = getelementptr inbounds %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %29, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %3
  %40 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
