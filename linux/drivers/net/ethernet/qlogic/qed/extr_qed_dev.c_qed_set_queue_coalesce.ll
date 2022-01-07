; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_queue_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_queue_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_queue_cid = type { %struct.qed_hwfn* }
%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_set_queue_coalesce(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qed_queue_cid*, align 8
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.qed_queue_cid*
  store %struct.qed_queue_cid* %13, %struct.qed_queue_cid** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %15 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %14, i32 0, i32 0
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %15, align 8
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %9, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @IS_VF(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %27 = call i32 @qed_vf_pf_set_coalesce(%struct.qed_hwfn* %23, i8* %24, i8* %25, %struct.qed_queue_cid* %26)
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %3
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %30 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %29)
  store %struct.qed_ptt* %30, %struct.qed_ptt** %10, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %32 = icmp ne %struct.qed_ptt* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %44 = call i32 @qed_set_rxq_coalesce(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i8* %42, %struct.qed_queue_cid* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %73

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  br label %54

54:                                               ; preds = %48, %36
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %59 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %62 = call i32 @qed_set_txq_coalesce(%struct.qed_hwfn* %58, %struct.qed_ptt* %59, i8* %60, %struct.qed_queue_cid* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %73

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %69 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %54
  br label %73

73:                                               ; preds = %72, %65, %47
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %75 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %76 = call i32 @qed_ptt_release(%struct.qed_hwfn* %74, %struct.qed_ptt* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %33, %22
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @IS_VF(%struct.TYPE_2__*) #1

declare dso_local i32 @qed_vf_pf_set_coalesce(%struct.qed_hwfn*, i8*, i8*, %struct.qed_queue_cid*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_set_rxq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, i8*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_set_txq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, i8*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
