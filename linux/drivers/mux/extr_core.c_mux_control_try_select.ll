; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_try_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_control_try_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mux_control_try_select(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mux_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mux_control* %0, %struct.mux_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %8 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %7, i32 0, i32 0
  %9 = call i64 @down_trylock(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @__mux_control_select(%struct.mux_control* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %22 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %21, i32 0, i32 0
  %23 = call i32 @up(i32* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @__mux_control_select(%struct.mux_control*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
