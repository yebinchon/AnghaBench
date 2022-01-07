; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.vs6624 = type { i32, %struct.v4l2_ctrl_handler, i32, %struct.TYPE_5__, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VS6624 Chip Enable\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to request GPIO %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vs6624_ops = common dso_local global i32 0, align 4
@vs6624_p1 = common dso_local global i32 0, align 4
@VS6624_MICRO_EN = common dso_local global i32 0, align 4
@VS6624_DIO_EN = common dso_local global i32 0, align 4
@vs6624_p2 = common dso_local global i32 0, align 4
@vs6624_default = common dso_local global i32 0, align 4
@VS6624_HSYNC_SETUP = common dso_local global i32 0, align 4
@vs6624_run_setup = common dso_local global i32 0, align 4
@MAX_FRAME_RATE = common dso_local global i32 0, align 4
@VS6624_DISABLE_FR_DAMPER = common dso_local global i32 0, align 4
@VS6624_FR_NUM_MSB = common dso_local global i32 0, align 4
@VS6624_FR_NUM_LSB = common dso_local global i32 0, align 4
@VS6624_FR_DEN = common dso_local global i32 0, align 4
@vs6624_default_fmt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@vs6624_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @vs6624_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs6624_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.vs6624*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %177

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %177

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 2
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %37 = call i32 @devm_gpio_request_one(%struct.TYPE_7__* %33, i32 %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @v4l_err(%struct.i2c_client* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %177

46:                                               ; preds = %31
  %47 = call i32 @msleep(i32 100)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 2
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.vs6624* @devm_kzalloc(%struct.TYPE_7__* %49, i32 32, i32 %50)
  store %struct.vs6624* %51, %struct.vs6624** %6, align 8
  %52 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %53 = icmp eq %struct.vs6624* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %177

57:                                               ; preds = %46
  %58 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %59 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %58, i32 0, i32 4
  store %struct.v4l2_subdev* %59, %struct.v4l2_subdev** %7, align 8
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %60, %struct.i2c_client* %61, i32* @vs6624_ops)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %64 = load i32, i32* @vs6624_p1, align 4
  %65 = call i32 @vs6624_writeregs(%struct.v4l2_subdev* %63, i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %67 = load i32, i32* @VS6624_MICRO_EN, align 4
  %68 = call i32 @vs6624_write(%struct.v4l2_subdev* %66, i32 %67, i32 2)
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %70 = load i32, i32* @VS6624_DIO_EN, align 4
  %71 = call i32 @vs6624_write(%struct.v4l2_subdev* %69, i32 %70, i32 1)
  %72 = call i32 @usleep_range(i32 10000, i32 11000)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %74 = load i32, i32* @vs6624_p2, align 4
  %75 = call i32 @vs6624_writeregs(%struct.v4l2_subdev* %73, i32 %74)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %77 = load i32, i32* @vs6624_default, align 4
  %78 = call i32 @vs6624_writeregs(%struct.v4l2_subdev* %76, i32 %77)
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %80 = load i32, i32* @VS6624_HSYNC_SETUP, align 4
  %81 = call i32 @vs6624_write(%struct.v4l2_subdev* %79, i32 %80, i32 15)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %83 = load i32, i32* @vs6624_run_setup, align 4
  %84 = call i32 @vs6624_writeregs(%struct.v4l2_subdev* %82, i32 %83)
  %85 = load i32, i32* @MAX_FRAME_RATE, align 4
  %86 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %87 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %90 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %93 = load i32, i32* @VS6624_DISABLE_FR_DAMPER, align 4
  %94 = call i32 @vs6624_write(%struct.v4l2_subdev* %92, i32 %93, i32 0)
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %96 = load i32, i32* @VS6624_FR_NUM_MSB, align 4
  %97 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %98 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 8
  %102 = call i32 @vs6624_write(%struct.v4l2_subdev* %95, i32 %96, i32 %101)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %104 = load i32, i32* @VS6624_FR_NUM_LSB, align 4
  %105 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %106 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 255
  %110 = call i32 @vs6624_write(%struct.v4l2_subdev* %103, i32 %104, i32 %109)
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %112 = load i32, i32* @VS6624_FR_DEN, align 4
  %113 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %114 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 255
  %118 = call i32 @vs6624_write(%struct.v4l2_subdev* %111, i32 %112, i32 %117)
  %119 = load i32, i32* @vs6624_default_fmt, align 4
  %120 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %121 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %125 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 1
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @v4l_info(%struct.i2c_client* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %135)
  %137 = load %struct.vs6624*, %struct.vs6624** %6, align 8
  %138 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %137, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %138, %struct.v4l2_ctrl_handler** %8, align 8
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %140 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %139, i32 4)
  %141 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %142 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %143 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %141, i32* @vs6624_ctrl_ops, i32 %142, i32 0, i32 255, i32 1, i32 135)
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %145 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %146 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %144, i32* @vs6624_ctrl_ops, i32 %145, i32 0, i32 255, i32 1, i32 120)
  %147 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %148 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %149 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %147, i32* @vs6624_ctrl_ops, i32 %148, i32 0, i32 1, i32 1, i32 0)
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %151 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %152 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %150, i32* @vs6624_ctrl_ops, i32 %151, i32 0, i32 1, i32 1, i32 0)
  %153 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %154, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %153, %struct.v4l2_ctrl_handler** %155, align 8
  %156 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %57
  %161 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %162 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %11, align 4
  %164 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %165 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %164)
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %177

167:                                              ; preds = %57
  %168 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %169 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %174 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %173)
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %160, %54, %40, %28, %18
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.vs6624* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @vs6624_writeregs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @vs6624_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
