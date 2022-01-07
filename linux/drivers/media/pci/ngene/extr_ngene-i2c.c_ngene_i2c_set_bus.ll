; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_set_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_set_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*, i32)* @ngene_i2c_set_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngene_i2c_set_bus(%struct.ngene* %0, i32 %1) #0 {
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ngene*, %struct.ngene** %3, align 8
  %6 = getelementptr inbounds %struct.ngene, %struct.ngene* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.ngene*, %struct.ngene** %3, align 8
  %15 = getelementptr inbounds %struct.ngene, %struct.ngene* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %36

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %32 [
    i32 0, label %22
    i32 1, label %27
  ]

22:                                               ; preds = %20
  %23 = load %struct.ngene*, %struct.ngene** %3, align 8
  %24 = call i32 @ngene_command_gpio_set(%struct.ngene* %23, i32 3, i32 0)
  %25 = load %struct.ngene*, %struct.ngene** %3, align 8
  %26 = call i32 @ngene_command_gpio_set(%struct.ngene* %25, i32 2, i32 1)
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.ngene*, %struct.ngene** %3, align 8
  %29 = call i32 @ngene_command_gpio_set(%struct.ngene* %28, i32 2, i32 0)
  %30 = load %struct.ngene*, %struct.ngene** %3, align 8
  %31 = call i32 @ngene_command_gpio_set(%struct.ngene* %30, i32 3, i32 1)
  br label %32

32:                                               ; preds = %20, %27, %22
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ngene*, %struct.ngene** %3, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %19, %12
  ret void
}

declare dso_local i32 @ngene_command_gpio_set(%struct.ngene*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
