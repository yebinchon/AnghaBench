; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_write_ack(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %13, i32 %16, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %41, i32 %44, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %59 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %63 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %58, i32 %61, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %77 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %76, i32 %79, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %91 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %95 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %96 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %94, i32 %97, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
