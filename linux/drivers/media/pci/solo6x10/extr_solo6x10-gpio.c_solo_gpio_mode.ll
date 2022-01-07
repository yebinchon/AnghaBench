; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-gpio.c_solo_gpio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-gpio.c_solo_gpio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_GPIO_CONFIG_0 = common dso_local global i32 0, align 4
@SOLO_GPIO_CONFIG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*, i32, i32)* @solo_gpio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_gpio_mode(%struct.solo_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %10 = load i32, i32* @SOLO_GPIO_CONFIG_0, align 4
  %11 = call i32 @solo_reg_read(%struct.solo_dev* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  %25 = shl i32 3, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 1
  %33 = shl i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %41 = load i32, i32* @SOLO_GPIO_CONFIG_0, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @solo_reg_write(%struct.solo_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %45 = load i32, i32* @SOLO_GPIO_CONFIG_1, align 4
  %46 = call i32 @solo_reg_read(%struct.solo_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %81, %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 16
  %53 = zext i32 %52 to i64
  %54 = shl i64 1, %53
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = and i64 %54, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %81

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = xor i64 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = and i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %80

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = or i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %72, %63
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, -65536
  store i32 %86, i32* %8, align 4
  %87 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %88 = load i32, i32* @SOLO_GPIO_CONFIG_1, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @solo_reg_write(%struct.solo_dev* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
