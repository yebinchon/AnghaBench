; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@IGP01E1000_GMII_SPD = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_IVRT = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_BLINK = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_OFF = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_SHIFT = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_setup_led(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %36 [
    i32 133, label %10
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 135, label %11
    i32 129, label %11
    i32 134, label %11
    i32 128, label %11
  ]

10:                                               ; preds = %1, %1, %1, %1
  br label %78

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %12, i32 %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %80

21:                                               ; preds = %11
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IGP01E1000_GMII_SPD, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %22, i32 %23, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %1, %35
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @e1000_media_type_fiber, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i32, i32* @LEDCTL, align 4
  %44 = call i32 @er32(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @E1000_LEDCTL_LED0_IVRT, align 4
  %49 = load i32, i32* @E1000_LEDCTL_LED0_BLINK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @E1000_LEDCTL_MODE_LED_OFF, align 4
  %57 = load i32, i32* @E1000_LEDCTL_LED0_MODE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @LEDCTL, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ew32(i32 %61, i32 %62)
  br label %77

64:                                               ; preds = %36
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @e1000_media_type_copper, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @LEDCTL, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ew32(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77, %10
  %79 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %33, %19
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
