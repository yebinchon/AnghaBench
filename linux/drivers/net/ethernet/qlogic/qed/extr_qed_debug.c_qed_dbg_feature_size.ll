; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_feature_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_feature_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)* }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_dev = type { %struct.TYPE_3__, %struct.qed_hwfn* }
%struct.TYPE_3__ = type { i64, %struct.qed_dbg_feature* }
%struct.qed_dbg_feature = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@qed_features_lookup = common dso_local global %struct.TYPE_4__* null, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_feature_size(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_dbg_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 1
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %14 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %15 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i64 %17
  store %struct.qed_hwfn* %18, %struct.qed_hwfn** %6, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %20 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %19)
  store %struct.qed_ptt* %20, %struct.qed_ptt** %7, align 8
  %21 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %22 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %24, i64 %26
  store %struct.qed_dbg_feature* %27, %struct.qed_dbg_feature** %8, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %29 = icmp ne %struct.qed_ptt* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_features_lookup, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)*, i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)** %38, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %42 = call i32 %39(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i32* %9)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DBG_STATUS_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %50 = call i32 @qed_ptt_release(%struct.qed_hwfn* %48, %struct.qed_ptt* %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %56 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %58 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %30
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
