; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_joystick_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_joystick_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.lis3lv02d* }
%struct.lis3lv02d = type { i64, i32, i64, i64, i64 }

@WAI_8B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @lis3lv02d_joystick_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis3lv02d_joystick_open(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.lis3lv02d*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %4 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %4, i32 0, i32 0
  %6 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  store %struct.lis3lv02d* %6, %struct.lis3lv02d** %3, align 8
  %7 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %8 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %13 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %18 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %23 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WAI_8B, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %29 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %34 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %33, i32 0, i32 1
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  br label %36

36:                                               ; preds = %32, %27, %21, %16
  %37 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %38 = call i32 @lis3lv02d_joystick_poll(%struct.input_polled_dev* %37)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @lis3lv02d_joystick_poll(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
