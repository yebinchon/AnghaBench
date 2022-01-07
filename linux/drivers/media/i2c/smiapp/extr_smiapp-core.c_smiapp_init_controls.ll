; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32*, %struct.TYPE_14__*, i8*, i32, i8*, %struct.TYPE_13__*, i8*, %struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { i32 }

@smiapp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ANALOGUE_GAIN = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@smiapp_test_patterns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"pixel array controls initialization failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"src controls initialization failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_init_controls(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %6 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %6, i32 0, i32 1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_15__* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %12 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %11, i32 0, i32 5
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_16__* %14, i32 12)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %243

20:                                               ; preds = %1
  %21 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %22 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %21, i32 0, i32 3
  %23 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %24 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %23, i32 0, i32 5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32* %22, i32** %27, align 8
  %28 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %28, i32 0, i32 5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* @V4L2_CID_ANALOGUE_GAIN, align 4
  %33 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %34 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %40 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %46 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 %50, i32 1)
  %52 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %53 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %31, i32* @smiapp_ctrl_ops, i32 %32, i32 %38, i32 %44, i32 %51, i32 %57)
  %59 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %60 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %59, i32 0, i32 11
  store i8* %58, i8** %60, align 8
  %61 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %62 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %61, i32 0, i32 5
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %66 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %64, i32* @smiapp_ctrl_ops, i32 %65, i32 0, i32 0, i32 1, i32 0)
  %67 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %68 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %67, i32 0, i32 10
  store i8* %66, i8** %68, align 8
  %69 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %70 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %69, i32 0, i32 5
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %74 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %72, i32* @smiapp_ctrl_ops, i32 %73, i32 0, i32 1, i32 1, i32 0)
  %75 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %76 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %78 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %77, i32 0, i32 5
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %82 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %80, i32* @smiapp_ctrl_ops, i32 %81, i32 0, i32 1, i32 1, i32 0)
  %83 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %84 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %86 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %85, i32 0, i32 5
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %90 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %88, i32* @smiapp_ctrl_ops, i32 %89, i32 0, i32 1, i32 1, i32 0)
  %91 = bitcast i8* %90 to %struct.TYPE_10__*
  %92 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %93 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %92, i32 0, i32 8
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %95 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %94, i32 0, i32 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = icmp ne %struct.TYPE_10__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %20
  %99 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %100 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %101 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %100, i32 0, i32 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %20
  %107 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %108 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %107, i32 0, i32 5
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %112 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %110, i32* @smiapp_ctrl_ops, i32 %111, i32 0, i32 1, i32 1, i32 0)
  %113 = bitcast i8* %112 to %struct.TYPE_11__*
  %114 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %115 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %114, i32 0, i32 7
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %115, align 8
  %116 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %117 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %116, i32 0, i32 7
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = icmp ne %struct.TYPE_11__* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %106
  %121 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %122 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %123 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %122, i32 0, i32 7
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120, %106
  %129 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %130 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %129, i32 0, i32 5
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %134 = load i32, i32* @INT_MAX, align 4
  %135 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %132, i32* @smiapp_ctrl_ops, i32 %133, i32 1, i32 %134, i32 1, i32 1)
  %136 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %137 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  %138 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %139 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %138, i32 0, i32 5
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %143 = load i32, i32* @smiapp_test_patterns, align 4
  %144 = call i64 @ARRAY_SIZE(i32 %143)
  %145 = sub nsw i64 %144, 1
  %146 = load i32, i32* @smiapp_test_patterns, align 4
  %147 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_16__* %141, i32* @smiapp_ctrl_ops, i32 %142, i64 %145, i32 0, i32 0, i32 %146)
  %148 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %149 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %148, i32 0, i32 5
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %128
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %159 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %158, i32 0, i32 5
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %166 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %165, i32 0, i32 5
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %2, align 4
  br label %243

171:                                              ; preds = %128
  %172 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %173 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %172, i32 0, i32 5
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %177 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %176, i32 0, i32 5
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store %struct.TYPE_16__* %175, %struct.TYPE_16__** %180, align 8
  %181 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %182 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %181, i32 0, i32 4
  %183 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %182)
  %184 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %185 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %184, i32 0, i32 1
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_16__* %187, i32 0)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %171
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %243

193:                                              ; preds = %171
  %194 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %195 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %194, i32 0, i32 3
  %196 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %197 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %196, i32 0, i32 1
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  store i32* %195, i32** %200, align 8
  %201 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %202 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %201, i32 0, i32 1
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %206 = load i32, i32* @INT_MAX, align 4
  %207 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_16__* %204, i32* @smiapp_ctrl_ops, i32 %205, i32 1, i32 %206, i32 1, i32 1)
  %208 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %209 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  %210 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %211 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %210, i32 0, i32 1
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %193
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %221 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @dev_err(i32* %219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %225)
  %227 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %228 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %227, i32 0, i32 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %2, align 4
  br label %243

233:                                              ; preds = %193
  %234 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %235 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %234, i32 0, i32 1
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %239 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %238, i32 0, i32 1
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store %struct.TYPE_16__* %237, %struct.TYPE_16__** %242, align 8
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %233, %217, %191, %155, %18
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_16__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
