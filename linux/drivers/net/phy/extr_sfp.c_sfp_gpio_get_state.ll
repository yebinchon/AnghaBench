; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_gpio_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_gpio_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32* }

@GPIO_MAX = common dso_local global i32 0, align 4
@gpio_flags = common dso_local global i64* null, align 8
@GPIOD_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*)* @sfp_gpio_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_gpio_get_state(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GPIO_MAX, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load i64*, i64** @gpio_flags, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GPIOD_IN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = load %struct.sfp*, %struct.sfp** %2, align 8
  %20 = getelementptr inbounds %struct.sfp, %struct.sfp* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18, %10
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.sfp*, %struct.sfp** %2, align 8
  %30 = getelementptr inbounds %struct.sfp, %struct.sfp* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpiod_get_value_cansleep(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %28
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
