; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_decoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_BRIGHTNESS = common dso_local global i64 0, align 8
@REG_CONTRAST = common dso_local global i64 0, align 8
@REG_SATURATION = common dso_local global i64 0, align 8
@REG_HUE = common dso_local global i64 0, align 8
@REG_AFE_GAIN_CTRL = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Set Control: ID - %d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tvp514x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.tvp514x_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %8 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %9)
  store %struct.tvp514x_decoder* %10, %struct.tvp514x_decoder** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %111 [
    i32 131, label %19
    i32 130, label %35
    i32 128, label %51
    i32 129, label %67
    i32 132, label %92
  ]

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i64, i64* @REG_BRIGHTNESS, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %20, i64 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %4, align 8
  %29 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* @REG_BRIGHTNESS, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %19
  br label %111

35:                                               ; preds = %1
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i64, i64* @REG_CONTRAST, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %36, i64 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %4, align 8
  %45 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* @REG_CONTRAST, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %35
  br label %111

51:                                               ; preds = %1
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load i64, i64* @REG_SATURATION, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %52, i64 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %4, align 8
  %61 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @REG_SATURATION, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %51
  br label %111

67:                                               ; preds = %1
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 180
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 127, i32* %6, align 4
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, -180
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 128, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %78 = load i64, i64* @REG_HUE, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %77, i64 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %4, align 8
  %86 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* @REG_HUE, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %76
  br label %111

92:                                               ; preds = %1
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load i64, i64* @REG_AFE_GAIN_CTRL, align 8
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 15, i32 12
  %99 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %93, i64 %94, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %4, align 8
  %105 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* @REG_AFE_GAIN_CTRL, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %92
  br label %111

111:                                              ; preds = %1, %110, %91, %66, %50, %34
  %112 = load i32, i32* @debug, align 4
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %114 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @v4l2_dbg(i32 1, i32 %112, %struct.v4l2_subdev* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_write_reg(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
