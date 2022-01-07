; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_trigger_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_trigger_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.phy_led_trigger = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.phy_led_trigger*, i32)* @phy_led_trigger_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_led_trigger_register(%struct.phy_device* %0, %struct.phy_led_trigger* %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.phy_led_trigger*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.phy_led_trigger* %1, %struct.phy_led_trigger** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %5, align 8
  %9 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %5, align 8
  %12 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @phy_speed_to_str(i32 %14)
  %16 = call i32 @phy_led_trigger_format_name(%struct.phy_device* %10, i32 %13, i32 4, i32 %15)
  %17 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %5, align 8
  %18 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %5, align 8
  %21 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.phy_led_trigger*, %struct.phy_led_trigger** %5, align 8
  %24 = getelementptr inbounds %struct.phy_led_trigger, %struct.phy_led_trigger* %23, i32 0, i32 1
  %25 = call i32 @led_trigger_register(%struct.TYPE_2__* %24)
  ret i32 %25
}

declare dso_local i32 @phy_led_trigger_format_name(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_speed_to_str(i32) #1

declare dso_local i32 @led_trigger_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
