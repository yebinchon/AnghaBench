; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.m5mols_info = type { %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_11__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@AE_MAX_GAIN_MON = common dso_local global i32 0, align 4
@REG_SAMSUNG_OPTICS = common dso_local global i32 0, align 4
@m5mols_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_WHITE_BALANCE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_EXPOSURE_BIAS = common dso_local global i32 0, align 4
@ev_bias_qmenu = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_METERING = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_METERING_AVERAGE = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY = common dso_local global i32 0, align 4
@iso_qmenu = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_ZOOM_ABSOLUTE = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_CID_WIDE_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@V4L2_CID_IMAGE_STABILIZATION = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@V4L2_CID_3A_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize controls: %d\0A\00", align 1
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@REG_PARAMETER = common dso_local global i32 0, align 4
@REG_MONITOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_init_controls(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %9)
  store %struct.m5mols_info* %10, %struct.m5mols_info** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i32, i32* @AE_MAX_GAIN_MON, align 4
  %13 = call i32 @m5mols_read_u16(%struct.v4l2_subdev* %11, i32 %12, i32* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %200

18:                                               ; preds = %1
  %19 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %20 = load i32, i32* @REG_SAMSUNG_OPTICS, align 4
  %21 = call i64 @is_manufacturer(%struct.m5mols_info* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 31, i32 1
  store i32 %24, i32* %6, align 4
  %25 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %26 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %25, i32 0, i32 0
  %27 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %26, i32 20)
  %28 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %29 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %28, i32 0, i32 0
  %30 = load i32, i32* @V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE, align 4
  %31 = load i32, i32* @V4L2_WHITE_BALANCE_AUTO, align 4
  %32 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %29, i32* @m5mols_ctrl_ops, i32 %30, i32 9, i32 -1023, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_11__*
  %34 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %35 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %34, i32 0, i32 2
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %35, align 8
  %36 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %37 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %36, i32 0, i32 0
  %38 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %39 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %40 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %37, i32* @m5mols_ctrl_ops, i32 %38, i32 1, i32 -4, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_11__*
  %42 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %43 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %42, i32 0, i32 3
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %45 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %44, i32 0, i32 0
  %46 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 2
  %50 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %45, i32* @m5mols_ctrl_ops, i32 %46, i32 0, i32 %47, i32 1, i32 %49)
  %51 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %52 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %51, i32 0, i32 14
  store i8* %50, i8** %52, align 8
  %53 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %54 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %53, i32 0, i32 0
  %55 = load i32, i32* @V4L2_CID_AUTO_EXPOSURE_BIAS, align 4
  %56 = load i32, i32* @ev_bias_qmenu, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @ev_bias_qmenu, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = sdiv i32 %60, 2
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @ev_bias_qmenu, align 4
  %64 = call i8* @v4l2_ctrl_new_int_menu(%struct.TYPE_10__* %54, i32* @m5mols_ctrl_ops, i32 %55, i32 %58, i32 %62, i32 %63)
  %65 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %66 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %65, i32 0, i32 13
  store i8* %64, i8** %66, align 8
  %67 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %68 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %67, i32 0, i32 0
  %69 = load i32, i32* @V4L2_CID_EXPOSURE_METERING, align 4
  %70 = load i32, i32* @V4L2_EXPOSURE_METERING_AVERAGE, align 4
  %71 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %68, i32* @m5mols_ctrl_ops, i32 %69, i32 2, i32 -8, i32 %70)
  %72 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %73 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %72, i32 0, i32 12
  store i8* %71, i8** %73, align 8
  %74 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %75 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %74, i32 0, i32 0
  %76 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY_AUTO, align 4
  %77 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %75, i32* @m5mols_ctrl_ops, i32 %76, i32 1, i32 -4, i32 1)
  %78 = bitcast i8* %77 to %struct.TYPE_11__*
  %79 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %80 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %79, i32 0, i32 5
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %82 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %81, i32 0, i32 0
  %83 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY, align 4
  %84 = load i32, i32* @iso_qmenu, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* @iso_qmenu, align 4
  %88 = call i32 @ARRAY_SIZE(i32 %87)
  %89 = sdiv i32 %88, 2
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* @iso_qmenu, align 4
  %92 = call i8* @v4l2_ctrl_new_int_menu(%struct.TYPE_10__* %82, i32* @m5mols_ctrl_ops, i32 %83, i32 %86, i32 %90, i32 %91)
  %93 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %94 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %93, i32 0, i32 11
  store i8* %92, i8** %94, align 8
  %95 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %96 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %95, i32 0, i32 0
  %97 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %98 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %96, i32* @m5mols_ctrl_ops, i32 %97, i32 1, i32 5, i32 1, i32 3)
  %99 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %100 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %102 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %101, i32 0, i32 0
  %103 = load i32, i32* @V4L2_CID_ZOOM_ABSOLUTE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %102, i32* @m5mols_ctrl_ops, i32 %103, i32 1, i32 70, i32 %104, i32 1)
  %106 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %107 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %109 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %108, i32 0, i32 0
  %110 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %111 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %112 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %109, i32* @m5mols_ctrl_ops, i32 %110, i32 4, i32 0, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_11__*
  %114 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %115 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %114, i32 0, i32 1
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %115, align 8
  %116 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %117 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %116, i32 0, i32 0
  %118 = load i32, i32* @V4L2_CID_WIDE_DYNAMIC_RANGE, align 4
  %119 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %117, i32* @m5mols_ctrl_ops, i32 %118, i32 0, i32 1, i32 1, i32 0)
  %120 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %121 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %120, i32 0, i32 8
  store i8* %119, i8** %121, align 8
  %122 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %123 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %122, i32 0, i32 0
  %124 = load i32, i32* @V4L2_CID_IMAGE_STABILIZATION, align 4
  %125 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %123, i32* @m5mols_ctrl_ops, i32 %124, i32 0, i32 1, i32 1, i32 0)
  %126 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %127 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %126, i32 0, i32 7
  store i8* %125, i8** %127, align 8
  %128 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %129 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %128, i32 0, i32 0
  %130 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %131 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %129, i32* @m5mols_ctrl_ops, i32 %130, i32 1, i32 100, i32 1, i32 80)
  %132 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %133 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %135 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %134, i32 0, i32 0
  %136 = load i32, i32* @V4L2_CID_3A_LOCK, align 4
  %137 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %135, i32* @m5mols_ctrl_ops, i32 %136, i32 0, i32 7, i32 0, i32 0)
  %138 = bitcast i8* %137 to %struct.TYPE_9__*
  %139 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %140 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %139, i32 0, i32 4
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %140, align 8
  %141 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %142 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %18
  %147 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %148 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %8, align 4
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @v4l2_err(%struct.v4l2_subdev* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %155 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %154, i32 0, i32 0
  %156 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %200

158:                                              ; preds = %18
  %159 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %160 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %159, i32 0, i32 3
  %161 = call i32 @v4l2_ctrl_auto_cluster(i32 4, %struct.TYPE_11__** %160, i32 1, i32 0)
  %162 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %163 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %166 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %165, i32 0, i32 5
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  %171 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %172 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %171, i32 0, i32 5
  %173 = call i32 @v4l2_ctrl_auto_cluster(i32 2, %struct.TYPE_11__** %172, i32 0, i32 0)
  %174 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %175 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %176 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %175, i32 0, i32 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %182 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %181, i32 0, i32 3
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = load i32, i32* @REG_PARAMETER, align 4
  %185 = call i32 @m5mols_set_ctrl_mode(%struct.TYPE_11__* %183, i32 %184)
  %186 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %187 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %186, i32 0, i32 2
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i32, i32* @REG_PARAMETER, align 4
  %190 = call i32 @m5mols_set_ctrl_mode(%struct.TYPE_11__* %188, i32 %189)
  %191 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %192 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = load i32, i32* @REG_MONITOR, align 4
  %195 = call i32 @m5mols_set_ctrl_mode(%struct.TYPE_11__* %193, i32 %194)
  %196 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %197 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %196, i32 0, i32 0
  %198 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %199 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %198, i32 0, i32 0
  store %struct.TYPE_10__* %197, %struct.TYPE_10__** %199, align 8
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %158, %146, %16
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @m5mols_read_u16(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i64 @is_manufacturer(%struct.m5mols_info*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_int_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @m5mols_set_ctrl_mode(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
