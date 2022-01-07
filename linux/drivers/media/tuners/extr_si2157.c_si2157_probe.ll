; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.si2157_config* }
%struct.si2157_config = type { i64, i32, i32, %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.i2c_client*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.si2157_dev = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_11__*, i64, i32, i32, i32, i32, %struct.dvb_frontend* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.si2157_cmd = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@si2157_stat_work = common dso_local global i32 0, align 4
@si2157_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Silicon Labs %s successfully attached\0A\00", align 1
@SI2157_CHIPTYPE_SI2141 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Si2141\00", align 1
@SI2157_CHIPTYPE_SI2146 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"Si2146\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Si2147/2148/2157/2158\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@MEDIA_ENT_F_TUNER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@PAD_SIGNAL_ANALOG = common dso_local global i8* null, align 8
@PAD_SIGNAL_AUDIO = common dso_local global i8* null, align 8
@SI2157_NUM_PADS = common dso_local global i32 0, align 4
@SI2157_PAD_AUD_OUT = common dso_local global i64 0, align 8
@SI2157_PAD_RF_INPUT = common dso_local global i64 0, align 8
@SI2157_PAD_VID_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si2157_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2157_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si2157_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.si2157_dev*, align 8
  %9 = alloca %struct.si2157_cmd, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.si2157_config*, %struct.si2157_config** %13, align 8
  store %struct.si2157_config* %14, %struct.si2157_config** %6, align 8
  %15 = load %struct.si2157_config*, %struct.si2157_config** %6, align 8
  %16 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %15, i32 0, i32 3
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %16, align 8
  store %struct.dvb_frontend* %17, %struct.dvb_frontend** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.si2157_dev* @kzalloc(i32 64, i32 %18)
  store %struct.si2157_dev* %19, %struct.si2157_dev** %8, align 8
  %20 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %21 = icmp ne %struct.si2157_dev* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.si2157_dev* %30)
  %32 = load %struct.si2157_config*, %struct.si2157_config** %6, align 8
  %33 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %32, i32 0, i32 3
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %33, align 8
  %35 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %36 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %35, i32 0, i32 9
  store %struct.dvb_frontend* %34, %struct.dvb_frontend** %36, align 8
  %37 = load %struct.si2157_config*, %struct.si2157_config** %6, align 8
  %38 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %41 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.si2157_config*, %struct.si2157_config** %6, align 8
  %43 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %46 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %51 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %53 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %52, i32 0, i32 1
  store i32 5000000, i32* %53, align 8
  %54 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %55 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %54, i32 0, i32 6
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %58 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %57, i32 0, i32 5
  %59 = load i32, i32* @si2157_stat_work, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %9, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %9, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @si2157_cmd_execute(%struct.i2c_client* %63, %struct.si2157_cmd* %9)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %28
  br label %95

68:                                               ; preds = %28
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = call i32 @memcpy(i32* %71, i32* @si2157_ops, i32 4)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  store %struct.i2c_client* %73, %struct.i2c_client** %75, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %79 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SI2157_CHIPTYPE_SI2141, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %92

84:                                               ; preds = %68
  %85 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %86 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SI2157_CHIPTYPE_SI2146, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)
  br label %92

92:                                               ; preds = %84, %83
  %93 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %83 ], [ %91, %84 ]
  %94 = call i32 @dev_info(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  store i32 0, i32* %3, align 4
  br label %104

95:                                               ; preds = %67
  %96 = load %struct.si2157_dev*, %struct.si2157_dev** %8, align 8
  %97 = call i32 @kfree(%struct.si2157_dev* %96)
  br label %98

98:                                               ; preds = %95, %22
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dev_dbg(%struct.TYPE_12__* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.si2157_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si2157_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @si2157_cmd_execute(%struct.i2c_client*, %struct.si2157_cmd*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.si2157_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
