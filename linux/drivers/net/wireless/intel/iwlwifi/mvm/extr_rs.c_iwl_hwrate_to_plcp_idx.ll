; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_hwrate_to_plcp_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_hwrate_to_plcp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_HT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@IWL_RATE_MCS_0_INDEX = common dso_local global i64 0, align 8
@IWL_RATE_9M_INDEX = common dso_local global i32 0, align 4
@IWL_FIRST_HT_RATE = common dso_local global i32 0, align 4
@IWL_LAST_HT_RATE = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_HE_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@IWL_FIRST_VHT_RATE = common dso_local global i32 0, align 4
@IWL_LAST_VHT_RATE = common dso_local global i32 0, align 4
@IWL_LAST_HE_RATE = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_3__* null, align 8
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwl_hwrate_to_plcp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_hwrate_to_plcp_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RATE_HT_MCS_RATE_CODE_MSK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @IWL_RATE_MCS_0_INDEX, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %10
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IWL_FIRST_HT_RATE, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IWL_LAST_HT_RATE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %110

35:                                               ; preds = %29, %25
  br label %108

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @IWL_RATE_MCS_0_INDEX, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %46
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @IWL_FIRST_VHT_RATE, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IWL_LAST_VHT_RATE, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %110

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @IWL_LAST_HE_RATE, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %110

82:                                               ; preds = %76, %71
  br label %107

83:                                               ; preds = %41
  %84 = load i32, i32* %3, align 4
  %85 = call i64 @rs_extract_rate(i32 %84)
  store i64 %85, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %103, %83
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iwl_rates, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iwl_rates, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %110

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %86

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107, %35
  %109 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %100, %80, %69, %33
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @rs_extract_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
