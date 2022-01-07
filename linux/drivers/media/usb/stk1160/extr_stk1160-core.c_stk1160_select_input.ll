; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_select_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_select_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i64, i32 }

@stk1160_select_input.gctrl = internal constant [5 x i32] [i32 152, i32 144, i32 136, i32 128, i32 152], align 16
@STK1160_SVIDEO_INPUT = common dso_local global i64 0, align 8
@SAA7115_SVIDEO3 = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE0 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@STK1160_GCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stk1160_select_input(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  %3 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %4 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %5 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @STK1160_SVIDEO_INPUT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SAA7115_SVIDEO3, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %15 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @stk1160_select_input.gctrl, i64 0, i64 0))
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %21 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %20, i32 0, i32 1
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @s_routing, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @v4l2_device_call_all(i32* %21, i32 0, i32 %22, i32 %23, i32 %24, i32 0, i32 0)
  %26 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %27 = load i32, i32* @STK1160_GCTRL, align 4
  %28 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %29 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* @stk1160_select_input.gctrl, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @stk1160_write_reg(%struct.stk1160* %26, i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
