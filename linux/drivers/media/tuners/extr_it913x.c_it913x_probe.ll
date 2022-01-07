; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.it913x_platform_data* }
%struct.it913x_platform_data = type { i32, %struct.dvb_frontend*, i32 }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.it913x_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.it913x_dev = type { i32, i32, %struct.dvb_frontend*, i32, %struct.platform_device* }
%struct.platform_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@it913x_tuner_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"ITE IT913X %s successfully attached\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"chip_ver %u, role %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @it913x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it913x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.it913x_platform_data*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.it913x_dev*, align 8
  %7 = alloca %struct.platform_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.it913x_platform_data*, %struct.it913x_platform_data** %12, align 8
  store %struct.it913x_platform_data* %13, %struct.it913x_platform_data** %4, align 8
  %14 = load %struct.it913x_platform_data*, %struct.it913x_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %14, i32 0, i32 1
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %15, align 8
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %17)
  store %struct.platform_device_id* %18, %struct.platform_device_id** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.it913x_dev* @kzalloc(i32 32, i32 %19)
  store %struct.it913x_dev* %20, %struct.it913x_dev** %6, align 8
  %21 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %22 = icmp eq %struct.it913x_dev* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %90

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %32 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %31, i32 0, i32 4
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load %struct.it913x_platform_data*, %struct.it913x_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %37 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.it913x_platform_data*, %struct.it913x_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %38, i32 0, i32 1
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %39, align 8
  %41 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %42 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %41, i32 0, i32 2
  store %struct.dvb_frontend* %40, %struct.dvb_frontend** %42, align 8
  %43 = load %struct.platform_device_id*, %struct.platform_device_id** %7, align 8
  %44 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %47 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.it913x_platform_data*, %struct.it913x_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.it913x_platform_data, %struct.it913x_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %52 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 1
  store %struct.it913x_dev* %53, %struct.it913x_dev** %55, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @memcpy(i32* %58, i32* @it913x_tuner_ops, i32 4)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.it913x_dev* %61)
  %63 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %64 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %76

68:                                               ; preds = %29
  %69 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %70 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %75

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @dev_info(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %84 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.it913x_dev*, %struct.it913x_dev** %6, align 8
  %87 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %88)
  store i32 0, i32* %2, align 4
  br label %96

90:                                               ; preds = %23
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_6__* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %76
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.it913x_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.it913x_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
