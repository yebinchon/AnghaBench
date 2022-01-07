; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Initializing HW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_rdma_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_init_hw(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = load i32, i32* @QED_MSG_RDMA, align 4
  %8 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %6, i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %17 = call i32 @qed_iwarp_init_hw(%struct.qed_hwfn* %15, %struct.qed_ptt* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %21 = call i32 @qed_roce_init_hw(%struct.qed_hwfn* %19, %struct.qed_ptt* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_init_hw(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_roce_init_hw(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
