; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_add_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_add_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%union.qed_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@QED_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@QED_LLH_FILTER_TYPE_MAC = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"LLH: Added MAC filter [%pM] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"LLH: Failed to add MAC filter [%pM] to ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_llh_add_mac_filter(%struct.qed_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca %union.qed_llh_filter, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %20 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %19)
  store %struct.qed_hwfn* %20, %struct.qed_hwfn** %8, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %22 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %21)
  store %struct.qed_ptt* %22, %struct.qed_ptt** %9, align 8
  %23 = bitcast %union.qed_llh_filter* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %25 = icmp ne %struct.qed_ptt* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %117

29:                                               ; preds = %3
  %30 = load i32, i32* @QED_MF_LLH_MAC_CLSS, align 4
  %31 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %32 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %31, i32 0, i32 0
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %112

36:                                               ; preds = %29
  %37 = bitcast %union.qed_llh_filter* %10 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  %43 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @QED_LLH_FILTER_TYPE_MAC, align 4
  %46 = call i32 @qed_llh_shadow_add_filter(%struct.qed_dev* %43, i32 %44, i32 %45, %union.qed_llh_filter* %10, i32* %11, i32* %15)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %107

50:                                               ; preds = %36
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %98

53:                                               ; preds = %50
  %54 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %54, i32 %55, i32* %12)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %107

60:                                               ; preds = %53
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %71, %75
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %76, %80
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 24
  %86 = or i32 %81, %85
  store i32 %86, i32* %14, align 4
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %88 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @qed_llh_add_filter(%struct.qed_hwfn* %87, %struct.qed_ptt* %88, i32 %89, i32 %90, i32 0, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %60
  br label %107

97:                                               ; preds = %60
  br label %98

98:                                               ; preds = %97, %50
  %99 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %100 = load i32, i32* @QED_MSG_SP, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @DP_VERBOSE(%struct.qed_dev* %99, i32 %100, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  br label %112

107:                                              ; preds = %96, %59, %49
  %108 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @DP_NOTICE(%struct.qed_dev* %108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %98, %35
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %114 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %115 = call i32 @qed_ptt_release(%struct.qed_hwfn* %113, %struct.qed_ptt* %114)
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qed_llh_shadow_add_filter(%struct.qed_dev*, i32, i32, %union.qed_llh_filter*, i32*, i32*) #1

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i32, i32*) #1

declare dso_local i32 @qed_llh_add_filter(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32*, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
