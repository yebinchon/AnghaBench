; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tda7432 = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TDA7432_ATTEN_0DB = common dso_local global i32 0, align 4
@TDA7432_MUTE = common dso_local global i32 0, align 4
@TDA7432_LF = common dso_local global i32 0, align 4
@TDA7432_LR = common dso_local global i32 0, align 4
@TDA7432_RF = common dso_local global i32 0, align 4
@TDA7432_RR = common dso_local global i32 0, align 4
@loudness = common dso_local global i32 0, align 4
@TDA7432_LD_ON = common dso_local global i32 0, align 4
@TDA7432_VL = common dso_local global i32 0, align 4
@TDA7432_TN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tda7432_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.tda7432*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.tda7432* @to_state(%struct.v4l2_subdev* %15)
  store %struct.tda7432* %16, %struct.tda7432** %5, align 8
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %139 [
    i32 129, label %20
    i32 128, label %90
    i32 130, label %106
  ]

20:                                               ; preds = %1
  %21 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %22 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %29 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @TDA7432_ATTEN_0DB, align 4
  store i32 %34, i32* %9, align 4
  store i32 %34, i32* %10, align 4
  br label %53

35:                                               ; preds = %20
  %36 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %37 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @TDA7432_ATTEN_0DB, align 4
  store i32 %43, i32* %11, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %45 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @TDA7432_ATTEN_0DB, align 4
  store i32 %50, i32* %11, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @TDA7432_ATTEN_0DB, align 4
  store i32 %51, i32* %9, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %55 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* @TDA7432_MUTE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @TDA7432_MUTE, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @TDA7432_MUTE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @TDA7432_MUTE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %60, %53
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %75 = load i32, i32* @TDA7432_LF, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @tda7432_write(%struct.v4l2_subdev* %74, i32 %75, i32 %76)
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %79 = load i32, i32* @TDA7432_LR, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @tda7432_write(%struct.v4l2_subdev* %78, i32 %79, i32 %80)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %83 = load i32, i32* @TDA7432_RF, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @tda7432_write(%struct.v4l2_subdev* %82, i32 %83, i32 %84)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %87 = load i32, i32* @TDA7432_RR, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @tda7432_write(%struct.v4l2_subdev* %86, i32 %87, i32 %88)
  store i32 0, i32* %2, align 4
  br label %142

90:                                               ; preds = %1
  %91 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 111, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @loudness, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @TDA7432_LD_ON, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %103 = load i32, i32* @TDA7432_VL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @tda7432_write(%struct.v4l2_subdev* %102, i32 %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %142

106:                                              ; preds = %1
  %107 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %108 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %113 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, 8
  br i1 %118, label %119, label %123

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %120, 8
  %122 = sub nsw i32 14, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %106
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %124, 8
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 8
  %129 = sub nsw i32 14, %128
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %132 = load i32, i32* @TDA7432_TN, align 4
  %133 = load i32, i32* %6, align 4
  %134 = shl i32 %133, 4
  %135 = or i32 16, %134
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @tda7432_write(%struct.v4l2_subdev* %131, i32 %132, i32 %137)
  store i32 0, i32* %2, align 4
  br label %142

139:                                              ; preds = %1
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %130, %101, %73
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.tda7432* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @tda7432_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
