; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.m88rs6000t_reg_val = type { i32, i32, i32, i32 }
%struct.m88rs6000t_config = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.m88rs6000t_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.m88rs6000t_dev = type { %struct.i2c_client*, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.m88rs6000t_config* }
%struct.i2c_device_id = type { i32 }

@m88rs6000t_probe.regmap_config = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@m88rs6000t_probe.reg_vals = internal constant [25 x %struct.m88rs6000t_reg_val] [%struct.m88rs6000t_reg_val { i32 16, i32 251, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 36, i32 56, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 17, i32 10, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 18, i32 0, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 43, i32 28, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 68, i32 72, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 84, i32 36, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 85, i32 6, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 89, i32 0, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 91, i32 76, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 96, i32 139, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 97, i32 244, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 101, i32 7, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 109, i32 111, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 110, i32 49, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 60, i32 243, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 55, i32 15, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 72, i32 40, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 73, i32 216, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 112, i32 102, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 113, i32 207, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 114, i32 129, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 115, i32 167, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 116, i32 79, i32 0, i32 0 }, %struct.m88rs6000t_reg_val { i32 117, i32 252, i32 0, i32 0 }], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"chip_id=%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Montage M88RS6000 internal tuner successfully identified\0A\00", align 1
@m88rs6000t_tuner_ops = common dso_local global %struct.m88rs6000t_config zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m88rs6000t_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs6000t_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.m88rs6000t_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.m88rs6000t_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.m88rs6000t_config*, %struct.m88rs6000t_config** %14, align 8
  store %struct.m88rs6000t_config* %15, %struct.m88rs6000t_config** %6, align 8
  %16 = load %struct.m88rs6000t_config*, %struct.m88rs6000t_config** %6, align 8
  %17 = getelementptr inbounds %struct.m88rs6000t_config, %struct.m88rs6000t_config* %16, i32 0, i32 0
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %17, align 8
  store %struct.dvb_frontend* %18, %struct.dvb_frontend** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.m88rs6000t_dev* @kzalloc(i32 16, i32 %19)
  store %struct.m88rs6000t_dev* %20, %struct.m88rs6000t_dev** %8, align 8
  %21 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %22 = icmp ne %struct.m88rs6000t_dev* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %205

29:                                               ; preds = %2
  %30 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %31 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %30, i32 0, i32 2
  %32 = load %struct.m88rs6000t_config*, %struct.m88rs6000t_config** %6, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.m88rs6000t_config* %32, i32 8)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %36 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %35, i32 0, i32 0
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %37, %struct.regmap_config* @m88rs6000t_probe.regmap_config)
  %39 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %40 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %42 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %48 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %205

51:                                               ; preds = %29
  %52 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %53 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @regmap_update_bits(i32 %54, i32 17, i32 8, i32 8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %205

59:                                               ; preds = %51
  %60 = call i32 @usleep_range(i32 5000, i32 50000)
  %61 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %62 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @regmap_update_bits(i32 %63, i32 16, i32 1, i32 1)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %205

68:                                               ; preds = %59
  %69 = call i32 @usleep_range(i32 10000, i32 50000)
  %70 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %71 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regmap_write(i32 %72, i32 7, i32 125)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %205

77:                                               ; preds = %68
  %78 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %79 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @regmap_write(i32 %80, i32 4, i32 1)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %205

85:                                               ; preds = %77
  %86 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %87 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @regmap_read(i32 %88, i32 1, i32* %11)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %205

93:                                               ; preds = %85
  %94 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %95 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %94, i32 0, i32 0
  %96 = load %struct.i2c_client*, %struct.i2c_client** %95, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_info(%struct.TYPE_6__* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %205

105:                                              ; preds = %93
  %106 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %107 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @regmap_write(i32 %108, i32 5, i32 64)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %205

113:                                              ; preds = %105
  %114 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %115 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @regmap_write(i32 %116, i32 17, i32 8)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %205

121:                                              ; preds = %113
  %122 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %123 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @regmap_write(i32 %124, i32 21, i32 108)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %205

129:                                              ; preds = %121
  %130 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %131 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @regmap_write(i32 %132, i32 23, i32 193)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %205

137:                                              ; preds = %129
  %138 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %139 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @regmap_write(i32 %140, i32 23, i32 129)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %205

145:                                              ; preds = %137
  %146 = call i32 @usleep_range(i32 10000, i32 50000)
  %147 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %148 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @regmap_write(i32 %149, i32 5, i32 0)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %205

154:                                              ; preds = %145
  %155 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %156 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @regmap_write(i32 %157, i32 17, i32 10)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %205

162:                                              ; preds = %154
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %186, %162
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @ARRAY_SIZE(%struct.m88rs6000t_reg_val* getelementptr inbounds ([25 x %struct.m88rs6000t_reg_val], [25 x %struct.m88rs6000t_reg_val]* @m88rs6000t_probe.reg_vals, i64 0, i64 0))
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %163
  %168 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %169 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [25 x %struct.m88rs6000t_reg_val], [25 x %struct.m88rs6000t_reg_val]* @m88rs6000t_probe.reg_vals, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.m88rs6000t_reg_val, %struct.m88rs6000t_reg_val* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [25 x %struct.m88rs6000t_reg_val], [25 x %struct.m88rs6000t_reg_val]* @m88rs6000t_probe.reg_vals, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.m88rs6000t_reg_val, %struct.m88rs6000t_reg_val* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @regmap_write(i32 %170, i32 %175, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  br label %205

185:                                              ; preds = %167
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %163

189:                                              ; preds = %163
  %190 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %191 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %190, i32 0, i32 0
  %192 = load %struct.i2c_client*, %struct.i2c_client** %191, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_info(%struct.TYPE_6__* %193, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %195 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %196 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %197 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %196, i32 0, i32 1
  store %struct.m88rs6000t_dev* %195, %struct.m88rs6000t_dev** %197, align 8
  %198 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %199 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = call i32 @memcpy(i32* %200, %struct.m88rs6000t_config* @m88rs6000t_tuner_ops, i32 4)
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %204 = call i32 @i2c_set_clientdata(%struct.i2c_client* %202, %struct.m88rs6000t_dev* %203)
  store i32 0, i32* %3, align 4
  br label %213

205:                                              ; preds = %184, %161, %153, %144, %136, %128, %120, %112, %102, %92, %84, %76, %67, %58, %46, %23
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @dev_dbg(%struct.TYPE_6__* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %208)
  %210 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %8, align 8
  %211 = call i32 @kfree(%struct.m88rs6000t_dev* %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %205, %189
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.m88rs6000t_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.m88rs6000t_config*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.m88rs6000t_reg_val*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.m88rs6000t_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.m88rs6000t_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
