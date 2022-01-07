; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_touch_display_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_touch_display_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i64, i32, i32, i32 }
%struct.timer_list = type { i32 }

@ttimer = common dso_local global i32 0, align 4
@IMON_DISPLAY_TYPE_VGA = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ictx = common dso_local global %struct.imon_context* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @imon_touch_display_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imon_touch_display_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.imon_context*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %5 = ptrtoint %struct.imon_context* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @ttimer, align 4
  %8 = call %struct.imon_context* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.imon_context* %8, %struct.imon_context** %3, align 8
  %9 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %10 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IMON_DISPLAY_TYPE_VGA, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %17 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ABS_X, align 4
  %20 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %21 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @input_report_abs(i32 %18, i32 %19, i32 %22)
  %24 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %25 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ABS_Y, align 4
  %28 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %29 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @input_report_abs(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %33 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BTN_TOUCH, align 4
  %36 = call i32 @input_report_key(i32 %34, i32 %35, i32 0)
  %37 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @input_sync(i32 %39)
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.imon_context* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
