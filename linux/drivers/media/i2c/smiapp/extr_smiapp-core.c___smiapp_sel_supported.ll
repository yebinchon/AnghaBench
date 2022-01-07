; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_sel_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_sel_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_selection = type { i32, i32 }
%struct.smiapp_sensor = type { i32*, %struct.smiapp_subdev*, %struct.smiapp_subdev*, %struct.smiapp_subdev*, %struct.smiapp_subdev* }
%struct.smiapp_subdev = type { i32 }

@SMIAPP_PA_PAD_SRC = common dso_local global i32 0, align 4
@SMIAPP_PAD_SRC = common dso_local global i32 0, align 4
@SMIAPP_PAD_SINK = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_SCALING_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_SCALING_CAPABILITY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_selection*)* @__smiapp_sel_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smiapp_sel_supported(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_selection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_selection*, align 8
  %6 = alloca %struct.smiapp_sensor*, align 8
  %7 = alloca %struct.smiapp_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_selection* %1, %struct.v4l2_subdev_selection** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %8)
  store %struct.smiapp_sensor* %9, %struct.smiapp_sensor** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %10)
  store %struct.smiapp_subdev* %11, %struct.smiapp_subdev** %7, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %117 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %66
    i32 132, label %82
    i32 131, label %82
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %17 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %18 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %17, i32 0, i32 3
  %19 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %18, align 8
  %20 = icmp eq %struct.smiapp_subdev* %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMIAPP_PA_PAD_SRC, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %120

28:                                               ; preds = %21, %15
  %29 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %30 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %31 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %30, i32 0, i32 4
  %32 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %31, align 8
  %33 = icmp eq %struct.smiapp_subdev* %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SMIAPP_PAD_SRC, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %120

41:                                               ; preds = %34, %28
  %42 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %43 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %44 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %43, i32 0, i32 1
  %45 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %44, align 8
  %46 = icmp eq %struct.smiapp_subdev* %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SMIAPP_PAD_SINK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %55 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %120

63:                                               ; preds = %53, %47, %41
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %120

66:                                               ; preds = %2
  %67 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %68 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %69 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %68, i32 0, i32 3
  %70 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %69, align 8
  %71 = icmp eq %struct.smiapp_subdev* %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SMIAPP_PA_PAD_SRC, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %120

79:                                               ; preds = %72, %66
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %120

82:                                               ; preds = %2, %2
  %83 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %87 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %120

93:                                               ; preds = %82
  %94 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %95 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %96 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %95, i32 0, i32 2
  %97 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %96, align 8
  %98 = icmp eq %struct.smiapp_subdev* %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %120

100:                                              ; preds = %93
  %101 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %7, align 8
  %102 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %103 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %102, i32 0, i32 1
  %104 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %103, align 8
  %105 = icmp eq %struct.smiapp_subdev* %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %108 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @SMIAPP_LIMIT_SCALING_CAPABILITY, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SMIAPP_SCALING_CAPABILITY_NONE, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %120

116:                                              ; preds = %106, %100
  br label %117

117:                                              ; preds = %2, %116
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %115, %99, %90, %79, %78, %63, %62, %40, %27
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
