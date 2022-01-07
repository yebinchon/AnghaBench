; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_start_in_params = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"desired_cnq = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RDMA start - error, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_start_in_params*)* @qed_rdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_start(i8* %0, %struct.qed_rdma_start_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_rdma_start_in_params*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_rdma_start_in_params* %1, %struct.qed_rdma_start_in_params** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %6, align 8
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = load i32, i32* @QED_MSG_RDMA, align 4
  %15 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %5, align 8
  %16 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %13, i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %20 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %19)
  store %struct.qed_ptt* %20, %struct.qed_ptt** %7, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %22 = icmp ne %struct.qed_ptt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %26 = call i32 @qed_rdma_alloc(%struct.qed_hwfn* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %33 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %5, align 8
  %34 = call i32 @qed_rdma_setup(%struct.qed_hwfn* %31, %struct.qed_ptt* %32, %struct.qed_rdma_start_in_params* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %41 = call i32 @qed_ptt_release(%struct.qed_hwfn* %39, %struct.qed_ptt* %40)
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = call i32 @qed_rdma_free(%struct.qed_hwfn* %48)
  br label %50

50:                                               ; preds = %47, %29
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %52 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %53 = call i32 @qed_ptt_release(%struct.qed_hwfn* %51, %struct.qed_ptt* %52)
  br label %54

54:                                               ; preds = %50, %23
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %56 = load i32, i32* @QED_MSG_RDMA, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_alloc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_setup(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_rdma_start_in_params*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_rdma_free(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
