; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_stat_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_stat_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.TYPE_2__*, %struct.bnxt_napi**, i32, %struct.hwrm_stat_ctx_alloc_output* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32, i32 }
%struct.hwrm_stat_ctx_alloc_output = type { i32 }
%struct.hwrm_stat_ctx_alloc_input = type { i32, i32, i32, i32 }

@HWRM_STAT_CTX_ALLOC = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_stat_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_stat_ctx_alloc_input, align 4
  %7 = alloca %struct.hwrm_stat_ctx_alloc_output*, align 8
  %8 = alloca %struct.bnxt_napi*, align 8
  %9 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = bitcast %struct.hwrm_stat_ctx_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 6
  %13 = load %struct.hwrm_stat_ctx_alloc_output*, %struct.hwrm_stat_ctx_alloc_output** %12, align 8
  store %struct.hwrm_stat_ctx_alloc_output* %13, %struct.hwrm_stat_ctx_alloc_output** %7, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = load i32, i32* @HWRM_STAT_CTX_ALLOC, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %19, %struct.hwrm_stat_ctx_alloc_input* %6, i32 %20, i32 -1, i32 -1)
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 1000
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %80, %18
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %36
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 4
  %45 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %45, i64 %47
  %49 = load %struct.bnxt_napi*, %struct.bnxt_napi** %48, align 8
  store %struct.bnxt_napi* %49, %struct.bnxt_napi** %8, align 8
  %50 = load %struct.bnxt_napi*, %struct.bnxt_napi** %8, align 8
  %51 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %50, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %51, %struct.bnxt_cp_ring_info** %9, align 8
  %52 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %53 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_le64(i32 %54)
  %56 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %59 = call i32 @_hwrm_send_message(%struct.bnxt* %57, %struct.hwrm_stat_ctx_alloc_input* %6, i32 16, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %83

63:                                               ; preds = %42
  %64 = load %struct.hwrm_stat_ctx_alloc_output*, %struct.hwrm_stat_ctx_alloc_output** %7, align 8
  %65 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_output, %struct.hwrm_stat_ctx_alloc_output* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %69 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %71 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %36

83:                                               ; preds = %62, %36
  %84 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_stat_ctx_alloc_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_stat_ctx_alloc_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
