; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_load_scale_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_load_scale_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.clk*, %struct.clk*, %struct.TYPE_2__*, %struct.device*, %struct.clk** }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.freq_tbl* }
%struct.freq_tbl = type { i64, i64 }
%struct.device = type { i32 }

@VIDC_SESSION_TYPE_ENC = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HW is overloaded, needed: %d max: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set clock rate %lu (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_load_scale_clocks(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.freq_tbl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %12 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %13 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.freq_tbl*, %struct.freq_tbl** %15, align 8
  store %struct.freq_tbl* %16, %struct.freq_tbl** %4, align 8
  %17 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %18 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %23 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %22, i64 0
  %24 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %27 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %26, i32 0, i32 4
  %28 = load %struct.clk**, %struct.clk*** %27, align 8
  %29 = getelementptr inbounds %struct.clk*, %struct.clk** %28, i64 0
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  store %struct.clk* %30, %struct.clk** %7, align 8
  %31 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %32 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %31, i32 0, i32 3
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %8, align 8
  %34 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %35 = load i32, i32* @VIDC_SESSION_TYPE_ENC, align 4
  %36 = call i64 @load_per_type(%struct.venus_core* %34, i32 %35)
  %37 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %38 = load i32, i32* @VIDC_SESSION_TYPE_DEC, align 4
  %39 = call i64 @load_per_type(%struct.venus_core* %37, i32 %38)
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %43 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %1
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %52 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %55)
  br label %57

57:                                               ; preds = %48, %1
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %64, i64 %67
  %69 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  br label %97

71:                                               ; preds = %60, %57
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %78, i64 %80
  %82 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %77, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %96

86:                                               ; preds = %76
  %87 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %87, i64 %89
  %91 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %72

96:                                               ; preds = %85, %72
  br label %97

97:                                               ; preds = %96, %63
  %98 = load %struct.clk*, %struct.clk** %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @clk_set_rate(%struct.clk* %98, i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %123

104:                                              ; preds = %97
  %105 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %106 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %105, i32 0, i32 1
  %107 = load %struct.clk*, %struct.clk** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @clk_set_rate(%struct.clk* %107, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %123

113:                                              ; preds = %104
  %114 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %115 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %114, i32 0, i32 0
  %116 = load %struct.clk*, %struct.clk** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @clk_set_rate(%struct.clk* %116, i64 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %123

122:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %129

123:                                              ; preds = %121, %112, %103
  %124 = load %struct.device*, %struct.device** %8, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %122
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @load_per_type(%struct.venus_core*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
