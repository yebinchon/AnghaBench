; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_queue_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_queue_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i64 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to read queue coalescing\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_get_queue_coalesce(%struct.qed_hwfn* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qed_queue_cid*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.qed_queue_cid*
  store %struct.qed_queue_cid* %12, %struct.qed_queue_cid** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_VF(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %22 = call i32 @qed_vf_pf_get_coalesce(%struct.qed_hwfn* %19, i32* %20, %struct.qed_queue_cid* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = call i32 @DP_NOTICE(%struct.qed_hwfn* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %3
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %31)
  store %struct.qed_ptt* %32, %struct.qed_ptt** %9, align 8
  %33 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %34 = icmp ne %struct.qed_ptt* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %69

38:                                               ; preds = %30
  %39 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %40 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %45 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %46 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @qed_get_rxq_coalesce(%struct.qed_hwfn* %44, %struct.qed_ptt* %45, %struct.qed_queue_cid* %46, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %64

52:                                               ; preds = %43
  br label %63

53:                                               ; preds = %38
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %56 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @qed_get_txq_coalesce(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, %struct.qed_queue_cid* %56, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %64

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %61, %51
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %66 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %67 = call i32 @qed_ptt_release(%struct.qed_hwfn* %65, %struct.qed_ptt* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %35, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @qed_vf_pf_get_coalesce(%struct.qed_hwfn*, i32*, %struct.qed_queue_cid*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_get_rxq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_queue_cid*, i32*) #1

declare dso_local i32 @qed_get_txq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_queue_cid*, i32*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
