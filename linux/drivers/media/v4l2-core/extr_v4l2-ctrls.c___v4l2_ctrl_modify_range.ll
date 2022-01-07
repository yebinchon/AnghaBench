; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c___v4l2_ctrl_modify_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c___v4l2_ctrl_modify_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i64, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64*, i64* }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lockdep_assert_held(i32 %19)
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %46 [
    i32 134, label %24
    i32 133, label %24
    i32 135, label %24
    i32 131, label %24
    i32 132, label %24
    i32 136, label %24
    i32 128, label %24
    i32 130, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %165

32:                                               ; preds = %24
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @check_range(i32 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %165

45:                                               ; preds = %32
  br label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %165

49:                                               ; preds = %45
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67, %61, %55, %49
  store i32 1, i32* %13, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %73, %67
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %88 = call i32 @cur_to_new(%struct.v4l2_ctrl* %87)
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %90 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %90, i32 0, i32 6
  %92 = bitcast %struct.TYPE_6__* %91 to { i64*, i64* }*
  %93 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %92, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = call i64 @validate_new(%struct.v4l2_ctrl* %89, i64* %94, i64* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %86
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 133
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  store i64 %105, i64* %109, align 8
  br label %116

110:                                              ; preds = %99
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %104
  br label %117

117:                                              ; preds = %116, %86
  %118 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 133
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %127, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %12, align 4
  br label %148

135:                                              ; preds = %117
  %136 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %140, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %135, %122
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %153 = load i32, i32* @V4L2_EVENT_CTRL_CH_RANGE, align 4
  %154 = call i32 @set_ctrl(i32* null, %struct.v4l2_ctrl* %152, i32 %153)
  store i32 %154, i32* %14, align 4
  br label %163

155:                                              ; preds = %148
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %160 = load i32, i32* @V4L2_EVENT_CTRL_CH_RANGE, align 4
  %161 = call i32 @send_event(i32* null, %struct.v4l2_ctrl* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %155
  br label %163

163:                                              ; preds = %162, %151
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %46, %43, %29
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @lockdep_assert_held(i32) #1

declare dso_local i32 @check_range(i32, i64, i64, i64, i64) #1

declare dso_local i32 @cur_to_new(%struct.v4l2_ctrl*) #1

declare dso_local i64 @validate_new(%struct.v4l2_ctrl*, i64*, i64*) #1

declare dso_local i32 @set_ctrl(i32*, %struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @send_event(i32*, %struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
