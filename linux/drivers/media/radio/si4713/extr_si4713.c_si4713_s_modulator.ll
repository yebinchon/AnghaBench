; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_s_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_s_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_modulator = type { i64, i32 }
%struct.si4713_device = type { i8*, i8*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* @si4713_s_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_s_modulator(%struct.v4l2_subdev* %0, %struct.v4l2_modulator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_modulator*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_modulator* %1, %struct.v4l2_modulator** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %11)
  store %struct.si4713_device* %12, %struct.si4713_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %14 = icmp ne %struct.si4713_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %94

26:                                               ; preds = %18
  %27 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* null, i8** %8, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %94

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %9, align 8
  %58 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %59 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %46
  %63 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %64 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %65 = call i32 @si4713_read_property(%struct.si4713_device* %63, i32 %64, i32* %10)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %94

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @set_bits(i32 %71, i8* %72, i32 1, i32 2)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @set_bits(i32 %74, i8* %75, i32 2, i32 4)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %78 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @si4713_write_property(%struct.si4713_device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %94

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %46
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %89 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %92 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %83, %68, %42, %23, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i32 @set_bits(i32, i8*, i32, i32) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
