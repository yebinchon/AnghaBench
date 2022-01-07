; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_set_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.wm8775_state = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@R21 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @wm8775_set_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8775_set_audio(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8775_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.wm8775_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.wm8775_state* %12, %struct.wm8775_state** %5, align 8
  %13 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %14 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 0, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %21 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %27 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 65536, %32
  %34 = call i32 @min(i32 %33, i32 32768)
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  %37 = ashr i32 %36, 23
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @min(i32 %38, i32 32768)
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = ashr i32 %41, 23
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45, %2
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load i32, i32* @R21, align 4
  %51 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %52 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 192, %53
  %55 = call i32 @wm8775_write(%struct.v4l2_subdev* %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %45
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = load i32, i32* @R14, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 256
  %61 = call i32 @wm8775_write(%struct.v4l2_subdev* %57, i32 %58, i32 %60)
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %63 = load i32, i32* @R15, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, 256
  %66 = call i32 @wm8775_write(%struct.v4l2_subdev* %62, i32 %63, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %56
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load i32, i32* @R21, align 4
  %72 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %73 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @wm8775_write(%struct.v4l2_subdev* %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %69, %56
  ret void
}

declare dso_local %struct.wm8775_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wm8775_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
