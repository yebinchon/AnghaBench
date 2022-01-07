; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_add_protocol_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_add_protocol_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%union.qed_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@EAGAIN = common dso_local global i32 0, align 4
@QED_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@QED_LLH_FILTER_TYPE_PROTOCOL = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"LLH: Added protocol filter [%s] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"LLH: Failed to add protocol filter [%s] to ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_llh_add_protocol_filter(%struct.qed_dev* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qed_hwfn*, align 8
  %13 = alloca %struct.qed_ptt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %union.qed_llh_filter, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %24 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %23)
  store %struct.qed_hwfn* %24, %struct.qed_hwfn** %12, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %26 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %25)
  store %struct.qed_ptt* %26, %struct.qed_ptt** %13, align 8
  %27 = bitcast %union.qed_llh_filter* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  store i32 0, i32* %22, align 4
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %29 = icmp ne %struct.qed_ptt* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %120

33:                                               ; preds = %5
  %34 = load i32, i32* @QED_MF_LLH_PROTO_CLSS, align 4
  %35 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %36 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %115

40:                                               ; preds = %33
  %41 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %46 = call i32 @qed_llh_protocol_filter_stringify(%struct.qed_dev* %41, i32 %42, i8* %43, i8* %44, i32* %45, i32 128)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %110

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = bitcast %union.qed_llh_filter* %18 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast %union.qed_llh_filter* %18 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = bitcast %union.qed_llh_filter* %18 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @QED_LLH_FILTER_TYPE_PROTOCOL, align 4
  %63 = call i32 @qed_llh_shadow_add_filter(%struct.qed_dev* %60, i32 %61, i32 %62, %union.qed_llh_filter* %18, i32* %14, i32* %21)
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %110

67:                                               ; preds = %50
  %68 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @qed_llh_abs_ppfid(%struct.qed_dev* %68, i32 %69, i32* %15)
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %110

74:                                               ; preds = %67
  %75 = load i32, i32* %21, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @qed_llh_protocol_filter_to_hilo(%struct.qed_dev* %78, i32 %79, i8* %80, i8* %81, i32* %19, i32* %20)
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %110

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 1, %87
  store i32 %88, i32* %17, align 4
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @qed_llh_add_filter(%struct.qed_hwfn* %89, %struct.qed_ptt* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %110

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %74
  %102 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %103 = load i32, i32* @QED_MSG_SP, align 4
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @DP_VERBOSE(%struct.qed_dev* %102, i32 %103, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %99, %85, %73, %66, %49
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %112 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @DP_NOTICE(%struct.qed_hwfn* %111, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %101, %39
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %117 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %118 = call i32 @qed_ptt_release(%struct.qed_hwfn* %116, %struct.qed_ptt* %117)
  %119 = load i32, i32* %22, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %115, %30
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_llh_protocol_filter_stringify(%struct.qed_dev*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @qed_llh_shadow_add_filter(%struct.qed_dev*, i32, i32, %union.qed_llh_filter*, i32*, i32*) #1

declare dso_local i32 @qed_llh_abs_ppfid(%struct.qed_dev*, i32, i32*) #1

declare dso_local i32 @qed_llh_protocol_filter_to_hilo(%struct.qed_dev*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @qed_llh_add_filter(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32*, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
