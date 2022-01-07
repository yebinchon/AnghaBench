; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32*)* @gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_init(%struct.sd* %0, i32* %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @gpio_set(%struct.sd* %5, i32 %8, i32 15)
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @gpio_set(%struct.sd* %10, i32 %13, i32 15)
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  %19 = call i32 @gpio_set(%struct.sd* %15, i32 %18, i32 15)
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8
  %23 = load i32, i32* %21, align 4
  %24 = call i32 @gpio_set(%struct.sd* %20, i32 %23, i32 15)
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpio_set(%struct.sd* %25, i32 %27, i32 15)
  ret void
}

declare dso_local i32 @gpio_set(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
