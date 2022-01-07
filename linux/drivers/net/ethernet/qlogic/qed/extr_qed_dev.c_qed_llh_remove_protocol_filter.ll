; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_remove_protocol_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_remove_protocol_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%union.qed_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@QED_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"LLH: Removed protocol filter [%s] from ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"LLH: Failed to remove protocol filter [%s] from ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_llh_remove_protocol_filter(%struct.qed_dev* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.qed_hwfn*, align 8
  %12 = alloca %struct.qed_ptt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i32], align 16
  %16 = alloca %union.qed_llh_filter, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %20 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %19)
  store %struct.qed_hwfn* %20, %struct.qed_hwfn** %11, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %22 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %21)
  store %struct.qed_ptt* %22, %struct.qed_ptt** %12, align 8
  %23 = bitcast %union.qed_llh_filter* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  store i32 0, i32* %17, align 4
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %25 = icmp ne %struct.qed_ptt* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %98

27:                                               ; preds = %5
  %28 = load i32, i32* @QED_MF_LLH_PROTO_CLSS, align 4
  %29 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %30 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %29, i32 0, i32 0
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %40 = call i32 @qed_llh_protocol_filter_stringify(%struct.qed_dev* %35, i32 %36, i8* %37, i8* %38, i32* %39, i32 128)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %89

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = bitcast %union.qed_llh_filter* %16 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast %union.qed_llh_filter* %16 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = bitcast %union.qed_llh_filter* %16 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @qed_llh_shadow_remove_filter(%struct.qed_dev* %54, i32 %55, %union.qed_llh_filter* %16, i32* %13, i32* %18)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %89

60:                                               ; preds = %44
  %61 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %61, i32 %62, i32* %14)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %89

67:                                               ; preds = %60
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %72 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @qed_llh_remove_filter(%struct.qed_hwfn* %71, %struct.qed_ptt* %72, i32 %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %89

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %82 = load i32, i32* @QED_MSG_SP, align 4
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @DP_VERBOSE(%struct.qed_dev* %81, i32 %82, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %94

89:                                               ; preds = %78, %66, %59, %43
  %90 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %91 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @DP_NOTICE(%struct.qed_dev* %90, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %80, %33
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %96 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %97 = call i32 @qed_ptt_release(%struct.qed_hwfn* %95, %struct.qed_ptt* %96)
  br label %98

98:                                               ; preds = %94, %26
  ret void
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_llh_protocol_filter_stringify(%struct.qed_dev*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @qed_llh_shadow_remove_filter(%struct.qed_dev*, i32, %union.qed_llh_filter*, i32*, i32*) #1

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i32, i32*) #1

declare dso_local i32 @qed_llh_remove_filter(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

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
