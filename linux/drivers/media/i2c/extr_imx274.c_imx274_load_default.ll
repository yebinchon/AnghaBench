; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_load_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_load_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stimx274 = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@IMX274_DEF_FRAME_RATE = common dso_local global i32 0, align 4
@IMX274_DEF_GAIN = common dso_local global i32 0, align 4
@TEST_PATTERN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stimx274*)* @imx274_load_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_load_default(%struct.stimx274* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stimx274*, align 8
  %4 = alloca i32, align 4
  store %struct.stimx274* %0, %struct.stimx274** %3, align 8
  %5 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %6 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @IMX274_DEF_FRAME_RATE, align 4
  %9 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %10 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @IMX274_DEF_FRAME_RATE, align 4
  %13 = sdiv i32 1000000, %12
  %14 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %15 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* @IMX274_DEF_GAIN, align 4
  %20 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %21 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %26 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @TEST_PATTERN_DISABLED, align 4
  %31 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %32 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %37 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %38 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_8__* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @imx274_set_frame_interval(%struct.stimx274* %36, i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %95

46:                                               ; preds = %1
  %47 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %48 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %52 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_7__* %50, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %95

62:                                               ; preds = %46
  %63 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %64 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %68 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_7__* %66, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %95

78:                                               ; preds = %62
  %79 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %80 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %84 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_7__* %82, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %92, %76, %60, %44
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @imx274_set_frame_interval(%struct.stimx274*, i64) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
