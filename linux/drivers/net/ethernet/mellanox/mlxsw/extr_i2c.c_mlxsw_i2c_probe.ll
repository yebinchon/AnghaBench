; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i2c_adapter_quirks* }
%struct.i2c_adapter_quirks = type { i64, i64 }
%struct.i2c_device_id = type { i32 }
%struct.mlxsw_i2c = type { %struct.TYPE_6__, i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_I2C_BLK_DEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Insufficient transaction buffer length\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not start transaction\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"HW semaphore is not released\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Bad transaction completion status %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Fail to get mailboxes\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%s mb size=%x off=0x%08x out mb size=%x off=0x%08x\0A\00", align 1
@mlxsw_i2c_bus = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Fail to register core bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mlxsw_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter_quirks*, align 8
  %7 = alloca %struct.mlxsw_i2c*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %13, align 8
  store %struct.i2c_adapter_quirks* %14, %struct.i2c_adapter_quirks** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlxsw_i2c* @devm_kzalloc(i32* %16, i32 64, i32 %17)
  store %struct.mlxsw_i2c* %18, %struct.mlxsw_i2c** %7, align 8
  %19 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %20 = icmp ne %struct.mlxsw_i2c* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %183

24:                                               ; preds = %2
  %25 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %26 = icmp ne %struct.i2c_adapter_quirks* %25, null
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLXSW_I2C_BLK_DEF, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MLXSW_I2C_BLK_DEF, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43, %32
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %183

55:                                               ; preds = %43, %38
  %56 = load i32, i32* @u16, align 4
  %57 = load i64, i64* @MLXSW_I2C_BLK_DEF, align 8
  %58 = load i32, i32* @u16, align 4
  %59 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %6, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @min_t(i32 %58, i64 %61, i64 %64)
  %66 = call i64 @max_t(i32 %56, i64 %57, i32 %65)
  %67 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %68 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  br label %73

69:                                               ; preds = %24
  %70 = load i64, i64* @MLXSW_I2C_BLK_DEF, align 8
  %71 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %72 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %76 = call i32 @i2c_set_clientdata(%struct.i2c_client* %74, %struct.mlxsw_i2c* %75)
  %77 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %78 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %83 = call i32 @mlxsw_i2c_write_cmd(%struct.i2c_client* %81, %struct.mlxsw_i2c* %82, i32 1)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %179

90:                                               ; preds = %73
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %93 = call i32 @mlxsw_i2c_wait_go_bit(%struct.i2c_client* %91, %struct.mlxsw_i2c* %92, i64* %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %179

100:                                              ; preds = %90
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i64, i64* %8, align 8
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %179

110:                                              ; preds = %100
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %113 = call i32 @mlxsw_i2c_get_mbox(%struct.i2c_client* %111, %struct.mlxsw_i2c* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %179

120:                                              ; preds = %110
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %124 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %127 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %131 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %135 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %139 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_info(i32* %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %129, i32 %133, i32 %137, i32 %141)
  %143 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %144 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %147 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %153 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %158 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32* %156, i32** %159, align 8
  %160 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %161 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %166 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %165, i32 0, i32 1
  store i32* %164, i32** %166, align 8
  %167 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %168 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %167, i32 0, i32 0
  %169 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %7, align 8
  %170 = call i32 @mlxsw_core_bus_device_register(%struct.TYPE_6__* %168, i32* @mlxsw_i2c_bus, %struct.mlxsw_i2c* %169, i32 0, i32* null)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %120
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %3, align 4
  br label %183

178:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %183

179:                                              ; preds = %116, %103, %96, %86
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = call i32 @i2c_set_clientdata(%struct.i2c_client* %180, %struct.mlxsw_i2c* null)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %179, %178, %173, %49, %21
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.mlxsw_i2c* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @max_t(i32, i64, i32) #1

declare dso_local i32 @min_t(i32, i64, i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mlxsw_i2c*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlxsw_i2c_write_cmd(%struct.i2c_client*, %struct.mlxsw_i2c*, i32) #1

declare dso_local i32 @mlxsw_i2c_wait_go_bit(%struct.i2c_client*, %struct.mlxsw_i2c*, i64*) #1

declare dso_local i32 @mlxsw_i2c_get_mbox(%struct.i2c_client*, %struct.mlxsw_i2c*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_core_bus_device_register(%struct.TYPE_6__*, i32*, %struct.mlxsw_i2c*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
