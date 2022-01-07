; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.adv7180_state = type { i64, i32, i32, i8*, i8*, %struct.TYPE_7__, %struct.v4l2_subdev, i64, %struct.adv7180_chip_info*, i32, i8*, i32, %struct.i2c_client* }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_subdev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.adv7180_chip_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"request for power pin failed: %d\0A\00", align 1
@ADV7180_FLAG_MIPI_CSI2 = common dso_local global i32 0, align 4
@ADV7180_DEFAULT_CSI_I2C_ADDR = common dso_local global i32 0, align 4
@ADV7180_FLAG_I2P = common dso_local global i32 0, align 4
@ADV7180_DEFAULT_VPP_I2C_ADDR = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@ADV7180_FLAG_RESET_POWERED = common dso_local global i32 0, align 4
@adv7180_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_ATV_DECODER = common dso_local global i32 0, align 4
@adv7180_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adv7180_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adv7180_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_8__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %256

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 2
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.adv7180_state* @devm_kzalloc(i32* %30, i32 96, i32 %31)
  store %struct.adv7180_state* %32, %struct.adv7180_state** %6, align 8
  %33 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %34 = icmp eq %struct.adv7180_state* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %256

38:                                               ; preds = %18
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %41 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %40, i32 0, i32 12
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %43 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %44 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 8
  %45 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.adv7180_chip_info*
  %49 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %50 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %49, i32 0, i32 8
  store %struct.adv7180_chip_info* %48, %struct.adv7180_chip_info** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 2
  %53 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %54 = call i8* @devm_gpiod_get_optional(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %56 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %55, i32 0, i32 10
  store i8* %54, i8** %56, align 8
  %57 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %58 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %57, i32 0, i32 10
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %38
  %63 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %64 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %63, i32 0, i32 10
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @v4l_err(%struct.i2c_client* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %256

71:                                               ; preds = %38
  %72 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %73 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %72, i32 0, i32 8
  %74 = load %struct.adv7180_chip_info*, %struct.adv7180_chip_info** %73, align 8
  %75 = getelementptr inbounds %struct.adv7180_chip_info, %struct.adv7180_chip_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %71
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* @ADV7180_DEFAULT_CSI_I2C_ADDR, align 4
  %85 = call i8* @i2c_new_dummy_device(%struct.TYPE_8__* %83, i32 %84)
  %86 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %87 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %89 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %95 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %3, align 4
  br label %256

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %71
  %100 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %101 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %100, i32 0, i32 8
  %102 = load %struct.adv7180_chip_info*, %struct.adv7180_chip_info** %101, align 8
  %103 = getelementptr inbounds %struct.adv7180_chip_info, %struct.adv7180_chip_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ADV7180_FLAG_I2P, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %99
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* @ADV7180_DEFAULT_VPP_I2C_ADDR, align 4
  %113 = call i8* @i2c_new_dummy_device(%struct.TYPE_8__* %111, i32 %112)
  %114 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %115 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %117 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @IS_ERR(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %123 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @PTR_ERR(i8* %124)
  store i32 %125, i32* %8, align 4
  br label %247

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %99
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %132 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %134 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %133, i32 0, i32 2
  %135 = call i32 @mutex_init(i32* %134)
  %136 = load i32, i32* @V4L2_STD_NTSC, align 4
  %137 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %138 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %140 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %139, i32 0, i32 8
  %141 = load %struct.adv7180_chip_info*, %struct.adv7180_chip_info** %140, align 8
  %142 = getelementptr inbounds %struct.adv7180_chip_info, %struct.adv7180_chip_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ADV7180_FLAG_RESET_POWERED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %149 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %148, i32 0, i32 1
  store i32 1, i32* %149, align 8
  br label %153

150:                                              ; preds = %127
  %151 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %152 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %151, i32 0, i32 1
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %155 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  %156 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %157 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %156, i32 0, i32 6
  store %struct.v4l2_subdev* %157, %struct.v4l2_subdev** %7, align 8
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %158, %struct.i2c_client* %159, i32* @adv7180_ops)
  %161 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %162 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %165 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %169 = call i32 @adv7180_init_controls(%struct.adv7180_state* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %153
  br label %242

173:                                              ; preds = %153
  %174 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %175 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %176 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* @MEDIA_ENT_F_ATV_DECODER, align 4
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %180 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %183 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %182, i32 0, i32 1
  %184 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %185 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %184, i32 0, i32 5
  %186 = call i32 @media_entity_pads_init(%struct.TYPE_6__* %183, i32 1, %struct.TYPE_7__* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %239

190:                                              ; preds = %173
  %191 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %192 = call i32 @init_device(%struct.adv7180_state* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %235

196:                                              ; preds = %190
  %197 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %198 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %196
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @adv7180_irq, align 4
  %206 = load i32, i32* @IRQF_ONESHOT, align 4
  %207 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @KBUILD_MODNAME, align 4
  %210 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %211 = call i32 @request_threaded_irq(i64 %204, i32* null, i32 %205, i32 %208, i32 %209, %struct.adv7180_state* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %201
  br label %235

215:                                              ; preds = %201
  br label %216

216:                                              ; preds = %215, %196
  %217 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %218 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %223

222:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %256

223:                                              ; preds = %221
  %224 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %225 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %233 = call i32 @free_irq(i64 %231, %struct.adv7180_state* %232)
  br label %234

234:                                              ; preds = %228, %223
  br label %235

235:                                              ; preds = %234, %214, %195
  %236 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %237 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %236, i32 0, i32 1
  %238 = call i32 @media_entity_cleanup(%struct.TYPE_6__* %237)
  br label %239

239:                                              ; preds = %235, %189
  %240 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %241 = call i32 @adv7180_exit_controls(%struct.adv7180_state* %240)
  br label %242

242:                                              ; preds = %239, %172
  %243 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %244 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @i2c_unregister_device(i8* %245)
  br label %247

247:                                              ; preds = %242, %121
  %248 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %249 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %248, i32 0, i32 3
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @i2c_unregister_device(i8* %250)
  %252 = load %struct.adv7180_state*, %struct.adv7180_state** %6, align 8
  %253 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %252, i32 0, i32 2
  %254 = call i32 @mutex_destroy(i32* %253)
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %247, %222, %93, %62, %35, %15
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.adv7180_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #1

declare dso_local i8* @i2c_new_dummy_device(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @adv7180_init_controls(%struct.adv7180_state*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @init_device(%struct.adv7180_state*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i32, %struct.adv7180_state*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @free_irq(i64, %struct.adv7180_state*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @adv7180_exit_controls(%struct.adv7180_state*) #1

declare dso_local i32 @i2c_unregister_device(i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
