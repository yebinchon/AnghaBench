; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_final_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_final_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@FINAL_CLEANUP_POLL_CNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GTT_BAR0_MAP_REG_USDM_RAM = common dso_local global i32 0, align 4
@X_FINAL_CLEANUP_AGG_INT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT = common dso_local global i32 0, align 4
@SDM_COMP_TYPE_AGG_INT = common dso_local global i32 0, align 4
@SDM_OP_GEN_COMP_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Unexpected; Found final cleanup notification before initiating final cleanup\0A\00", align 1
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Sending final cleanup for PFVF[%d] [Command %08x]\0A\00", align 1
@XSDM_REG_OPERATION_GEN = common dso_local global i32 0, align 4
@FINAL_CLEANUP_POLL_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to receive FW final cleanup notification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_final_cleanup(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @FINAL_CLEANUP_POLL_CNT, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @GTT_BAR0_MAP_REG_USDM_RAM, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USTORM_FLR_FINAL_ACK_OFFSET(i32 %19)
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 16
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32, i32* @X_FINAL_CLEANUP_AGG_INT, align 4
  %29 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @SDM_COMP_TYPE_AGG_INT, align 4
  %43 = load i32, i32* @SDM_OP_GEN_COMP_TYPE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @REG_RD(%struct.qed_hwfn* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %27
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = call i32 @DP_NOTICE(%struct.qed_hwfn* %52, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @REG_WR(%struct.qed_hwfn* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %51, %27
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %59 = load i32, i32* @QED_MSG_IOV, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %58, i32 %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %64 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %65 = load i32, i32* @XSDM_REG_OPERATION_GEN, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @qed_wr(%struct.qed_hwfn* %63, %struct.qed_ptt* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %79, %57
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @REG_RD(%struct.qed_hwfn* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %11, align 4
  %76 = icmp ne i32 %74, 0
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i1 [ false, %68 ], [ %76, %73 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i32, i32* @FINAL_CLEANUP_POLL_TIME, align 4
  %81 = call i32 @msleep(i32 %80)
  br label %68

82:                                               ; preds = %77
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @REG_RD(%struct.qed_hwfn* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %91

88:                                               ; preds = %82
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = call i32 @DP_NOTICE(%struct.qed_hwfn* %89, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @REG_WR(%struct.qed_hwfn* %92, i32 %93, i32 0)
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @USTORM_FLR_FINAL_ACK_OFFSET(i32) #1

declare dso_local i64 @REG_RD(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @REG_WR(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
