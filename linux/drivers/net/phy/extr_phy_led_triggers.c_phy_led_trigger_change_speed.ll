; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_trigger_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_trigger_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, %struct.phy_led_trigger*, %struct.TYPE_2__*, i32, i32 }
%struct.phy_led_trigger = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"No phy led trigger registered for speed(%d)\0A\00", align 1
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_led_trigger_change_speed(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.phy_led_trigger*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  call void @phy_led_trigger_no_link(%struct.phy_device* %9)
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %66

16:                                               ; preds = %10
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.phy_led_trigger* @phy_speed_to_led_trigger(%struct.phy_device* %17, i64 %20)
  store %struct.phy_led_trigger* %21, %struct.phy_led_trigger** %3, align 8
  %22 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %3, align 8
  %23 = icmp ne %struct.phy_led_trigger* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @netdev_alert(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  call void @phy_led_trigger_no_link(%struct.phy_device* %32)
  br label %66

33:                                               ; preds = %16
  %34 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %3, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %36, align 8
  %38 = icmp ne %struct.phy_led_trigger* %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 1
  %42 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %41, align 8
  %43 = icmp ne %struct.phy_led_trigger* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @LED_FULL, align 4
  %50 = call i32 @led_trigger_event(i32* %48, i32 %49)
  br label %58

51:                                               ; preds = %39
  %52 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 1
  %54 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %53, align 8
  %55 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %54, i32 0, i32 0
  %56 = load i32, i32* @LED_OFF, align 4
  %57 = call i32 @led_trigger_event(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %3, align 8
  %60 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %59, i32 0, i32 0
  %61 = load i32, i32* @LED_FULL, align 4
  %62 = call i32 @led_trigger_event(i32* %60, i32 %61)
  %63 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %3, align 8
  %64 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 1
  store %struct.phy_led_trigger* %63, %struct.phy_led_trigger** %65, align 8
  br label %66

66:                                               ; preds = %8, %15, %24, %58, %33
  ret void
}

declare dso_local void @phy_led_trigger_no_link(%struct.phy_device*) #1

declare dso_local %struct.phy_led_trigger* @phy_speed_to_led_trigger(%struct.phy_device*, i64) #1

declare dso_local i32 @netdev_alert(i32, i8*, i64) #1

declare dso_local i32 @led_trigger_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
