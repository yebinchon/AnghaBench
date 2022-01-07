; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_index_to_data_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_index_to_data_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@HT_STREAM_2X2 = common dso_local global i64 0, align 8
@MWIFIEX_RATE_BITMAP_MCS0 = common dso_local global i32 0, align 4
@mcs_rate = common dso_local global i32** null, align 8
@mwifiex_data_rates = common dso_local global i32* null, align 8
@MWIFIEX_SUPPORTED_RATES_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_index_to_data_rate(%struct.mwifiex_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HT_STREAM_2X2, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 16, i32 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mwifiex_index_to_acs_data_rate(%struct.mwifiex_private* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %120

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 0)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %107

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MWIFIEX_RATE_BITMAP_MCS0, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @BIT(i32 2)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 13, i32* %9, align 4
  br label %46

45:                                               ; preds = %39
  store i32 12, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %106

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @BIT(i32 1)
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @BIT(i32 2)
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32**, i32*** @mcs_rate, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load i32**, i32*** @mcs_rate, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %61
  br label %100

78:                                               ; preds = %51
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @BIT(i32 2)
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32**, i32*** @mcs_rate, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  br label %99

91:                                               ; preds = %78
  %92 = load i32**, i32*** @mcs_rate, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %91, %83
  br label %100

100:                                              ; preds = %99, %77
  br label %105

101:                                              ; preds = %47
  %102 = load i32*, i32** @mwifiex_data_rates, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %100
  br label %106

106:                                              ; preds = %105, %46
  br label %118

107:                                              ; preds = %30
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @MWIFIEX_SUPPORTED_RATES_EXT, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = load i32*, i32** @mwifiex_data_rates, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %25
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @mwifiex_index_to_acs_data_rate(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
