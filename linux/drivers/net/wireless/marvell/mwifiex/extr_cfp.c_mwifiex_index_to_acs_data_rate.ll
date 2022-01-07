; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_index_to_acs_data_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_index_to_acs_data_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@MWIFIEX_RATE_FORMAT_VHT = common dso_local global i32 0, align 4
@ac_mcs_rate_nss2 = common dso_local global i32** null, align 8
@ac_mcs_rate_nss1 = common dso_local global i32** null, align 8
@MWIFIEX_RATE_FORMAT_HT = common dso_local global i32 0, align 4
@MWIFIEX_RATE_BITMAP_MCS0 = common dso_local global i32 0, align 4
@mcs_rate = common dso_local global i32** null, align 8
@mwifiex_data_rates = common dso_local global i32* null, align 8
@MWIFIEX_SUPPORTED_RATES_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_index_to_acs_data_rate(%struct.mwifiex_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 3
  %13 = load i32, i32* @MWIFIEX_RATE_FORMAT_VHT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 15
  %18 = call i32 @min(i32 %17, i32 9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 12
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 16
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %42

28:                                               ; preds = %15
  %29 = load i32**, i32*** @ac_mcs_rate_nss2, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 3, %30
  %32 = mul nsw i32 2, %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %29, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %15
  %43 = load i32**, i32*** @ac_mcs_rate_nss1, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 3, %44
  %46 = mul nsw i32 2, %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %43, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %42, %28
  br label %124

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 3
  %60 = load i32, i32* @MWIFIEX_RATE_FORMAT_HT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 12
  %65 = ashr i32 %64, 2
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 16
  %68 = ashr i32 %67, 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MWIFIEX_RATE_BITMAP_MCS0, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 13, i32* %7, align 4
  br label %77

76:                                               ; preds = %72
  store i32 12, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %111

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84, %81
  %88 = load i32**, i32*** @mcs_rate, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 1, %89
  %91 = mul nsw i32 2, %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %88, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  br label %105

101:                                              ; preds = %84
  %102 = load i32*, i32** @mwifiex_data_rates, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %87
  br label %110

106:                                              ; preds = %78
  %107 = load i32*, i32** @mwifiex_data_rates, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %105
  br label %111

111:                                              ; preds = %110, %77
  br label %123

112:                                              ; preds = %57
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @MWIFIEX_SUPPORTED_RATES_EXT, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %112
  %118 = load i32*, i32** @mwifiex_data_rates, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123, %56
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
