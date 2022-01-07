; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_led_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN0 = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIO0 = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_led_on(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i32, i32* @CTRL, align 4
  %6 = call i32 @er32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %39 [
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %17
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @e1000_media_type_fiber, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %17
  %31 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %23
  br label %68

39:                                               ; preds = %1
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @e1000_media_type_fiber, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %39
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @e1000_media_type_copper, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @LEDCTL, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ew32(i32 %60, i32 %63)
  %65 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %38, %10
  %69 = load i32, i32* @CTRL, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @ew32(i32 %69, i32 %70)
  %72 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
