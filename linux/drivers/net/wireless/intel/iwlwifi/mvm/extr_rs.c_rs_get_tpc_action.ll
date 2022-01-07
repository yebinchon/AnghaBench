; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_tpc_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_tpc_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }

@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no current tpt. stay.\0A\00", align 1
@TPC_ACTION_STAY = common dso_local global i32 0, align 4
@IWL_MVM_RS_TPC_SR_FORCE_INCREASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"increase txp because of weak SR\0A\00", align 1
@TPC_ACTION_NO_RESTIRCTION = common dso_local global i32 0, align 4
@IWL_MVM_RS_TPC_SR_NO_INCREASE = common dso_local global i32 0, align 4
@TPC_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"no weak txp measurement. decrease txp\0A\00", align 1
@TPC_ACTION_DECREASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"lower txp has better tpt. decrease txp\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"higher txp has better tpt. increase txp\0A\00", align 1
@TPC_ACTION_INCREASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"lower txp has worse tpt. increase txp\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"no need to increase or decrease txp - stay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64, i32, i32, i32, i32, i32)* @rs_get_tpc_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_tpc_action(%struct.iwl_mvm* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %21 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TPC_ACTION_STAY, align 4
  store i32 %22, i32* %8, align 4
  br label %115

23:                                               ; preds = %7
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @IWL_MVM_RS_TPC_SR_FORCE_INCREASE, align 4
  %26 = call i64 @RS_PERCENT(i32 %25)
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %23
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %33 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @TPC_ACTION_NO_RESTIRCTION, align 4
  store i32 %34, i32* %8, align 4
  br label %115

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* @IWL_MVM_RS_TPC_SR_NO_INCREASE, align 4
  %38 = call i64 @RS_PERCENT(i32 %37)
  %39 = icmp sge i64 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @TPC_INVALID, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %58 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @TPC_ACTION_DECREASE, align 4
  store i32 %59, i32* %8, align 4
  br label %115

60:                                               ; preds = %52, %44
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %66 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @TPC_ACTION_DECREASE, align 4
  store i32 %67, i32* %8, align 4
  br label %115

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %40, %35
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* @IWL_MVM_RS_TPC_SR_NO_INCREASE, align 4
  %72 = call i64 @RS_PERCENT(i32 %71)
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @TPC_INVALID, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %92 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @TPC_ACTION_INCREASE, align 4
  store i32 %93, i32* %8, align 4
  br label %115

94:                                               ; preds = %86, %82, %78
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102, %98
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %108 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* @TPC_ACTION_INCREASE, align 4
  store i32 %109, i32* %8, align 4
  br label %115

110:                                              ; preds = %102, %94
  br label %111

111:                                              ; preds = %110, %74, %69
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %113 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @TPC_ACTION_STAY, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %106, %90, %64, %56, %31, %19
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @RS_PERCENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
