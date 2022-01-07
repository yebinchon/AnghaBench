; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i32, i32 }

@POWER_ON = common dso_local global i32 0, align 4
@POWER_OFF = common dso_local global i32 0, align 4
@DEFAULT_FREQUENCY = common dso_local global i32 0, align 4
@DEFAULT_TUNE_RNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_initialize(%struct.si4713_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  %5 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %6 = load i32, i32* @POWER_ON, align 4
  %7 = call i32 @si4713_set_power_state(%struct.si4713_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %14 = call i32 @si4713_checkrev(%struct.si4713_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %12
  %20 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %21 = load i32, i32* @POWER_OFF, align 4
  %22 = call i32 @si4713_set_power_state(%struct.si4713_device* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load i32, i32* @DEFAULT_FREQUENCY, align 4
  %29 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %30 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %32 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @DEFAULT_TUNE_RNL, align 4
  %34 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %35 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %25, %17, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @si4713_set_power_state(%struct.si4713_device*, i32) #1

declare dso_local i32 @si4713_checkrev(%struct.si4713_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
