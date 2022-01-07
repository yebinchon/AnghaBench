; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_cache_line_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_cache_line_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_func_cfg_input = type { i32, i32, i32, i32 }

@HWRM_FUNC_CFG = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_ENABLES_CACHE_LINESIZE = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_64 = common dso_local global i32 0, align 4
@FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_128 = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_hwrm_set_cache_line_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_set_cache_line_size(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_func_cfg_input, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.hwrm_func_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = call i64 @BNXT_VF(%struct.bnxt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 67587
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %20 = load i32, i32* @HWRM_FUNC_CFG, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %19, %struct.hwrm_func_cfg_input* %6, i32 %20, i32 -1, i32 -1)
  %22 = call i32 @cpu_to_le16(i32 65535)
  %23 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @FUNC_CFG_REQ_ENABLES_CACHE_LINESIZE, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_64, align 4
  %28 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_128, align 4
  %33 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %18
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %37 = call i32 @hwrm_send_message(%struct.bnxt* %35, %struct.hwrm_func_cfg_input* %6, i32 16, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #2

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
