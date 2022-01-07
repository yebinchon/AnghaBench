; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.mipid02_dev = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_8__*, i32, i32, %struct.i2c_client*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mipid02_subdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to get xclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"xclk freq must be in 6-27 Mhz range. got %d Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get regulators %d\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@mipid02_subdev_entity_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@MIPID02_PAD_NB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"pads init failed %d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to detect mipid02 %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to parse tx %d\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to parse rx %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"v4l2_async_register_subdev failed %d\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"mipid02 device probe successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mipid02_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mipid02_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mipid02_dev* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.mipid02_dev* %12, %struct.mipid02_dev** %5, align 8
  %13 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %14 = icmp ne %struct.mipid02_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %199

18:                                               ; preds = %1
  %19 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %19, i32 0, i32 7
  %21 = call i32 @init_format(i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %23, i32 0, i32 6
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %25, i32 0, i32 1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %26, %struct.i2c_client* %27, i32* @mipid02_subdev_ops)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %18
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %199

45:                                               ; preds = %18
  %46 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %47 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_get_rate(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 6000000
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 27000000
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %45
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %199

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %64 = call i32 @devm_gpiod_get_optional(%struct.device* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %66 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %68 = call i32 @mipid02_get_regulators(%struct.mipid02_dev* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %199

76:                                               ; preds = %61
  %77 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %77, i32 0, i32 0
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %81 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %82 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %87 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %88 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 8
  %91 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %92 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32* @mipid02_subdev_entity_ops, i32** %94, align 8
  %95 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %96 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %97 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i8* %95, i8** %100, align 8
  %101 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %102 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %103 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i8* %101, i8** %106, align 8
  %107 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %108 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %109 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i8* %107, i8** %112, align 8
  %113 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %114 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* @MIPID02_PAD_NB, align 4
  %117 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %118 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %115, i32 %116, %struct.TYPE_8__* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %76
  %124 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %194

128:                                              ; preds = %76
  %129 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %130 = call i32 @mipid02_set_power_on(%struct.mipid02_dev* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %189

134:                                              ; preds = %128
  %135 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %136 = call i32 @mipid02_detect(%struct.mipid02_dev* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  br label %186

144:                                              ; preds = %134
  %145 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %146 = call i32 @mipid02_parse_tx_ep(%struct.mipid02_dev* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %186

154:                                              ; preds = %144
  %155 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %156 = call i32 @mipid02_parse_rx_ep(%struct.mipid02_dev* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  br label %186

164:                                              ; preds = %154
  %165 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %166 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %165, i32 0, i32 1
  %167 = call i32 @v4l2_async_register_subdev(%struct.TYPE_6__* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = load i32, i32* %7, align 4
  %174 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %173)
  br label %179

175:                                              ; preds = %164
  %176 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = call i32 @dev_info(%struct.device* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %199

179:                                              ; preds = %170
  %180 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %181 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %180, i32 0, i32 2
  %182 = call i32 @v4l2_async_notifier_unregister(i32* %181)
  %183 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %184 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %183, i32 0, i32 2
  %185 = call i32 @v4l2_async_notifier_cleanup(i32* %184)
  br label %186

186:                                              ; preds = %179, %159, %149, %139
  %187 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %188 = call i32 @mipid02_set_power_off(%struct.mipid02_dev* %187)
  br label %189

189:                                              ; preds = %186, %133
  %190 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %191 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = call i32 @media_entity_cleanup(%struct.TYPE_7__* %192)
  br label %194

194:                                              ; preds = %189, %123
  %195 = load %struct.mipid02_dev*, %struct.mipid02_dev** %5, align 8
  %196 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %195, i32 0, i32 0
  %197 = call i32 @mutex_destroy(i32* %196)
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %194, %175, %71, %55, %38, %15
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.mipid02_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_format(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @mipid02_get_regulators(%struct.mipid02_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mipid02_set_power_on(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_detect(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_parse_tx_ep(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_parse_rx_ep(%struct.mipid02_dev*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @mipid02_set_power_off(%struct.mipid02_dev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
