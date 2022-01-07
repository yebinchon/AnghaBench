; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_g_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_g_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_modulator = type { i64, i32, i32, i8*, i8*, i32 }
%struct.si4713_device = type { i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FM Modulator\00", align 1
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_CONTROLS = common dso_local global i32 0, align 4
@FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* @si4713_g_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_g_modulator(%struct.v4l2_subdev* %0, %struct.v4l2_modulator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_modulator*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_modulator* %1, %struct.v4l2_modulator** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %9)
  store %struct.si4713_device* %10, %struct.si4713_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %12 = icmp ne %struct.si4713_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %96

24:                                               ; preds = %16
  %25 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strscpy(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %30 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @V4L2_TUNER_CAP_RDS_CONTROLS, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @FREQ_RANGE_LOW, align 4
  %39 = call i8* @si4713_to_v4l2(i32 %38)
  %40 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @FREQ_RANGE_HIGH, align 4
  %43 = call i8* @si4713_to_v4l2(i32 %42)
  %44 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %47 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %51 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %52 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %53 = call i32 @si4713_read_property(%struct.si4713_device* %51, i32 %52, i32* %8)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @get_status_bit(i32 %59, i32 1, i32 2)
  %61 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %62 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %24
  %64 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %65 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %70 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %74 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %78 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %83 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %94

87:                                               ; preds = %76
  %88 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %81
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %56, %21, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i8* @si4713_to_v4l2(i32) #1

declare dso_local i32 @si4713_read_property(%struct.si4713_device*, i32, i32*) #1

declare dso_local i64 @get_status_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
