; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_gpio_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_gpio_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.s5k5baf_gpio* }
%struct.s5k5baf_gpio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32)* @s5k5baf_gpio_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_gpio_deassert(%struct.s5k5baf* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5k5baf_gpio*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %7 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %6, i32 0, i32 0
  %8 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %8, i64 %10
  store %struct.s5k5baf_gpio* %11, %struct.s5k5baf_gpio** %5, align 8
  %12 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %5, align 8
  %16 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @gpio_set_value(i32 %14, i32 %20)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
