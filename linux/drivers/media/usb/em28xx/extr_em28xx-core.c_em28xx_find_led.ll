; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_find_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_find_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_led = type { i64 }
%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.em28xx_led* }

@EM28XX_NUM_LED_ROLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.em28xx_led* @em28xx_find_led(%struct.em28xx* %0, i32 %1) #0 {
  %3 = alloca %struct.em28xx_led*, align 8
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.em28xx_led*, %struct.em28xx_led** %9, align 8
  %11 = icmp ne %struct.em28xx_led* %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %55, %12
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.em28xx_led*, %struct.em28xx_led** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %17, i64 %18
  %20 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.em28xx_led*, %struct.em28xx_led** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %27, i64 %28
  %30 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EM28XX_NUM_LED_ROLES, align 8
  %33 = icmp slt i64 %31, %32
  br label %34

34:                                               ; preds = %23, %13
  %35 = phi i1 [ false, %13 ], [ %33, %23 ]
  br i1 %35, label %36, label %58

36:                                               ; preds = %34
  %37 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.em28xx_led*, %struct.em28xx_led** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %40, i64 %41
  %43 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.em28xx_led*, %struct.em28xx_led** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.em28xx_led, %struct.em28xx_led* %52, i64 %53
  store %struct.em28xx_led* %54, %struct.em28xx_led** %3, align 8
  br label %60

55:                                               ; preds = %36
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %13

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %2
  store %struct.em28xx_led* null, %struct.em28xx_led** %3, align 8
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.em28xx_led*, %struct.em28xx_led** %3, align 8
  ret %struct.em28xx_led* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
