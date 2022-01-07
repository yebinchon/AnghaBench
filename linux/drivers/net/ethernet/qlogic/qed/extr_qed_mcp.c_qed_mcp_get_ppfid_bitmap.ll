; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_ppfid_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_ppfid_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_dev* }
%struct.qed_dev = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i64, i32, i32, i32 }

@DRV_MSG_CODE_GET_PPFID_BITMAP = common dso_local global i32 0, align 4
@FW_MSG_CODE_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"The get_ppfid_bitmap command is unsupported by the MFW\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FW_MB_PARAM_PPFID_BITMAP = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PPFID bitmap 0x%hhx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_get_ppfid_bitmap(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_mcp_mb_params, align 8
  %7 = alloca %struct.qed_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = bitcast %struct.qed_mcp_mb_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  store %struct.qed_dev* %12, %struct.qed_dev** %7, align 8
  %13 = load i32, i32* @DRV_MSG_CODE_GET_PPFID_BITMAP, align 4
  %14 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %17 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %15, %struct.qed_ptt* %16, %struct.qed_mcp_mb_params* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FW_MSG_CODE_UNSUPPORTED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = call i32 @DP_INFO(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FW_MB_PARAM_PPFID_BITMAP, align 4
  %36 = call i32 @QED_MFW_GET_FIELD(i32 %34, i32 %35)
  %37 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %38 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load i32, i32* @QED_MSG_SP, align 4
  %41 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %27, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #2

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #2

declare dso_local i32 @QED_MFW_GET_FIELD(i32, i32) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
