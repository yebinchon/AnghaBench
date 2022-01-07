; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MAX_CX231XX_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@iname = common dso_local global i32* null, align 8
@CX231XX_VMUX_TELEVISION = common dso_local global i64 0, align 8
@CX231XX_VMUX_CABLE = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@VID_BLK_I2C_ADDRESS = common dso_local global i32 0, align 4
@GEN_STAT = common dso_local global i32 0, align 4
@FLD_VPRES = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@FLD_HLOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %8, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 0
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %9, align 8
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MAX_CX231XX_INPUT, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %115

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.TYPE_4__* @INPUT(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %115

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %41 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @iname, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.TYPE_4__* @INPUT(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strscpy(i32 %45, i32 %52, i32 4)
  %54 = load i64, i64* @CX231XX_VMUX_TELEVISION, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_4__* @INPUT(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %36
  %61 = load i64, i64* @CX231XX_VMUX_CABLE, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.TYPE_4__* @INPUT(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %36
  %68 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %71
  %84 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %85 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %86 = load i32, i32* @GEN_STAT, align 4
  %87 = call i32 @cx231xx_read_i2c_data(%struct.cx231xx* %84, i32 %85, i32 %86, i32 2, i32* %10, i32 4)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @FLD_VPRES, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %97 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @FLD_HLOCK, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %108 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %71
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %33, %24
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_4__* @INPUT(i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @cx231xx_read_i2c_data(%struct.cx231xx*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
