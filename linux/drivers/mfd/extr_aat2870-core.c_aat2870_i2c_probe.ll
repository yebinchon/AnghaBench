; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c_aat2870_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c_aat2870_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.aat2870_platform_data = type { i32, i32, %struct.TYPE_5__*, i32, i32 (%struct.aat2870_data*)* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.aat2870_data = type opaque
%struct.aat2870_data.0 = type { i32, i32*, i32 (%struct.aat2870_data.0*)*, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aat2870_regs = common dso_local global i32 0, align 4
@aat2870_read = common dso_local global i32 0, align 4
@aat2870_write = common dso_local global i32 0, align 4
@aat2870_update = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"aat2870-en\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to request GPIO %d\0A\00", align 1
@aat2870_devs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to add subdev: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @aat2870_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.aat2870_platform_data*, align 8
  %7 = alloca %struct.aat2870_data.0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.aat2870_platform_data* @dev_get_platdata(i32* %12)
  store %struct.aat2870_platform_data* %13, %struct.aat2870_platform_data** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.aat2870_data.0* @devm_kzalloc(i32* %15, i32 56, i32 %16)
  store %struct.aat2870_data.0* %17, %struct.aat2870_data.0** %7, align 8
  %18 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %19 = icmp ne %struct.aat2870_data.0* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %206

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %27 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %29 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %32 = call i32 @dev_set_drvdata(i32* %30, %struct.aat2870_data.0* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %35 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %34, i32 0, i32 9
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.aat2870_data.0* %37)
  %39 = load i32, i32* @aat2870_regs, align 4
  %40 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %41 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %48 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  br label %55

49:                                               ; preds = %23
  %50 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %54 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %56, i32 0, i32 4
  %58 = load i32 (%struct.aat2870_data*)*, i32 (%struct.aat2870_data*)** %57, align 8
  %59 = bitcast i32 (%struct.aat2870_data*)* %58 to i32 (%struct.aat2870_data.0*)*
  %60 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %61 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %60, i32 0, i32 2
  store i32 (%struct.aat2870_data.0*)* %59, i32 (%struct.aat2870_data.0*)** %61, align 8
  %62 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %63 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %66 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @aat2870_read, align 4
  %68 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %69 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @aat2870_write, align 4
  %71 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %72 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @aat2870_update, align 4
  %74 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %75 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %77 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %76, i32 0, i32 3
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %80 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %79, i32 0, i32 2
  %81 = load i32 (%struct.aat2870_data.0*)*, i32 (%struct.aat2870_data.0*)** %80, align 8
  %82 = icmp ne i32 (%struct.aat2870_data.0*)* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %55
  %84 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %85 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %84, i32 0, i32 2
  %86 = load i32 (%struct.aat2870_data.0*)*, i32 (%struct.aat2870_data.0*)** %85, align 8
  %87 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %88 = call i32 %86(%struct.aat2870_data.0* %87)
  br label %89

89:                                               ; preds = %83, %55
  %90 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %91 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %98 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %101 = call i32 @devm_gpio_request_one(i32* %96, i32 %99, i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %108 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %206

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %115 = call i32 @aat2870_enable(%struct.aat2870_data.0* %114)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %180, %113
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %119 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %183

122:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %176, %122
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %125)
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %179

128:                                              ; preds = %123
  %129 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %130 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %129, i32 0, i32 2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %136, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %128
  %145 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %146 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %145, i32 0, i32 2
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @strcmp(i32 %152, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %144
  %162 = load %struct.aat2870_platform_data*, %struct.aat2870_platform_data** %6, align 8
  %163 = getelementptr inbounds %struct.aat2870_platform_data, %struct.aat2870_platform_data* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 8
  br label %179

175:                                              ; preds = %144, %128
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %123

179:                                              ; preds = %161, %123
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %116

183:                                              ; preds = %116
  %184 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %185 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @aat2870_devs, align 8
  %189 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %188)
  %190 = call i32 @mfd_add_devices(i32* %186, i32 0, %struct.TYPE_6__* %187, i32 %189, i32* null, i32 0, i32* null)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %183
  %194 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %195 = getelementptr inbounds %struct.aat2870_data.0, %struct.aat2870_data.0* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @dev_err(i32* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  br label %202

199:                                              ; preds = %183
  %200 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %201 = call i32 @aat2870_init_debugfs(%struct.aat2870_data.0* %200)
  store i32 0, i32* %3, align 4
  br label %206

202:                                              ; preds = %193
  %203 = load %struct.aat2870_data.0*, %struct.aat2870_data.0** %7, align 8
  %204 = call i32 @aat2870_disable(%struct.aat2870_data.0* %203)
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %199, %104, %20
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.aat2870_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.aat2870_data.0* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.aat2870_data.0*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.aat2870_data.0*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @aat2870_enable(%struct.aat2870_data.0*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @aat2870_init_debugfs(%struct.aat2870_data.0*) #1

declare dso_local i32 @aat2870_disable(%struct.aat2870_data.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
