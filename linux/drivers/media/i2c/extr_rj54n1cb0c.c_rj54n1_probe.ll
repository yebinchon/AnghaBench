; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_17__, %struct.i2c_adapter* }
%struct.TYPE_17__ = type { %struct.rj54n1_pdata* }
%struct.rj54n1_pdata = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rj54n1 = type { i32, i32, %struct.TYPE_16__, i8*, i8*, i8*, %struct.TYPE_15__, i32*, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"RJ54N1CB0C: missing platform data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rj54n1_subdev_ops = common dso_local global i32 0, align 4
@rj54n1_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@clk_div = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@RJ54N1_COLUMN_SKIP = common dso_local global i32 0, align 4
@RJ54N1_ROW_SKIP = common dso_local global i32 0, align 4
@RJ54N1_MAX_WIDTH = common dso_local global i8* null, align 8
@RJ54N1_MAX_HEIGHT = common dso_local global i8* null, align 8
@rj54n1_colour_fmts = common dso_local global i32* null, align 8
@PLL_L = common dso_local global i32 0, align 4
@PLL_N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"powerup\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to get GPIO \22powerup\22: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to get GPIO \22enable\22: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rj54n1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rj54n1*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.rj54n1_pdata*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.rj54n1_pdata*, %struct.rj54n1_pdata** %15, align 8
  %17 = icmp ne %struct.rj54n1_pdata* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_17__* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %244

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.rj54n1_pdata*, %struct.rj54n1_pdata** %27, align 8
  store %struct.rj54n1_pdata* %28, %struct.rj54n1_pdata** %8, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %30 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %31 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %244

39:                                               ; preds = %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rj54n1* @devm_kzalloc(%struct.TYPE_17__* %41, i32 104, i32 %42)
  store %struct.rj54n1* %43, %struct.rj54n1** %6, align 8
  %44 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %45 = icmp ne %struct.rj54n1* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %244

49:                                               ; preds = %39
  %50 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %51 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %50, i32 0, i32 6
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_15__* %51, %struct.i2c_client* %52, i32* @rj54n1_subdev_ops)
  %54 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %55 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %54, i32 0, i32 2
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_16__* %55, i32 4)
  %57 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %58 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %57, i32 0, i32 2
  %59 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %60 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_16__* %58, i32* @rj54n1_ctrl_ops, i32 %59, i32 0, i32 1, i32 1, i32 0)
  %61 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %62 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %61, i32 0, i32 2
  %63 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %64 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_16__* %62, i32* @rj54n1_ctrl_ops, i32 %63, i32 0, i32 1, i32 1, i32 0)
  %65 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %66 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %65, i32 0, i32 2
  %67 = load i32, i32* @V4L2_CID_GAIN, align 4
  %68 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_16__* %66, i32* @rj54n1_ctrl_ops, i32 %67, i32 0, i32 127, i32 1, i32 66)
  %69 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %70 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %69, i32 0, i32 2
  %71 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %72 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_16__* %70, i32* @rj54n1_ctrl_ops, i32 %71, i32 0, i32 1, i32 1, i32 1)
  %73 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %74 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %73, i32 0, i32 2
  %75 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %76 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %77, align 8
  %78 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %79 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %49
  %84 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %85 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %3, align 4
  br label %244

88:                                               ; preds = %49
  %89 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %90 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %89, i32 0, i32 11
  %91 = bitcast %struct.TYPE_13__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 4 bitcast (%struct.TYPE_13__* @clk_div to i8*), i64 8, i1 false)
  %92 = load i32, i32* @RJ54N1_COLUMN_SKIP, align 4
  %93 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %94 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @RJ54N1_ROW_SKIP, align 4
  %97 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %98 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %97, i32 0, i32 10
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load i8*, i8** @RJ54N1_MAX_WIDTH, align 8
  %101 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %102 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @RJ54N1_MAX_HEIGHT, align 8
  %105 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %106 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @RJ54N1_MAX_WIDTH, align 8
  %109 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %110 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @RJ54N1_MAX_HEIGHT, align 8
  %112 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %113 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load i32*, i32** @rj54n1_colour_fmts, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %117 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %116, i32 0, i32 7
  store i32* %115, i32** %117, align 8
  %118 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %119 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %118, i32 0, i32 0
  store i32 1024, i32* %119, align 8
  %120 = load %struct.rj54n1_pdata*, %struct.rj54n1_pdata** %8, align 8
  %121 = getelementptr inbounds %struct.rj54n1_pdata, %struct.rj54n1_pdata* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PLL_L, align 4
  %124 = sdiv i32 %122, %123
  %125 = load i32, i32* @PLL_N, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @clk_div, i32 0, i32 0), align 4
  %128 = add nsw i32 %127, 1
  %129 = sdiv i32 %126, %128
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @clk_div, i32 0, i32 1), align 4
  %131 = add nsw i32 %130, 1
  %132 = sdiv i32 %129, %131
  %133 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %134 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = call i8* @clk_get(%struct.TYPE_17__* %136, i32* null)
  %138 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %139 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %141 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @IS_ERR(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %88
  %146 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %147 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @PTR_ERR(i8* %148)
  store i32 %149, i32* %9, align 4
  br label %239

150:                                              ; preds = %88
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %154 = call i8* @gpiod_get_optional(%struct.TYPE_17__* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %156 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %158 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %150
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %166 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @PTR_ERR(i8* %167)
  %169 = call i32 @dev_info(%struct.TYPE_17__* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %171 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @PTR_ERR(i8* %172)
  store i32 %173, i32* %9, align 4
  br label %234

174:                                              ; preds = %150
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %178 = call i8* @gpiod_get_optional(%struct.TYPE_17__* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %180 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %182 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %181, i32 0, i32 5
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @IS_ERR(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %174
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 0
  %189 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %190 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @PTR_ERR(i8* %191)
  %193 = call i32 @dev_info(%struct.TYPE_17__* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %192)
  %194 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %195 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @PTR_ERR(i8* %196)
  store i32 %197, i32* %9, align 4
  br label %213

198:                                              ; preds = %174
  %199 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %200 = load %struct.rj54n1_pdata*, %struct.rj54n1_pdata** %8, align 8
  %201 = call i32 @rj54n1_video_probe(%struct.i2c_client* %199, %struct.rj54n1_pdata* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %213

205:                                              ; preds = %198
  %206 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %207 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %206, i32 0, i32 6
  %208 = call i32 @v4l2_async_register_subdev(%struct.TYPE_15__* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %213

212:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %244

213:                                              ; preds = %211, %204, %186
  %214 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %215 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %214, i32 0, i32 5
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %220 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %219, i32 0, i32 5
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @gpiod_put(i8* %221)
  br label %223

223:                                              ; preds = %218, %213
  %224 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %225 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %224, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %230 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @gpiod_put(i8* %231)
  br label %233

233:                                              ; preds = %228, %223
  br label %234

234:                                              ; preds = %233, %162
  %235 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %236 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @clk_put(i8* %237)
  br label %239

239:                                              ; preds = %234, %145
  %240 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %241 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %240, i32 0, i32 2
  %242 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_16__* %241)
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %239, %212, %83, %46, %33, %18
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.rj54n1* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_15__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @clk_get(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @gpiod_get_optional(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @rj54n1_video_probe(%struct.i2c_client*, %struct.rj54n1_pdata*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_15__*) #1

declare dso_local i32 @gpiod_put(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
