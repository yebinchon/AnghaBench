; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_get_qp_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_get_qp_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_rdma_qp = type { i32, i32 }

@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"qp icid %u tc: %u (vlan priority %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*)* @qed_roce_get_qp_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_get_qp_tc(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_rdma_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %8 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %13 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @qed_dcbx_get_priority_tc(%struct.qed_hwfn* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %24 = load i32, i32* @QED_MSG_SP, align 4
  %25 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  %30 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i8* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @qed_dcbx_get_priority_tc(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
