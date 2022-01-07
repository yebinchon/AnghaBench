; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32 }
%struct.i2c_client = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.tvp7002_config = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_12__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.tvp7002 = type { %struct.v4l2_subdev, %struct.TYPE_10__, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.tvp7002_config* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tvp7002_timings = common dso_local global %struct.TYPE_11__* null, align 8
@tvp7002_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"tvp7002 found @ 0x%02x (%s)\0A\00", align 1
@TVP7002_CHIP_REV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Rev. %02x detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unknown revision detected.\0A\00", align 1
@tvp7002_init_default = common dso_local global i32 0, align 4
@TVP7002_SYNC_CTL_1 = common dso_local global i32 0, align 4
@TVP7002_MISC_CTL_3 = common dso_local global i32 0, align 4
@tvp7002_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@MEDIA_ENT_F_ATV_DECODER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tvp7002_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tvp7002_config*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.tvp7002*, align 8
  %7 = alloca %struct.v4l2_dv_timings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call %struct.tvp7002_config* @tvp7002_get_pdata(%struct.i2c_client* %12)
  store %struct.tvp7002_config* %13, %struct.tvp7002_config** %4, align 8
  %14 = load %struct.tvp7002_config*, %struct.tvp7002_config** %4, align 8
  %15 = icmp eq %struct.tvp7002_config* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %188

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %27 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @i2c_check_functionality(%struct.TYPE_14__* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %188

34:                                               ; preds = %22
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.tvp7002* @devm_kzalloc(i32* %36, i32 48, i32 %37)
  store %struct.tvp7002* %38, %struct.tvp7002** %6, align 8
  %39 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %40 = icmp ne %struct.tvp7002* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %188

44:                                               ; preds = %34
  %45 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %46 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %45, i32 0, i32 0
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %5, align 8
  %47 = load %struct.tvp7002_config*, %struct.tvp7002_config** %4, align 8
  %48 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %49 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %48, i32 0, i32 4
  store %struct.tvp7002_config* %47, %struct.tvp7002_config** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tvp7002_timings, align 8
  %51 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %52 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %51, i32 0, i32 3
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %53, %struct.i2c_client* %54, i32* @tvp7002_ops)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @v4l_info(%struct.i2c_client* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %67 = load i32, i32* @TVP7002_CHIP_REV, align 4
  %68 = call i32 @tvp7002_read(%struct.v4l2_subdev* %66, i32 %67, i32* %10)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %2, align 4
  br label %188

73:                                               ; preds = %44
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %81 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %84 = load i32, i32* @tvp7002_init_default, align 4
  %85 = call i32 @tvp7002_write_inittab(%struct.v4l2_subdev* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %2, align 4
  br label %188

90:                                               ; preds = %82
  %91 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %92 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %91, i32 0, i32 4
  %93 = load %struct.tvp7002_config*, %struct.tvp7002_config** %92, align 8
  %94 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 5
  %97 = or i32 32, %96
  %98 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %99 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %98, i32 0, i32 4
  %100 = load %struct.tvp7002_config*, %struct.tvp7002_config** %99, align 8
  %101 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 2
  %104 = or i32 %97, %103
  store i32 %104, i32* %8, align 4
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %106 = load i32, i32* @TVP7002_SYNC_CTL_1, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @tvp7002_write(%struct.v4l2_subdev* %105, i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %90
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %2, align 4
  br label %188

113:                                              ; preds = %90
  %114 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %115 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %114, i32 0, i32 4
  %116 = load %struct.tvp7002_config*, %struct.tvp7002_config** %115, align 8
  %117 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 2
  %120 = or i32 1, %119
  %121 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %122 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %121, i32 0, i32 4
  %123 = load %struct.tvp7002_config*, %struct.tvp7002_config** %122, align 8
  %124 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 1
  %127 = or i32 %120, %126
  %128 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %129 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %128, i32 0, i32 4
  %130 = load %struct.tvp7002_config*, %struct.tvp7002_config** %129, align 8
  %131 = getelementptr inbounds %struct.tvp7002_config, %struct.tvp7002_config* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %127, %132
  store i32 %133, i32* %9, align 4
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %135 = load i32, i32* @TVP7002_MISC_CTL_3, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @tvp7002_write(%struct.v4l2_subdev* %134, i32 %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %113
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %188

142:                                              ; preds = %113
  %143 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %144 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %143, i32 0, i32 3
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = bitcast %struct.v4l2_dv_timings* %7 to i8*
  %148 = bitcast %struct.v4l2_dv_timings* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 4, i1 false)
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %150 = call i32 @tvp7002_s_dv_timings(%struct.v4l2_subdev* %149, %struct.v4l2_dv_timings* %7)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %152 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %151, i32 0, i32 1
  %153 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %152, i32 1)
  %154 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %155 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %154, i32 0, i32 1
  %156 = load i32, i32* @V4L2_CID_GAIN, align 4
  %157 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %155, i32* @tvp7002_ctrl_ops, i32 %156, i32 0, i32 255, i32 1, i32 0)
  %158 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %159 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %158, i32 0, i32 1
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %160, i32 0, i32 1
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %161, align 8
  %162 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %163 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %142
  %168 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %169 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %11, align 4
  br label %183

172:                                              ; preds = %142
  %173 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %174 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %173, i32 0, i32 1
  %175 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__* %174)
  %176 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %177 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %176, i32 0, i32 0
  %178 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %183

182:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %188

183:                                              ; preds = %181, %167
  %184 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %185 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %184, i32 0, i32 1
  %186 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %185)
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %183, %182, %140, %111, %88, %71, %41, %31, %16
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.tvp7002_config* @tvp7002_get_pdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.tvp7002* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @tvp7002_read(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @tvp7002_write_inittab(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tvp7002_write(%struct.v4l2_subdev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tvp7002_s_dv_timings(%struct.v4l2_subdev*, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
