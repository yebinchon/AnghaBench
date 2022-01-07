; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_reg_write(%struct.wm831x* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %9 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %12 = load i16, i16* %5, align 2
  %13 = call i32 @wm831x_write(%struct.wm831x* %11, i16 zeroext %12, i32 2, i16* %6)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %15 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_write(%struct.wm831x*, i16 zeroext, i32, i16*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
