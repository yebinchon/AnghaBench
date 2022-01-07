; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_check_broken_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_check_broken_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RESULT_FAIL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.mmc_request*)* @mmc_test_check_broken_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_check_broken_result(%struct.mmc_test_card* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %8 = icmp ne %struct.mmc_request* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9, %2
  %21 = phi i1 [ true, %9 ], [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %142

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %31, %28
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %47, %44
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %59, %56
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %84 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %89, %82, %77, %74
  %96 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %102
  %106 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %107 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %112 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %110, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %105, %102
  br label %133

120:                                              ; preds = %95
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %125 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %123, %120
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %25
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
