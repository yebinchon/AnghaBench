; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i64, i32 }

@WM831X_SECURITY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Registers unlocked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_reg_unlock(%struct.wm831x* %0) #0 {
  %2 = alloca %struct.wm831x*, align 8
  %3 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %2, align 8
  %4 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %5 = load i32, i32* @WM831X_SECURITY_KEY, align 4
  %6 = call i32 @wm831x_reg_write(%struct.wm831x* %4, i32 %5, i32 38678)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %11 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_vdbg(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %15 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %18 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %25 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %27 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %9, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
