; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_ROCE = common dso_local global i32 0, align 4
@PRS_REG_LIGHT_L2_ETHERTYPE_EN = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"The first RoCE's cid should be even\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Initializing HW - Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_roce_init_hw(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %9 = load i32, i32* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 4
  %10 = call i32 @qed_wr(%struct.qed_hwfn* %7, %struct.qed_ptt* %8, i32 %9, i32 0)
  %11 = load i32, i32* @PRS_REG_SEARCH_ROCE, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %16 = load i32, i32* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 4
  %17 = call i32 @qed_rd(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %20 = load i32, i32* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 1
  %23 = call i32 @qed_wr(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, i32 %20, i32 %22)
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %25 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %26 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %24, i32 %25)
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = call i32 @DP_NOTICE(%struct.qed_hwfn* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load i32, i32* @QED_MSG_RDMA, align 4
  %37 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
