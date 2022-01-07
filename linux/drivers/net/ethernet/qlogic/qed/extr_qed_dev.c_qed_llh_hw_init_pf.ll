; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_hw_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_hw_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__, i32, %struct.qed_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.qed_ptt = type { i32 }

@NIG_REG_LLH_PPFID2PFID_TBL_0 = common dso_local global i64 0, align 8
@QED_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to add an LLH filter with the primary MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_llh_hw_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_hw_init_pf(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 2
  %13 = load %struct.qed_dev*, %struct.qed_dev** %12, align 8
  store %struct.qed_dev* %13, %struct.qed_dev** %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %23, i64 %24, i64* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load i64, i64* @NIG_REG_LLH_PPFID2PFID_TBL_0, align 8
  %32 = load i64, i64* %8, align 8
  %33 = mul nsw i64 %32, 4
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %10, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qed_wr(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* @QED_MF_LLH_MAC_CLSS, align 4
  %47 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %48 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %53 = call i32 @QED_IS_FCOE_PERSONALITY(%struct.qed_hwfn* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @qed_llh_add_mac_filter(%struct.qed_dev* %56, i32 0, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %66 = call i32 @DP_NOTICE(%struct.qed_dev* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  br label %68

68:                                               ; preds = %67, %51, %45
  %69 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %70 = call i64 @QED_IS_CMT(%struct.qed_dev* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %74 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %75 = call i32 @qed_llh_set_engine_affin(%struct.qed_hwfn* %73, %struct.qed_ptt* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %68
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %28
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i64, i64*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QED_IS_FCOE_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_llh_add_mac_filter(%struct.qed_dev*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i64 @QED_IS_CMT(%struct.qed_dev*) #1

declare dso_local i32 @qed_llh_set_engine_affin(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
