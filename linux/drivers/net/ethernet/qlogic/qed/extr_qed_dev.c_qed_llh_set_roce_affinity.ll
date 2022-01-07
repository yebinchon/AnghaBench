; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_set_roce_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_set_roce_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid affinity value for RoCE [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_llh_set_roce_affinity(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %15 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %14)
  store %struct.qed_hwfn* %15, %struct.qed_hwfn** %6, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %16)
  store %struct.qed_ptt* %17, %struct.qed_ptt** %7, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %19 = icmp ne %struct.qed_ptt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %2
  %24 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %25 = call i32 @QED_IS_CMT(%struct.qed_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %83

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %37 [
    i32 129, label %30
    i32 128, label %31
    i32 130, label %32
  ]

30:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %43

31:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %43

32:                                               ; preds = %28
  store i32 2, i32* %10, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %35 = load i32, i32* @NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL, align 4
  %36 = call i32 @qed_wr(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32 %35, i32 15)
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DP_NOTICE(%struct.qed_dev* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %83

43:                                               ; preds = %32, %31, %30
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %79, %43
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %47 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %44
  %53 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %53, i64 %54, i64* %12)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %83

59:                                               ; preds = %52
  %60 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %12, align 8
  %63 = mul nsw i64 %62, 4
  %64 = add nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %67 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @qed_rd(%struct.qed_hwfn* %66, %struct.qed_ptt* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL_ROCE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @SET_FIELD(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %75 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @qed_wr(%struct.qed_hwfn* %74, %struct.qed_ptt* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %59
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %44

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82, %58, %37, %27
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %85 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %86 = call i32 @qed_ptt_release(%struct.qed_hwfn* %84, %struct.qed_ptt* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %20
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @QED_IS_CMT(%struct.qed_dev*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i64, i64*) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
