; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.mt2060_platform_data* }
%struct.mt2060_platform_data = type { i32, i64, i32, %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.mt2060_priv*, %struct.TYPE_9__ }
%struct.mt2060_priv = type { i32, i32, i64, %struct.i2c_client*, i32, %struct.TYPE_8__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.i2c_device_id = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot proceed without platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_PART_REV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"chip id=%02x\0A\00", align 1
@PART_REV = common dso_local global i64 0, align 8
@REG_MISC_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Microtune MT2060 successfully identified\0A\00", align 1
@mt2060_tuner_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt2060_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2060_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt2060_platform_data*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.mt2060_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %13, align 8
  store %struct.mt2060_platform_data* %14, %struct.mt2060_platform_data** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %19 = icmp ne %struct.mt2060_platform_data* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %146

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mt2060_priv* @devm_kzalloc(%struct.TYPE_11__* %28, i32 48, i32 %29)
  store %struct.mt2060_priv* %30, %struct.mt2060_priv** %8, align 8
  %31 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %32 = icmp ne %struct.mt2060_priv* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %146

36:                                               ; preds = %26
  %37 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %37, i32 0, i32 3
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %38, align 8
  store %struct.dvb_frontend* %39, %struct.dvb_frontend** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %47 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %50 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %53 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %52, i32 0, i32 5
  %54 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %55 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %54, i32 0, i32 6
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %60 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %36
  %66 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %67 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  br label %70

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 1220, %69 ]
  %72 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %73 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %76 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %75, i32 0, i32 3
  store %struct.i2c_client* %74, %struct.i2c_client** %76, align 8
  %77 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %78 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.mt2060_platform_data*, %struct.mt2060_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.mt2060_platform_data, %struct.mt2060_platform_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  br label %87

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi i64 [ %85, %81 ], [ -1, %86 ]
  %89 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %90 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %92 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %94 = load i32, i32* @REG_PART_REV, align 4
  %95 = call i32 @mt2060_readreg(%struct.mt2060_priv* %93, i32 %94, i64* %10)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %146

101:                                              ; preds = %87
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @PART_REV, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %146

112:                                              ; preds = %101
  %113 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %114 = load i32, i32* @REG_MISC_CTRL, align 4
  %115 = call i32 @mt2060_writereg(%struct.mt2060_priv* %113, i32 %114, i32 32)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %146

119:                                              ; preds = %112
  %120 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %121 = call i32 @mt2060_calibrate(%struct.mt2060_priv* %120)
  %122 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %123 = load i32, i32* @REG_MISC_CTRL, align 4
  %124 = call i32 @mt2060_writereg(%struct.mt2060_priv* %122, i32 %123, i32 232)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %146

128:                                              ; preds = %119
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 @dev_info(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = call i32 @memcpy(%struct.TYPE_10__* %134, i32* @mt2060_tuner_ops, i32 8)
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %137 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %142 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %141, i32 0, i32 0
  store %struct.mt2060_priv* %140, %struct.mt2060_priv** %142, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load %struct.mt2060_priv*, %struct.mt2060_priv** %8, align 8
  %145 = call i32 @i2c_set_clientdata(%struct.i2c_client* %143, %struct.mt2060_priv* %144)
  store i32 0, i32* %3, align 4
  br label %152

146:                                              ; preds = %127, %118, %109, %98, %33, %20
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %146, %128
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.mt2060_priv* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mt2060_readreg(%struct.mt2060_priv*, i32, i64*) #1

declare dso_local i32 @mt2060_writereg(%struct.mt2060_priv*, i32, i32) #1

declare dso_local i32 @mt2060_calibrate(%struct.mt2060_priv*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mt2060_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
