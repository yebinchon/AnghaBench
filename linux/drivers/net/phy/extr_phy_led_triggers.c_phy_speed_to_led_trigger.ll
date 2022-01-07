; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_speed_to_led_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_speed_to_led_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_led_trigger = type { i32 }
%struct.phy_device = type { i32, %struct.phy_led_trigger* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_led_trigger* (%struct.phy_device*, i32)* @phy_speed_to_led_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_led_trigger* @phy_speed_to_led_trigger(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_led_trigger*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %16, i64 %18
  %20 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  %27 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %27, i64 %29
  store %struct.phy_led_trigger* %30, %struct.phy_led_trigger** %3, align 8
  br label %36

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store %struct.phy_led_trigger* null, %struct.phy_led_trigger** %3, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %3, align 8
  ret %struct.phy_led_trigger* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
