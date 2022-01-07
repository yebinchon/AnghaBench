; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_led_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_led_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.b43_led = type { i32, i32, i32, i32, i32 }

@LED_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_led*)* @b43_led_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_led_update(%struct.b43_wldev* %0, %struct.b43_led* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_led* %1, %struct.b43_led** %4, align 8
  %7 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %8 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i1 [ false, %12 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %30 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %29, i32 0, i32 3
  %31 = call i64 @atomic_read(i32* %30)
  %32 = load i64, i64* @LED_OFF, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %39 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %67

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %46 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %52 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %55 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @b43_led_turn_on(%struct.b43_wldev* %50, i32 %53, i32 %56)
  br label %67

58:                                               ; preds = %43
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %61 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.b43_led*, %struct.b43_led** %4, align 8
  %64 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @b43_led_turn_off(%struct.b43_wldev* %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %11, %42, %58, %49
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @b43_led_turn_on(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_led_turn_off(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
