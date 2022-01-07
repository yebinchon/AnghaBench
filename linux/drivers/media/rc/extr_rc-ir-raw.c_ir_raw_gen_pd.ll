; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }
%struct.ir_raw_timings_pd = type { i32, i32*, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_gen_pd(%struct.ir_raw_event** %0, i32 %1, %struct.ir_raw_timings_pd* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ir_raw_timings_pd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ir_raw_event** %0, %struct.ir_raw_event*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ir_raw_timings_pd* %2, %struct.ir_raw_timings_pd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %16 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %21 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %22 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %25 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %20, i32* %8, i64 %23, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %111

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %35 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = sub i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %66, %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %46 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %48, %49
  %51 = and i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %56 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %57 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %55, i32* %8, i64 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %111

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %12, align 4
  br label %41

69:                                               ; preds = %41
  br label %101

70:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %77 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  %84 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %85 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %86 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %84, i32* %8, i64 %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %111

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %71

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %103 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %104 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ir_raw_timings_pd*, %struct.ir_raw_timings_pd** %9, align 8
  %107 = getelementptr inbounds %struct.ir_raw_timings_pd, %struct.ir_raw_timings_pd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %102, i32* %8, i64 %105, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %101, %92, %63, %30
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event**, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
