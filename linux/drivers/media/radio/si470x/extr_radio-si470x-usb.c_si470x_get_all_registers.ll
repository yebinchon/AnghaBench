; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_all_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_all_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, i32* }

@ENTIRE_REPORT = common dso_local global i32 0, align 4
@ENTIRE_REPORT_SIZE = common dso_local global i32 0, align 4
@RADIO_REGISTER_NUM = common dso_local global i8 0, align 1
@RADIO_REGISTER_SIZE = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*)* @si470x_get_all_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_all_registers(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %5 = load i32, i32* @ENTIRE_REPORT, align 4
  %6 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %7 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %11 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %12 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @ENTIRE_REPORT_SIZE, align 4
  %15 = call i32 @si470x_get_report(%struct.si470x_device* %10, i32* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  store i8 0, i8* %4, align 1
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @RADIO_REGISTER_NUM, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %27 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @RADIO_REGISTER_SIZE, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %30, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %28, i64 %35
  %37 = call i32 @get_unaligned_be16(i32* %36)
  %38 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %39 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %25
  %45 = load i8, i8* %4, align 1
  %46 = add i8 %45, 1
  store i8 %46, i8* %4, align 1
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  ret i32 %56
}

declare dso_local i32 @si470x_get_report(%struct.si470x_device*, i32*, i32) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
