; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_stat_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_stat_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i64 }
%struct.hwrm_stat_ctx_free_input = type { i32, i32 }

@HWRM_STAT_CTX_FREE = common dso_local global i32 0, align 4
@INVALID_STATS_CTX_ID = common dso_local global i64 0, align 8
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_stat_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_stat_ctx_free(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_stat_ctx_free_input, align 4
  %7 = alloca %struct.bnxt_napi*, align 8
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = bitcast %struct.hwrm_stat_ctx_free_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 2
  %12 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %11, align 8
  %13 = icmp ne %struct.bnxt_napi** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %69

20:                                               ; preds = %15
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = load i32, i32* @HWRM_STAT_CTX_FREE, align 4
  %23 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %21, %struct.hwrm_stat_ctx_free_input* %6, i32 %22, i32 -1, i32 -1)
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %61, %20
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 2
  %36 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %36, i64 %38
  %40 = load %struct.bnxt_napi*, %struct.bnxt_napi** %39, align 8
  store %struct.bnxt_napi* %40, %struct.bnxt_napi** %7, align 8
  %41 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %42 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %41, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %42, %struct.bnxt_cp_ring_info** %8, align 8
  %43 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %44 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INVALID_STATS_CTX_ID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %33
  %49 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %50 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @cpu_to_le32(i64 %51)
  %53 = getelementptr inbounds %struct.hwrm_stat_ctx_free_input, %struct.hwrm_stat_ctx_free_input* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %55 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %56 = call i32 @_hwrm_send_message(%struct.bnxt* %54, %struct.hwrm_stat_ctx_free_input* %6, i32 8, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i64, i64* @INVALID_STATS_CTX_ID, align 8
  %58 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %59 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %48, %33
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %19, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_stat_ctx_free_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cpu_to_le32(i64) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_stat_ctx_free_input*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
