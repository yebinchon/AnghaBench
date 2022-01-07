; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_freq_range = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.r820t_priv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@freq_ranges = common dso_local global %struct.r820t_freq_range* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"set r820t range#%d for frequency %d MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, i32)* @r820t_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_set_mux(%struct.r820t_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r820t_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r820t_freq_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 1000000
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** @freq_ranges, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.r820t_freq_range* %16)
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** @freq_ranges, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %22, i64 %25
  %27 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** @freq_ranges, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %36, i64 %38
  store %struct.r820t_freq_range* %39, %struct.r820t_freq_range** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @tuner_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %44 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %45 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %43, i32 23, i32 %46, i32 8)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %142

52:                                               ; preds = %35
  %53 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %54 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %55 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %53, i32 26, i32 %56, i32 195)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %142

62:                                               ; preds = %52
  %63 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %64 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %65 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @r820t_write_reg(%struct.r820t_priv* %63, i32 27, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %142

72:                                               ; preds = %62
  %73 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %74 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %90 [
    i32 128, label %76
    i32 129, label %76
    i32 130, label %81
    i32 132, label %86
    i32 131, label %91
  ]

76:                                               ; preds = %72, %72
  %77 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %78 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 8
  store i32 %80, i32* %9, align 4
  br label %96

81:                                               ; preds = %72
  %82 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %83 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, 8
  store i32 %85, i32* %9, align 4
  br label %96

86:                                               ; preds = %72
  %87 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %88 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %96

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %72, %90
  %92 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %93 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 8
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %91, %86, %81, %76
  %97 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %97, i32 16, i32 %98, i32 11)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %142

104:                                              ; preds = %96
  %105 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %106 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %111 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %114 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %120 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load %struct.r820t_freq_range*, %struct.r820t_freq_range** %6, align 8
  %123 = getelementptr inbounds %struct.r820t_freq_range, %struct.r820t_freq_range* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  br label %129

128:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %109
  %130 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %130, i32 8, i32 %131, i32 63)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %129
  %138 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %138, i32 9, i32 %139, i32 63)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %135, %102, %70, %60, %50
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @ARRAY_SIZE(%struct.r820t_freq_range*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32) #1

declare dso_local i32 @r820t_write_reg_mask(%struct.r820t_priv*, i32, i32, i32) #1

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
