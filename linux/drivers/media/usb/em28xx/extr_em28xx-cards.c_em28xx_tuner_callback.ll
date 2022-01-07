; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_i2c_bus = type { %struct.em28xx* }
%struct.em28xx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TUNER_XC2028 = common dso_local global i64 0, align 8
@TUNER_XC5000 = common dso_local global i64 0, align 8
@XC2028_TUNER_RESET = common dso_local global i32 0, align 4
@XC5000_TUNER_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.em28xx_i2c_bus*, align 8
  %11 = alloca %struct.em28xx*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.em28xx_i2c_bus*
  store %struct.em28xx_i2c_bus* %14, %struct.em28xx_i2c_bus** %10, align 8
  %15 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %10, align 8
  %16 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %15, i32 0, i32 0
  %17 = load %struct.em28xx*, %struct.em28xx** %16, align 8
  store %struct.em28xx* %17, %struct.em28xx** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %11, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TUNER_XC2028, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.em28xx*, %struct.em28xx** %11, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TUNER_XC5000, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %47

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @XC2028_TUNER_RESET, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @XC5000_TUNER_RESET, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %47

39:                                               ; preds = %34, %30
  %40 = load %struct.em28xx*, %struct.em28xx** %11, align 8
  %41 = load %struct.em28xx*, %struct.em28xx** %11, align 8
  %42 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @em28xx_gpio_set(%struct.em28xx* %40, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %38, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
