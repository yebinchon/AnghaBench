; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_chip = type { i32, i64, i64, i64 }
%struct.pm860x_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @pm860x_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_device_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_platform_data*, align 8
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %3, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %4, align 8
  %5 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %6 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %17
  ]

10:                                               ; preds = %2
  %11 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %12 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %13 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %16 = call i32 @device_8606_init(%struct.pm860x_chip* %11, i64 %14, %struct.pm860x_platform_data* %15)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %19 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %20 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %23 = call i32 @device_8607_init(%struct.pm860x_chip* %18, i64 %21, %struct.pm860x_platform_data* %22)
  br label %24

24:                                               ; preds = %2, %17, %10
  %25 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %26 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %31 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %47 [
    i32 128, label %33
    i32 129, label %40
  ]

33:                                               ; preds = %29
  %34 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %35 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %36 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %39 = call i32 @device_8606_init(%struct.pm860x_chip* %34, i64 %37, %struct.pm860x_platform_data* %38)
  br label %47

40:                                               ; preds = %29
  %41 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %42 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %43 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %46 = call i32 @device_8607_init(%struct.pm860x_chip* %41, i64 %44, %struct.pm860x_platform_data* %45)
  br label %47

47:                                               ; preds = %29, %40, %33
  br label %48

48:                                               ; preds = %47, %24
  ret i32 0
}

declare dso_local i32 @device_8606_init(%struct.pm860x_chip*, i64, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_8607_init(%struct.pm860x_chip*, i64, %struct.pm860x_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
