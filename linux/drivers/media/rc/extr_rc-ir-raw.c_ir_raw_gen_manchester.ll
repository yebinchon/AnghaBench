; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_manchester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_gen_manchester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32, i32 }
%struct.ir_raw_timings_manchester = type { i64, i64, i64, i64, i64 }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %0, i32 %1, %struct.ir_raw_timings_manchester* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ir_raw_event**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ir_raw_timings_manchester*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ir_raw_event** %0, %struct.ir_raw_event*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ir_raw_timings_manchester* %2, %struct.ir_raw_timings_manchester** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub i32 %17, 1
  %19 = call i32 @BIT_ULL(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %21 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %183

30:                                               ; preds = %24
  %31 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %32 = load %struct.ir_raw_event*, %struct.ir_raw_event** %31, align 8
  %33 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %34 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %32, i32 1, i64 %35)
  %37 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %38 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %183

47:                                               ; preds = %41
  %48 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %49 = load %struct.ir_raw_event*, %struct.ir_raw_event** %48, align 8
  %50 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %49, i32 1
  store %struct.ir_raw_event* %50, %struct.ir_raw_event** %48, align 8
  %51 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %52 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %50, i32 0, i64 %53)
  br label %55

55:                                               ; preds = %47, %30
  br label %60

56:                                               ; preds = %5
  %57 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %58 = load %struct.ir_raw_event*, %struct.ir_raw_event** %57, align 8
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %58, i32 -1
  store %struct.ir_raw_event* %59, %struct.ir_raw_event** %57, align 8
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %126, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %140

69:                                               ; preds = %67
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %77 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %80, %69
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %88 = load %struct.ir_raw_event*, %struct.ir_raw_event** %87, align 8
  %89 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %98 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %101 = load %struct.ir_raw_event*, %struct.ir_raw_event** %100, align 8
  %102 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %121

107:                                              ; preds = %85
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, -1
  store i32 %109, i32* %8, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %178

112:                                              ; preds = %107
  %113 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %114 = load %struct.ir_raw_event*, %struct.ir_raw_event** %113, align 8
  %115 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %114, i32 1
  store %struct.ir_raw_event* %115, %struct.ir_raw_event** %113, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %118 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %115, i32 %116, i64 %119)
  br label %121

121:                                              ; preds = %112, %96
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %8, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %178

126:                                              ; preds = %121
  %127 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %128 = load %struct.ir_raw_event*, %struct.ir_raw_event** %127, align 8
  %129 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %128, i32 1
  store %struct.ir_raw_event* %129, %struct.ir_raw_event** %127, align 8
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %135 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %129, i32 %133, i64 %136)
  %138 = load i32, i32* %13, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %61

140:                                              ; preds = %67
  %141 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %142 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %177

145:                                              ; preds = %140
  %146 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %147 = load %struct.ir_raw_event*, %struct.ir_raw_event** %146, align 8
  %148 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %145
  %152 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %153 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %156 = load %struct.ir_raw_event*, %struct.ir_raw_event** %155, align 8
  %157 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %154
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  br label %176

162:                                              ; preds = %145
  %163 = load i32, i32* %8, align 4
  %164 = add i32 %163, -1
  store i32 %164, i32* %8, align 4
  %165 = icmp ne i32 %163, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  br label %178

167:                                              ; preds = %162
  %168 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %169 = load %struct.ir_raw_event*, %struct.ir_raw_event** %168, align 8
  %170 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %169, i32 1
  store %struct.ir_raw_event* %170, %struct.ir_raw_event** %168, align 8
  %171 = load %struct.ir_raw_timings_manchester*, %struct.ir_raw_timings_manchester** %9, align 8
  %172 = getelementptr inbounds %struct.ir_raw_timings_manchester, %struct.ir_raw_timings_manchester* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %170, i32 0, i64 %173)
  br label %175

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %151
  br label %177

177:                                              ; preds = %176, %140
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %177, %166, %125, %111
  %179 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %7, align 8
  %180 = load %struct.ir_raw_event*, %struct.ir_raw_event** %179, align 8
  %181 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %180, i32 1
  store %struct.ir_raw_event* %181, %struct.ir_raw_event** %179, align 8
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %178, %45, %28
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @init_ir_raw_event_duration(%struct.ir_raw_event*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
