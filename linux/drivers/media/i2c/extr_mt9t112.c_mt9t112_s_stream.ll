; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t112_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VGA_WIDTH = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@MT9T112_FLAG_PCLK_RISING_EDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"format : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"size   : %d x %d\0A\00", align 1
@EXT_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9t112_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9t112_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client* %12)
  store %struct.mt9t112_priv* %13, %struct.mt9t112_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @VGA_WIDTH, align 4
  %19 = load i32, i32* @VGA_HEIGHT, align 4
  %20 = call i32 @mt9t112_set_a_frame_size(%struct.i2c_client* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %109

22:                                               ; preds = %2
  %23 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %24 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @MT9T112_FLAG_PCLK_RISING_EDGE, align 4
  %29 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %30 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = call i32 @mt9t112_init_camera(%struct.i2c_client* %39)
  %41 = call i32 @ECHECKER(i32 %38, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mt9t112_reg_write(i32 %42, %struct.i2c_client* %43, i32 15392, i32 %44)
  %46 = call i32 @mdelay(i32 5)
  %47 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %48 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %27, %22
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = call i32 @VAR(i32 26, i32 7)
  %53 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %54 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mt9t112_mcu_write(i32 %50, %struct.i2c_client* %51, i32 %52, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = call i32 @VAR(i32 26, i32 9)
  %62 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %63 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mt9t112_mcu_write(i32 %59, %struct.i2c_client* %60, i32 %61, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = call i32 @VAR8(i32 1, i32 0)
  %71 = call i32 @mt9t112_mcu_write(i32 %68, %struct.i2c_client* %69, i32 %70, i32 6)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %73 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %74 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %78 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mt9t112_set_a_frame_size(%struct.i2c_client* %72, i32 %76, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %84 = call i32 @mt9t112_auto_focus_trigger(%struct.i2c_client* %83)
  %85 = call i32 @ECHECKER(i32 %82, i32 %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %89 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %97 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %7, align 8
  %101 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %106 = load i32, i32* @EXT_CLOCK, align 4
  %107 = call i32 @CLOCK_INFO(%struct.i2c_client* %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %49, %16
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_set_a_frame_size(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ECHECKER(i32, i32) #1

declare dso_local i32 @mt9t112_init_camera(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_reg_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt9t112_mcu_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @VAR(i32, i32) #1

declare dso_local i32 @VAR8(i32, i32) #1

declare dso_local i32 @mt9t112_auto_focus_trigger(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @CLOCK_INFO(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
