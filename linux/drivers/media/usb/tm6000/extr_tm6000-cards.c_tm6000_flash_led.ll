; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_flash_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_flash_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQ_03_SET_GET_MCU_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tm6000_flash_led(%struct.tm6000_core* %0, i64 %1) #0 {
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i64, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %6 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %16 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %34 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
    i32 132, label %26
    i32 134, label %26
    i32 131, label %26
    i32 133, label %26
  ]

18:                                               ; preds = %14, %14, %14
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %20 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %22 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tm6000_set_reg(%struct.tm6000_core* %19, i32 %20, i32 %24, i32 0)
  br label %34

26:                                               ; preds = %14, %14, %14, %14
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %28 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %29 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %30 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tm6000_set_reg(%struct.tm6000_core* %27, i32 %28, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %14, %26, %18
  br label %56

35:                                               ; preds = %11
  %36 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %37 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %55 [
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
    i32 132, label %47
    i32 134, label %47
    i32 131, label %47
    i32 133, label %47
  ]

39:                                               ; preds = %35, %35, %35
  %40 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %41 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %42 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %43 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tm6000_set_reg(%struct.tm6000_core* %40, i32 %41, i32 %45, i32 1)
  br label %55

47:                                               ; preds = %35, %35, %35, %35
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %49 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %50 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %51 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tm6000_set_reg(%struct.tm6000_core* %48, i32 %49, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %35, %47, %39
  br label %56

56:                                               ; preds = %10, %55, %34
  ret void
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
