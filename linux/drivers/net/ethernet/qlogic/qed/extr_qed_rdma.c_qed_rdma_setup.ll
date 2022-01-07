; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_rdma_start_in_params = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RDMA setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_rdma_start_in_params*)* @qed_rdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_setup(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_rdma_start_in_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_rdma_start_in_params*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_rdma_start_in_params* %2, %struct.qed_rdma_start_in_params** %7, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = load i32, i32* @QED_MSG_RDMA, align 4
  %11 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %9, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %7, align 8
  %14 = call i32 @qed_rdma_init_devinfo(%struct.qed_hwfn* %12, %struct.qed_rdma_start_in_params* %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = call i32 @qed_rdma_init_port(%struct.qed_hwfn* %15)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %7, align 8
  %19 = call i32 @qed_rdma_init_events(%struct.qed_hwfn* %17, %struct.qed_rdma_start_in_params* %18)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = call i32 @qed_rdma_reserve_lkey(%struct.qed_hwfn* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %29 = call i32 @qed_rdma_init_hw(%struct.qed_hwfn* %27, %struct.qed_ptt* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %60

34:                                               ; preds = %26
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %36 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %7, align 8
  %41 = call i32 @qed_iwarp_setup(%struct.qed_hwfn* %39, %struct.qed_rdma_start_in_params* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %60

46:                                               ; preds = %38
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = call i32 @qed_roce_setup(%struct.qed_hwfn* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %60

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %57 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %7, align 8
  %58 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %59 = call i32 @qed_rdma_start_fw(%struct.qed_hwfn* %56, %struct.qed_rdma_start_in_params* %57, %struct.qed_ptt* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %52, %44, %32, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @qed_rdma_init_devinfo(%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*) #1

declare dso_local i32 @qed_rdma_init_port(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_init_events(%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*) #1

declare dso_local i32 @qed_rdma_reserve_lkey(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_init_hw(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_setup(%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*) #1

declare dso_local i32 @qed_roce_setup(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_start_fw(%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
