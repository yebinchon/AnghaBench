; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_set_ppfid_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_set_ppfid_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid affinity value for ppfid [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_llh_set_ppfid_affinity(%struct.qed_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %16 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %15)
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %8, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %18 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %17)
  store %struct.qed_ptt* %18, %struct.qed_ptt** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %20 = icmp ne %struct.qed_ptt* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %26 = call i32 @QED_IS_CMT(%struct.qed_dev* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %79

29:                                               ; preds = %24
  %30 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %30, i32 %31, i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %41 [
    i32 129, label %38
    i32 128, label %39
    i32 130, label %40
  ]

38:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %47

39:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %47

40:                                               ; preds = %36
  store i32 2, i32* %12, align 4
  br label %47

41:                                               ; preds = %36
  %42 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @DP_NOTICE(%struct.qed_dev* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %79

47:                                               ; preds = %40, %39, %38
  %48 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @qed_rd(%struct.qed_hwfn* %52, %struct.qed_ptt* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @SET_FIELD(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %61 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @qed_wr(%struct.qed_hwfn* %60, %struct.qed_ptt* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %47
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %69 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 128
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %77 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %67, %47
  br label %79

79:                                               ; preds = %78, %41, %35, %28
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %81 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %82 = call i32 @qed_ptt_release(%struct.qed_hwfn* %80, %struct.qed_ptt* %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @QED_IS_CMT(%struct.qed_dev*) #1

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
