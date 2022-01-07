; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dbg_hwrm_ring_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dbg_hwrm_ring_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.hwrm_dbg_ring_info_get_output* }
%struct.hwrm_dbg_ring_info_get_output = type { i32, i32 }
%struct.hwrm_dbg_ring_info_get_input = type { i32, i32, i32 }

@HWRM_DBG_RING_INFO_GET = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32, i32*, i32*)* @bnxt_dbg_hwrm_ring_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_dbg_hwrm_ring_info_get(%struct.bnxt* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hwrm_dbg_ring_info_get_output*, align 8
  %12 = alloca %struct.hwrm_dbg_ring_info_get_input, align 4
  %13 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 1
  %16 = load %struct.hwrm_dbg_ring_info_get_output*, %struct.hwrm_dbg_ring_info_get_output** %15, align 8
  store %struct.hwrm_dbg_ring_info_get_output* %16, %struct.hwrm_dbg_ring_info_get_output** %11, align 8
  %17 = bitcast %struct.hwrm_dbg_ring_info_get_input* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  %18 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %19 = load i32, i32* @HWRM_DBG_RING_INFO_GET, align 4
  %20 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %18, %struct.hwrm_dbg_ring_info_get_input* %12, i32 %19, i32 -1, i32 -1)
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.hwrm_dbg_ring_info_get_input, %struct.hwrm_dbg_ring_info_get_input* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.hwrm_dbg_ring_info_get_input, %struct.hwrm_dbg_ring_info_get_input* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %30 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %31 = call i32 @_hwrm_send_message(%struct.bnxt* %29, %struct.hwrm_dbg_ring_info_get_input* %12, i32 12, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %5
  %35 = load %struct.hwrm_dbg_ring_info_get_output*, %struct.hwrm_dbg_ring_info_get_output** %11, align 8
  %36 = getelementptr inbounds %struct.hwrm_dbg_ring_info_get_output, %struct.hwrm_dbg_ring_info_get_output* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.hwrm_dbg_ring_info_get_output*, %struct.hwrm_dbg_ring_info_get_output** %11, align 8
  %41 = getelementptr inbounds %struct.hwrm_dbg_ring_info_get_output, %struct.hwrm_dbg_ring_info_get_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %5
  %46 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_dbg_ring_info_get_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_dbg_ring_info_get_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
