; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov2680_dev = type { i32, i32, %struct.ov2680_ctrls }
%struct.ov2680_ctrls = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov2680_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov2680_dev*, align 8
  %6 = alloca %struct.ov2680_ctrls*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev* %9)
  store %struct.ov2680_dev* %10, %struct.ov2680_dev** %5, align 8
  %11 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %11, i32 0, i32 2
  store %struct.ov2680_ctrls* %12, %struct.ov2680_ctrls** %6, align 8
  %13 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %14 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %110 [
    i32 134, label %22
    i32 131, label %32
    i32 132, label %44
    i32 133, label %54
    i32 128, label %66
    i32 130, label %85
    i32 129, label %104
  ]

22:                                               ; preds = %18
  %23 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ov2680_gain_set(%struct.ov2680_dev* %23, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %18
  %33 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %34 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %35 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @ov2680_gain_set(%struct.ov2680_dev* %33, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %114

44:                                               ; preds = %18
  %45 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @ov2680_exposure_set(%struct.ov2680_dev* %45, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %114

54:                                               ; preds = %18
  %55 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %56 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %57 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ov2680_exposure_set(%struct.ov2680_dev* %55, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %114

66:                                               ; preds = %18
  %67 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %68 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %114

74:                                               ; preds = %66
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %81 = call i32 @ov2680_vflip_enable(%struct.ov2680_dev* %80)
  store i32 %81, i32* %2, align 4
  br label %114

82:                                               ; preds = %74
  %83 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %84 = call i32 @ov2680_vflip_disable(%struct.ov2680_dev* %83)
  store i32 %84, i32* %2, align 4
  br label %114

85:                                               ; preds = %18
  %86 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %87 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %114

93:                                               ; preds = %85
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %100 = call i32 @ov2680_hflip_enable(%struct.ov2680_dev* %99)
  store i32 %100, i32* %2, align 4
  br label %114

101:                                              ; preds = %93
  %102 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %103 = call i32 @ov2680_hflip_disable(%struct.ov2680_dev* %102)
  store i32 %103, i32* %2, align 4
  br label %114

104:                                              ; preds = %18
  %105 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %106 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %107 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ov2680_test_pattern_set(%struct.ov2680_dev* %105, i32 %108)
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %18
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %104, %101, %98, %90, %82, %79, %71, %54, %44, %32, %22, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov2680_gain_set(%struct.ov2680_dev*, i32) #1

declare dso_local i32 @ov2680_exposure_set(%struct.ov2680_dev*, i32) #1

declare dso_local i32 @ov2680_vflip_enable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_vflip_disable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_hflip_enable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_hflip_disable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_test_pattern_set(%struct.ov2680_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
