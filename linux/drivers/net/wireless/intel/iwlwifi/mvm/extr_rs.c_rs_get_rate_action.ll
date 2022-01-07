; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_rate_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_rate_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_scale_tbl_info = type { i32* }

@RS_ACTION_STAY = common dso_local global i32 0, align 4
@IWL_MVM_RS_SR_FORCE_DECREASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Decrease rate because of low SR\0A\00", align 1
@RS_ACTION_DOWNSCALE = common dso_local global i32 0, align 4
@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"No data about high/low rates. Increase rate\0A\00", align 1
@RS_ACTION_UPSCALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"No data about high rate and low rate is worse. Increase rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Higher rate is better. Increate rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Both high and low are worse. Maintain rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Lower rate is better\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"No data about lower rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Maintain rate\0A\00", align 1
@IWL_MVM_RS_SR_NO_DECREASE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"SR is above NO DECREASE. Avoid downscale\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"Current TPT is higher than max expected in low rate. Avoid downscale\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Decrease rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i64, i32, i32, i32, i32, i32)* @rs_get_rate_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_rate_action(%struct.iwl_mvm* %0, %struct.iwl_scale_tbl_info* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %10, align 8
  store %struct.iwl_scale_tbl_info* %1, %struct.iwl_scale_tbl_info** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* @RS_ACTION_STAY, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i64, i64* %12, align 8
  %21 = load i32, i32* @IWL_MVM_RS_SR_FORCE_DECREASE, align 4
  %22 = call i64 @RS_PERCENT(i32 %21)
  %23 = icmp sle i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %8
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %29 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @RS_ACTION_DOWNSCALE, align 4
  store i32 %30, i32* %9, align 4
  br label %165

31:                                               ; preds = %24
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @IWL_RATE_INVALID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %45 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @RS_ACTION_UPSCALE, align 4
  store i32 %46, i32* %9, align 4
  br label %165

47:                                               ; preds = %39, %35, %31
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @IWL_RATE_INVALID, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %65 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %64, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @RS_ACTION_UPSCALE, align 4
  store i32 %66, i32* %9, align 4
  br label %165

67:                                               ; preds = %59, %55, %51, %47
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %77 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @RS_ACTION_UPSCALE, align 4
  store i32 %78, i32* %9, align 4
  br label %165

79:                                               ; preds = %71, %67
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %97 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @RS_ACTION_STAY, align 4
  store i32 %98, i32* %9, align 4
  br label %165

99:                                               ; preds = %91, %87, %83, %79
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %109 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @RS_ACTION_DOWNSCALE, align 4
  store i32 %110, i32* %18, align 4
  br label %126

111:                                              ; preds = %103, %99
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @IWL_INVALID_VALUE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @IWL_RATE_INVALID, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %121 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* @RS_ACTION_DOWNSCALE, align 4
  store i32 %122, i32* %18, align 4
  br label %126

123:                                              ; preds = %115, %111
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %125 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %119, %107
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @RS_ACTION_DOWNSCALE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @IWL_RATE_INVALID, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = load i64, i64* %12, align 8
  %136 = load i32, i32* @IWL_MVM_RS_SR_NO_DECREASE, align 4
  %137 = call i64 @RS_PERCENT(i32 %136)
  %138 = icmp sge i64 %135, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %141 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %142 = load i32, i32* @RS_ACTION_STAY, align 4
  store i32 %142, i32* %18, align 4
  br label %162

143:                                              ; preds = %134
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %146 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 100, %151
  %153 = icmp sgt i32 %144, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %156 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %155, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32, i32* @RS_ACTION_STAY, align 4
  store i32 %157, i32* %18, align 4
  br label %161

158:                                              ; preds = %143
  %159 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %160 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %154
  br label %162

162:                                              ; preds = %161, %139
  br label %163

163:                                              ; preds = %162, %130, %126
  %164 = load i32, i32* %18, align 4
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %163, %95, %75, %63, %43, %27
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i64 @RS_PERCENT(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
