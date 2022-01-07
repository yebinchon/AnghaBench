; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_init_camera.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_init_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, %struct.TYPE_4__, %struct.em28xx_v4l2*, %struct.i2c_adapter*, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32 }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v011_platform_data = type { i32 }
%struct.i2c_board_info = type { i8*, i32, i32, %struct.mt9v011_platform_data* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"mt9v011\00", align 1
@EM28XX_XCLK_FREQUENCY_4_3MHZ = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EM28XX_VINMODE_RGB8_GRBG = common dso_local global i32 0, align 4
@EM28XX_VINMODE_RGB8_BGGR = common dso_local global i32 0, align 4
@EM28XX_XCLK_FREQUENCY_48MHZ = common dso_local global i32 0, align 4
@EM28XX_VINMODE_YUV422_UYVY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ov2640\00", align 1
@I2C_CLIENT_SCCB = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@EM28XX_XCLK_FREQUENCY_24MHZ = common dso_local global i32 0, align 4
@EM28XX_VINMODE_YUV422_YUYV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_init_camera(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.em28xx_v4l2*, align 8
  %7 = alloca %struct.mt9v011_platform_data, align 4
  %8 = alloca %struct.i2c_board_info, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.i2c_board_info, align 8
  %11 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 5
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i64 %17
  store %struct.i2c_client* %18, %struct.i2c_client** %4, align 8
  %19 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %20, align 8
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i64 %24
  store %struct.i2c_adapter* %25, %struct.i2c_adapter** %5, align 8
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 3
  %28 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %27, align 8
  store %struct.em28xx_v4l2* %28, %struct.em28xx_v4l2** %6, align 8
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %165 [
    i32 130, label %32
    i32 132, label %75
    i32 131, label %87
    i32 128, label %110
    i32 129, label %164
  ]

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 8
  %38 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 3
  store %struct.mt9v011_platform_data* %7, %struct.mt9v011_platform_data** %39, align 8
  %40 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %41 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %40, i32 0, i32 0
  store i32 640, i32* %41, align 4
  %42 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %43 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %42, i32 0, i32 1
  store i32 480, i32* %43, align 4
  %44 = load i32, i32* @EM28XX_XCLK_FREQUENCY_4_3MHZ, align 4
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %49 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %50 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %51 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @em28xx_write_reg(%struct.em28xx* %48, i32 %49, i32 %53)
  %55 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %56 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %55, i32 0, i32 2
  store i32 4300000, i32* %56, align 4
  %57 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %58 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.mt9v011_platform_data, %struct.mt9v011_platform_data* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %62 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %61, i32 0, i32 5
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %64 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32* %62, %struct.i2c_adapter* %63, %struct.i2c_board_info* %8, i32* null)
  %65 = icmp eq %struct.v4l2_subdev* null, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %32
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %169

69:                                               ; preds = %32
  %70 = load i32, i32* @EM28XX_VINMODE_RGB8_GRBG, align 4
  %71 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %72 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %74 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  br label %168

75:                                               ; preds = %1
  %76 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %77 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %76, i32 0, i32 0
  store i32 1280, i32* %77, align 4
  %78 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %79 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %78, i32 0, i32 1
  store i32 1024, i32* %79, align 4
  %80 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %81 = call i32 @em28xx_initialize_mt9m001(%struct.em28xx* %80)
  %82 = load i32, i32* @EM28XX_VINMODE_RGB8_BGGR, align 4
  %83 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %84 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %86 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  br label %168

87:                                               ; preds = %1
  %88 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %89 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %88, i32 0, i32 0
  store i32 640, i32* %89, align 4
  %90 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %91 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %90, i32 0, i32 1
  store i32 512, i32* %91, align 4
  %92 = load i32, i32* @EM28XX_XCLK_FREQUENCY_48MHZ, align 4
  %93 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %97 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %98 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %99 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @em28xx_write_reg(%struct.em28xx* %96, i32 %97, i32 %101)
  %103 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %104 = call i32 @em28xx_initialize_mt9m111(%struct.em28xx* %103)
  %105 = load i32, i32* @EM28XX_VINMODE_YUV422_UYVY, align 4
  %106 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %107 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %109 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  br label %168

110:                                              ; preds = %1
  %111 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %111, align 8
  %112 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 1
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %112, align 8
  %116 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 2
  %117 = load i32, i32* @I2C_CLIENT_SCCB, align 4
  store i32 %117, i32* %116, align 4
  %118 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 3
  store %struct.mt9v011_platform_data* null, %struct.mt9v011_platform_data** %118, align 8
  %119 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %120 = bitcast %struct.TYPE_3__* %119 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %120, i8 0, i64 12, i1 false)
  %121 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %122 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %122, i32* %121, align 4
  %123 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %124 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %123, i32 0, i32 0
  store i32 640, i32* %124, align 4
  %125 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %126 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %125, i32 0, i32 1
  store i32 480, i32* %126, align 4
  %127 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %128 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %127, i32 0, i32 5
  %129 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %130 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32* %128, %struct.i2c_adapter* %129, %struct.i2c_board_info* %10, i32* null)
  store %struct.v4l2_subdev* %130, %struct.v4l2_subdev** %9, align 8
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %132 = icmp ne %struct.v4l2_subdev* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %110
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %169

136:                                              ; preds = %110
  %137 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %138 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32 640, i32* %141, align 4
  %142 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i32 480, i32* %143, align 4
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %145 = load i32, i32* @pad, align 4
  %146 = load i32, i32* @set_fmt, align 4
  %147 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %144, i32 %145, i32 %146, i32* null, %struct.v4l2_subdev_format* %11)
  %148 = load i32, i32* @EM28XX_XCLK_FREQUENCY_24MHZ, align 4
  %149 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %150 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %153 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %154 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %155 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @em28xx_write_reg(%struct.em28xx* %152, i32 %153, i32 %157)
  %159 = load i32, i32* @EM28XX_VINMODE_YUV422_YUYV, align 4
  %160 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %161 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %6, align 8
  %163 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %162, i32 0, i32 3
  store i32 0, i32* %163, align 4
  br label %168

164:                                              ; preds = %1
  br label %165

165:                                              ; preds = %1, %164
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %169

168:                                              ; preds = %136, %87, %75, %69
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %165, %133, %66
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32*, %struct.i2c_adapter*, %struct.i2c_board_info*, i32*) #1

declare dso_local i32 @em28xx_initialize_mt9m001(%struct.em28xx*) #1

declare dso_local i32 @em28xx_initialize_mt9m111(%struct.em28xx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
