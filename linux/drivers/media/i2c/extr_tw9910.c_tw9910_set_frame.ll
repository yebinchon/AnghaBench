; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LEN = common dso_local global i32 0, align 4
@OPFORM = common dso_local global i32 0, align 4
@RTSEL_VLOSS = common dso_local global i32 0, align 4
@RTSEL_HLOCK = common dso_local global i32 0, align 4
@RTSEL_SLOCK = common dso_local global i32 0, align 4
@RTSEL_VLOCK = common dso_local global i32 0, align 4
@RTSEL_MONO = common dso_local global i32 0, align 4
@RTSEL_DET50 = common dso_local global i32 0, align 4
@RTSEL_FIELD = common dso_local global i32 0, align 4
@RTSEL_RTCO = common dso_local global i32 0, align 4
@VBICNTL = common dso_local global i32 0, align 4
@RTSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*, i32*)* @tw9910_set_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_set_frame(%struct.v4l2_subdev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.tw9910_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %14)
  store %struct.tw9910_priv* %15, %struct.tw9910_priv** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %19 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_5__* @tw9910_select_norm(i32 %20, i32 %22, i32 %24)
  %26 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %27 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %26, i32 0, i32 0
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %29 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %114

33:                                               ; preds = %3
  %34 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %35 = call i32 @tw9910_reset(%struct.i2c_client* %34)
  store i32 0, i32* %11, align 4
  %36 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %37 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @LEN, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %46 = load i32, i32* @OPFORM, align 4
  %47 = load i32, i32* @LEN, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @tw9910_mask_set(%struct.i2c_client* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %114

53:                                               ; preds = %44
  %54 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %55 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %75 [
    i32 128, label %59
    i32 133, label %61
    i32 130, label %63
    i32 129, label %65
    i32 132, label %67
    i32 135, label %69
    i32 134, label %71
    i32 131, label %73
  ]

59:                                               ; preds = %53
  %60 = load i32, i32* @RTSEL_VLOSS, align 4
  store i32 %60, i32* %11, align 4
  br label %76

61:                                               ; preds = %53
  %62 = load i32, i32* @RTSEL_HLOCK, align 4
  store i32 %62, i32* %11, align 4
  br label %76

63:                                               ; preds = %53
  %64 = load i32, i32* @RTSEL_SLOCK, align 4
  store i32 %64, i32* %11, align 4
  br label %76

65:                                               ; preds = %53
  %66 = load i32, i32* @RTSEL_VLOCK, align 4
  store i32 %66, i32* %11, align 4
  br label %76

67:                                               ; preds = %53
  %68 = load i32, i32* @RTSEL_MONO, align 4
  store i32 %68, i32* %11, align 4
  br label %76

69:                                               ; preds = %53
  %70 = load i32, i32* @RTSEL_DET50, align 4
  store i32 %70, i32* %11, align 4
  br label %76

71:                                               ; preds = %53
  %72 = load i32, i32* @RTSEL_FIELD, align 4
  store i32 %72, i32* %11, align 4
  br label %76

73:                                               ; preds = %53
  %74 = load i32, i32* @RTSEL_RTCO, align 4
  store i32 %74, i32* %11, align 4
  br label %76

75:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %73, %71, %69, %67, %65, %63, %61, %59
  %77 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %78 = load i32, i32* @VBICNTL, align 4
  %79 = load i32, i32* @RTSEL_MASK, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @tw9910_mask_set(%struct.i2c_client* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %114

85:                                               ; preds = %76
  %86 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %87 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %88 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @tw9910_set_scale(%struct.i2c_client* %86, %struct.TYPE_5__* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %114

94:                                               ; preds = %85
  %95 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %96 = call i32 @tw9910_set_hsync(%struct.i2c_client* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %114

100:                                              ; preds = %94
  %101 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %102 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %108 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %120

114:                                              ; preds = %99, %93, %84, %52, %32
  %115 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %116 = call i32 @tw9910_reset(%struct.i2c_client* %115)
  %117 = load %struct.tw9910_priv*, %struct.tw9910_priv** %9, align 8
  %118 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %117, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %118, align 8
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %114, %100
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_5__* @tw9910_select_norm(i32, i32, i32) #1

declare dso_local i32 @tw9910_reset(%struct.i2c_client*) #1

declare dso_local i32 @tw9910_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @tw9910_set_scale(%struct.i2c_client*, %struct.TYPE_5__*) #1

declare dso_local i32 @tw9910_set_hsync(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
