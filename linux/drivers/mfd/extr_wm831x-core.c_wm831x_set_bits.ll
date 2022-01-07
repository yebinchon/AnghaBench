; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_set_bits(%struct.wm831x* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %11 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %14 = load i16, i16* %6, align 2
  %15 = call i32 @wm831x_reg_locked(%struct.wm831x* %13, i16 zeroext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %19 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i16, i16* %6, align 2
  %22 = load i16, i16* %7, align 2
  %23 = load i16, i16* %8, align 2
  %24 = call i32 @regmap_update_bits(i32 %20, i16 zeroext %21, i16 zeroext %22, i16 zeroext %23)
  store i32 %24, i32* %9, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %30 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_reg_locked(%struct.wm831x*, i16 zeroext) #1

declare dso_local i32 @regmap_update_bits(i32, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
