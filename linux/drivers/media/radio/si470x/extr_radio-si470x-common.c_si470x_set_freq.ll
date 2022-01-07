; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.si470x_device = type { i64 }

@bands = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_set_freq(%struct.si470x_device* %0, i32 %1) #0 {
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %8 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %15 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %16 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clamp(i32 %6, i32 %13, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %24 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %25 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %22, %29
  %31 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %32 = call i32 @si470x_get_step(%struct.si470x_device* %31)
  %33 = udiv i32 %30, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %5, align 2
  %35 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %36 = load i16, i16* %5, align 2
  %37 = call i32 @si470x_set_chan(%struct.si470x_device* %35, i16 zeroext %36)
  ret i32 %37
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @si470x_get_step(%struct.si470x_device*) #1

declare dso_local i32 @si470x_set_chan(%struct.si470x_device*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
