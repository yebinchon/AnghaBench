; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.si4713_device = type { i32, i32 }
%struct.si4713_rnl = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @si4713_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si4713_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.si4713_device*, align 8
  %9 = alloca %struct.si4713_rnl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %12)
  store %struct.si4713_device* %13, %struct.si4713_device** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.si4713_rnl*
  store %struct.si4713_rnl* %15, %struct.si4713_rnl** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %62

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %56 [
    i32 128, label %23
  ]

23:                                               ; preds = %21
  %24 = load %struct.si4713_rnl*, %struct.si4713_rnl** %9, align 8
  %25 = getelementptr inbounds %struct.si4713_rnl, %struct.si4713_rnl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_to_si4713(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %29 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %23
  %33 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @si4713_tx_tune_measure(%struct.si4713_device* %33, i32 %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  br label %62

41:                                               ; preds = %32
  %42 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %43 = call i32 @si4713_update_tune_status(%struct.si4713_device* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %4, align 8
  br label %62

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %52 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.si4713_rnl*, %struct.si4713_rnl** %9, align 8
  %55 = getelementptr inbounds %struct.si4713_rnl, %struct.si4713_rnl* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %21
  %57 = load i32, i32* @ENOIOCTLCMD, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %59, %46, %38, %18
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_to_si4713(i32) #1

declare dso_local i32 @si4713_tx_tune_measure(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @si4713_update_tune_status(%struct.si4713_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
