; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dcbx_results = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qed_ptt = type { i32 }

@UPDATE_DCB = common dso_local global i32 0, align 4
@DONT_UPDATE_DCB_DSCP = common dso_local global i32 0, align 4
@QED_MF_DONT_ADD_VLAN0_TAG = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ROCE = common dso_local global i32 0, align 4
@DORQ_REG_TAG1_OVRD_MODE = common dso_local global i32 0, align 4
@DORQ_REG_PF_PCP_BB_K2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dcbx_results*, %struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32, i32, i32)* @qed_dcbx_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_set_params(%struct.qed_dcbx_results* %0, %struct.qed_hwfn* %1, %struct.qed_ptt* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.qed_dcbx_results*, align 8
  %11 = alloca %struct.qed_hwfn*, align 8
  %12 = alloca %struct.qed_ptt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qed_dcbx_results* %0, %struct.qed_dcbx_results** %10, align 8
  store %struct.qed_hwfn* %1, %struct.qed_hwfn** %11, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %21 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %17, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %19, i32* %26, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %29 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %17, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %27, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %37 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %35, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %9
  %46 = load i32, i32* @UPDATE_DCB, align 4
  %47 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %48 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32 %46, i32* %53, align 4
  br label %63

54:                                               ; preds = %9
  %55 = load i32, i32* @DONT_UPDATE_DCB_DSCP, align 4
  %56 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %57 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %55, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %45
  %64 = load i32, i32* @QED_MF_DONT_ADD_VLAN0_TAG, align 4
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %66 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %64, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %10, align 8
  %73 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %63
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %84 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %91 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %90, i32 0, i32 1
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @qed_hw_info_set_offload_tc(%struct.TYPE_6__* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %82, %79
  %95 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %97 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = call i64 @test_bit(i32 %95, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @DCBX_PROTOCOL_ROCE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %108 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %109 = load i32, i32* @DORQ_REG_TAG1_OVRD_MODE, align 4
  %110 = call i32 @qed_wr(%struct.qed_hwfn* %107, %struct.qed_ptt* %108, i32 %109, i32 1)
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %112 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %113 = load i32, i32* @DORQ_REG_PF_PCP_BB_K2, align 4
  %114 = load i32, i32* %15, align 4
  %115 = shl i32 %114, 1
  %116 = call i32 @qed_wr(%struct.qed_hwfn* %111, %struct.qed_ptt* %112, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %106, %102, %94
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_hw_info_set_offload_tc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
