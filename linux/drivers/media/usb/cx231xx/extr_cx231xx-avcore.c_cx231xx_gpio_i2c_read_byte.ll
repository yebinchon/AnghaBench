; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_read_byte(%struct.cx231xx* %0, i32* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %79, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %82

12:                                               ; preds = %9
  %13 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %23, i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %40, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %49 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %52 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 0
  %57 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %51, i32 %54, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %12
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 8, %69
  %71 = sub nsw i32 %70, 1
  %72 = shl i32 1, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %12
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %9

82:                                               ; preds = %9
  %83 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %90 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %94 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %98 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %93, i32 %96, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, 255
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_get_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
