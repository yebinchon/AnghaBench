; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_pl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }
%struct.ir_raw_timings_pl = type { i32, i32, i32*, i32, i64 }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_gen_pl(%struct.ir_raw_event** %0, i32 %1, %struct.ir_raw_timings_pl* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ir_raw_timings_pl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ir_raw_event** %0, %struct.ir_raw_event*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ir_raw_timings_pl* %2, %struct.ir_raw_timings_pl** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %143

22:                                               ; preds = %5
  %23 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %24 = load %struct.ir_raw_event*, %struct.ir_raw_event** %23, align 8
  %25 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %24, i32 1
  store %struct.ir_raw_event* %25, %struct.ir_raw_event** %23, align 8
  %26 = ptrtoint %struct.ir_raw_event* %24 to i32
  %27 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %28 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @init_ir_raw_event_duration(i32 %26, i32 1, i32 %29)
  %31 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %32 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = sub i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %78, %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %143

47:                                               ; preds = %41
  %48 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %49 = load %struct.ir_raw_event*, %struct.ir_raw_event** %48, align 8
  %50 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %49, i32 1
  store %struct.ir_raw_event* %50, %struct.ir_raw_event** %48, align 8
  %51 = ptrtoint %struct.ir_raw_event* %49 to i32
  %52 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %53 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @init_ir_raw_event_duration(i32 %51, i32 0, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %143

61:                                               ; preds = %47
  %62 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %63 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  %72 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %73 = load %struct.ir_raw_event*, %struct.ir_raw_event** %72, align 8
  %74 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %73, i32 1
  store %struct.ir_raw_event* %74, %struct.ir_raw_event** %72, align 8
  %75 = ptrtoint %struct.ir_raw_event* %73 to i32
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @init_ir_raw_event_duration(i32 %75, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  br label %38

81:                                               ; preds = %38
  br label %128

82:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %122, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %6, align 4
  br label %143

93:                                               ; preds = %87
  %94 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %95 = load %struct.ir_raw_event*, %struct.ir_raw_event** %94, align 8
  %96 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %95, i32 1
  store %struct.ir_raw_event* %96, %struct.ir_raw_event** %94, align 8
  %97 = ptrtoint %struct.ir_raw_event* %95 to i32
  %98 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %99 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @init_ir_raw_event_duration(i32 %97, i32 0, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %8, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %6, align 4
  br label %143

107:                                              ; preds = %93
  %108 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %109 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %117 = load %struct.ir_raw_event*, %struct.ir_raw_event** %116, align 8
  %118 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %117, i32 1
  store %struct.ir_raw_event* %118, %struct.ir_raw_event** %116, align 8
  %119 = ptrtoint %struct.ir_raw_event* %117 to i32
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @init_ir_raw_event_duration(i32 %119, i32 1, i32 %120)
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %83

127:                                              ; preds = %83
  br label %128

128:                                              ; preds = %127, %81
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, -1
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %6, align 4
  br label %143

134:                                              ; preds = %128
  %135 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %136 = load %struct.ir_raw_event*, %struct.ir_raw_event** %135, align 8
  %137 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %136, i32 1
  store %struct.ir_raw_event* %137, %struct.ir_raw_event** %135, align 8
  %138 = ptrtoint %struct.ir_raw_event* %136 to i32
  %139 = load %struct.ir_raw_timings_pl*, %struct.ir_raw_timings_pl** %9, align 8
  %140 = getelementptr inbounds %struct.ir_raw_timings_pl, %struct.ir_raw_timings_pl* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @init_ir_raw_event_duration(i32 %138, i32 0, i32 %141)
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %134, %132, %105, %91, %59, %45, %20
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @init_ir_raw_event_duration(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
