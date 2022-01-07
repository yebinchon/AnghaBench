; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adv7183 = type { i32, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_subdev_format = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ADV7183 Reset\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to request GPIO %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ADV7183 Output Enable\00", align 1
@adv7183_ops = common dso_local global i32 0, align 4
@adv7183_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@ADV7183_COMPOSITE4 = common dso_local global i32 0, align 4
@ADV7183_8BIT_OUT = common dso_local global i32 0, align 4
@adv7183_init_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adv7183_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adv7183*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca i32*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %13 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %15 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.TYPE_6__* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %177

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l_info(%struct.i2c_client* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %177

46:                                               ; preds = %25
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.adv7183* @devm_kzalloc(%struct.TYPE_7__* %48, i32 32, i32 %49)
  store %struct.adv7183* %50, %struct.adv7183** %6, align 8
  %51 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %52 = icmp eq %struct.adv7183* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %177

56:                                               ; preds = %46
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %61 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %66 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %70 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %73 = call i64 @devm_gpio_request_one(%struct.TYPE_7__* %68, i32 %71, i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %56
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %78 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @v4l_err(%struct.i2c_client* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %177

83:                                               ; preds = %56
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 1
  %86 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %87 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %90 = call i64 @devm_gpio_request_one(%struct.TYPE_7__* %85, i32 %88, i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %95 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @v4l_err(%struct.i2c_client* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %177

100:                                              ; preds = %83
  %101 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %102 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %101, i32 0, i32 6
  store %struct.v4l2_subdev* %102, %struct.v4l2_subdev** %7, align 8
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %103, %struct.i2c_client* %104, i32* @adv7183_ops)
  %106 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %107 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %106, i32 0, i32 5
  store %struct.v4l2_ctrl_handler* %107, %struct.v4l2_ctrl_handler** %8, align 8
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %109 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %108, i32 4)
  %110 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %111 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %112 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %110, i32* @adv7183_ctrl_ops, i32 %111, i32 -128, i32 127, i32 1, i32 0)
  %113 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %114 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %115 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %113, i32* @adv7183_ctrl_ops, i32 %114, i32 0, i32 255, i32 1, i32 128)
  %116 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %117 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %118 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %116, i32* @adv7183_ctrl_ops, i32 %117, i32 0, i32 65535, i32 1, i32 32896)
  %119 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %120 = load i32, i32* @V4L2_CID_HUE, align 4
  %121 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %119, i32* @adv7183_ctrl_ops, i32 %120, i32 0, i32 65535, i32 1, i32 32896)
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %123, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %122, %struct.v4l2_ctrl_handler** %124, align 8
  %125 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %100
  %130 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  %133 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %134 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %133)
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %177

136:                                              ; preds = %100
  %137 = load i32, i32* @V4L2_STD_PAL, align 4
  %138 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %139 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @ADV7183_COMPOSITE4, align 4
  %141 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %142 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @ADV7183_8BIT_OUT, align 4
  %144 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %145 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = call i32 @mdelay(i32 10)
  %147 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %148 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @gpio_set_value(i32 %149, i32 1)
  %151 = call i32 @mdelay(i32 5)
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %153 = load i32, i32* @adv7183_init_regs, align 4
  %154 = load i32, i32* @adv7183_init_regs, align 4
  %155 = call i32 @ARRAY_SIZE(i32 %154)
  %156 = call i32 @adv7183_writeregs(%struct.v4l2_subdev* %152, i32 %153, i32 %155)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %158 = load %struct.adv7183*, %struct.adv7183** %6, align 8
  %159 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @adv7183_s_std(%struct.v4l2_subdev* %157, i32 %160)
  %162 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i32 720, i32* %163, align 4
  %164 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 576, i32* %165, align 4
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %167 = call i32 @adv7183_set_fmt(%struct.v4l2_subdev* %166, i32* null, %struct.v4l2_subdev_format* %10)
  %168 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %169 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %136
  %173 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %174 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %173)
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %177

176:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %172, %129, %92, %75, %53, %43, %22
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #2

declare dso_local %struct.adv7183* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i64 @devm_gpio_request_one(%struct.TYPE_7__*, i32, i32, i8*) #2

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #2

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #2

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #2

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @gpio_set_value(i32, i32) #2

declare dso_local i32 @adv7183_writeregs(%struct.v4l2_subdev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @adv7183_s_std(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @adv7183_set_fmt(%struct.v4l2_subdev*, i32*, %struct.v4l2_subdev_format*) #2

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
