; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_start_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_start_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.si4713_usb_device = type { i32* }

@start_seq = common dso_local global %struct.TYPE_3__* null, align 8
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_usb_device*)* @si4713_start_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_start_seq(%struct.si4713_usb_device* %0) #0 {
  %2 = alloca %struct.si4713_usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.si4713_usb_device* %0, %struct.si4713_usb_device** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 63, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %50, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @start_seq, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @start_seq, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @start_seq, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  %29 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @BUFFER_LENGTH, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @memset(i32* %42, i32 0, i32 %46)
  %48 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %2, align 8
  %49 = call i32 @si4713_send_startup_command(%struct.si4713_usb_device* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %11

53:                                               ; preds = %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @si4713_send_startup_command(%struct.si4713_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
