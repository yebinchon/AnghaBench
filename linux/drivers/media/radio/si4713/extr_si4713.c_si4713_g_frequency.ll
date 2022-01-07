; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i32, i64 }
%struct.si4713_device = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @si4713_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_g_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %12)
  store %struct.si4713_device* %13, %struct.si4713_device** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %23 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %28 = call i32 @si4713_tx_tune_status(%struct.si4713_device* %27, i32 0, i32* %8, i32* %9, i32* %10, i32* %11)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %36 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %39 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @si4713_to_v4l2(i32 %40)
  %42 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %31, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @si4713_tx_tune_status(%struct.si4713_device*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @si4713_to_v4l2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
