; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-gpio.c_mdio_mux_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-gpio.c_mdio_mux_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mdio_mux_gpio_state*, i32 }
%struct.mdio_mux_gpio_state = type { %struct.gpio_descs*, i32 }
%struct.gpio_descs = type { i32 }

@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdio_mux_gpio_switch_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mdio_mux_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mdio_mux_gpio_state*, align 8
  %5 = alloca %struct.gpio_descs*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %10 = call %struct.gpio_descs* @gpiod_get_array(%struct.TYPE_4__* %8, i32* null, i32 %9)
  store %struct.gpio_descs* %10, %struct.gpio_descs** %5, align 8
  %11 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %12 = call i64 @IS_ERR(%struct.gpio_descs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.gpio_descs* %15)
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mdio_mux_gpio_state* @devm_kzalloc(%struct.TYPE_4__* %19, i32 16, i32 %20)
  store %struct.mdio_mux_gpio_state* %21, %struct.mdio_mux_gpio_state** %4, align 8
  %22 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %23 = icmp ne %struct.mdio_mux_gpio_state* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %26 = call i32 @gpiod_put_array(%struct.gpio_descs* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %17
  %30 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %31 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %32 = getelementptr inbounds %struct.mdio_mux_gpio_state, %struct.mdio_mux_gpio_state* %31, i32 0, i32 0
  store %struct.gpio_descs* %30, %struct.gpio_descs** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @mdio_mux_gpio_switch_fn, align 4
  %40 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %41 = getelementptr inbounds %struct.mdio_mux_gpio_state, %struct.mdio_mux_gpio_state* %40, i32 0, i32 1
  %42 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %43 = call i32 @mdio_mux_init(%struct.TYPE_4__* %34, i32 %38, i32 %39, i32* %41, %struct.mdio_mux_gpio_state* %42, i32* null)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %29
  %47 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %48 = getelementptr inbounds %struct.mdio_mux_gpio_state, %struct.mdio_mux_gpio_state* %47, i32 0, i32 0
  %49 = load %struct.gpio_descs*, %struct.gpio_descs** %48, align 8
  %50 = call i32 @gpiod_put_array(%struct.gpio_descs* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %29
  %53 = load %struct.mdio_mux_gpio_state*, %struct.mdio_mux_gpio_state** %4, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.mdio_mux_gpio_state* %53, %struct.mdio_mux_gpio_state** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %46, %24, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.gpio_descs* @gpiod_get_array(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_descs*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_descs*) #1

declare dso_local %struct.mdio_mux_gpio_state* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @gpiod_put_array(%struct.gpio_descs*) #1

declare dso_local i32 @mdio_mux_init(%struct.TYPE_4__*, i32, i32, i32*, %struct.mdio_mux_gpio_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
