; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.si470x_device = type { i32 (%struct.si470x_device*, i64)*, i32*, i64 }

@READCHAN = common dso_local global i64 0, align 8
@READCHAN_READCHAN = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i32*)* @si470x_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_freq(%struct.si470x_device* %0, i32* %1) #0 {
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %8 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %7, i32 0, i32 0
  %9 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %8, align 8
  %10 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %11 = load i64, i64* @READCHAN, align 8
  %12 = call i32 %9(%struct.si470x_device* %10, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %14 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @READCHAN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @READCHAN_READCHAN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %23 = call i32 @si470x_get_step(%struct.si470x_device* %22)
  %24 = mul nsw i32 %21, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %26 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %27 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %24, %31
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @si470x_get_step(%struct.si470x_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
