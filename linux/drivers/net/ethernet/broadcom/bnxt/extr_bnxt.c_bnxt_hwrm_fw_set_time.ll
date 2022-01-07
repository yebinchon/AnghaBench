; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_fw_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_fw_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_fw_set_time_input = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HWRM_FW_SET_TIME = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_fw_set_time(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_fw_set_time_input, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %7 = bitcast %struct.hwrm_fw_set_time_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false)
  %8 = call i32 (...) @ktime_get_real_seconds()
  store i32 %8, i32* %6, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = call i64 @BNXT_VF(%struct.bnxt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 67841
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 66560
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @time64_to_tm(i32 %26, i32 0, %struct.tm* %5)
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = load i32, i32* @HWRM_FW_SET_TIME, align 4
  %30 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %28, %struct.hwrm_fw_set_time_input* %4, i32 %29, i32 -1, i32 -1)
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 1900, %32
  %34 = call i32 @cpu_to_le16(i64 %33)
  %35 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 1, %37
  %39 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 4
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %53 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %54 = call i32 @hwrm_send_message(%struct.bnxt* %52, %struct.hwrm_fw_set_time_input* %4, i32 32, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %25, %22
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ktime_get_real_seconds(...) #2

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #2

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_fw_set_time_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_fw_set_time_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
