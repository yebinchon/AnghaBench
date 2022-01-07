; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_gpio.c_mux_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_gpio.c_mux_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32 }
%struct.mux_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@values = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_control*, i32)* @mux_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_gpio_set(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mux_gpio*, align 8
  store %struct.mux_control* %0, %struct.mux_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %7 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mux_gpio* @mux_chip_priv(i32 %8)
  store %struct.mux_gpio* %9, %struct.mux_gpio** %5, align 8
  %10 = load i32*, i32** @values, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BITS_PER_TYPE(i32 %11)
  %13 = call i32 @DECLARE_BITMAP(i32* %10, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** @values, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mux_gpio*, %struct.mux_gpio** %5, align 8
  %18 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mux_gpio*, %struct.mux_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mux_gpio*, %struct.mux_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @values, align 8
  %33 = call i32 @gpiod_set_array_value_cansleep(i32 %21, i32 %26, i32 %31, i32* %32)
  ret i32 0
}

declare dso_local %struct.mux_gpio* @mux_chip_priv(i32) #1

declare dso_local i32 @DECLARE_BITMAP(i32*, i32) #1

declare dso_local i32 @BITS_PER_TYPE(i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
