; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.zd1301_demod_platform_data* }
%struct.TYPE_10__ = type { i32 }
%struct.zd1301_demod_platform_data = type { i32 }
%struct.zd1301_demod_dev = type { %struct.TYPE_11__, %struct.TYPE_12__, i32, %struct.platform_device* }
%struct.TYPE_11__ = type { %struct.zd1301_demod_dev*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32*, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot proceed without platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"no parent device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zd1301_demod_gain = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"ZyDAS ZD1301 demod\00", align 1
@zd1301_demod_i2c_algorithm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"I2C adapter add failed %d\0A\00", align 1
@zd1301_demod_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"ZyDAS ZD1301 demod attached\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zd1301_demod_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_demod_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zd1301_demod_dev*, align 8
  %5 = alloca %struct.zd1301_demod_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.zd1301_demod_platform_data*, %struct.zd1301_demod_platform_data** %9, align 8
  store %struct.zd1301_demod_platform_data* %10, %struct.zd1301_demod_platform_data** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.zd1301_demod_platform_data*, %struct.zd1301_demod_platform_data** %5, align 8
  %15 = icmp ne %struct.zd1301_demod_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %114

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %114

36:                                               ; preds = %22
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.zd1301_demod_dev* @kzalloc(i32 64, i32 %37)
  store %struct.zd1301_demod_dev* %38, %struct.zd1301_demod_dev** %4, align 8
  %39 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %40 = icmp ne %struct.zd1301_demod_dev* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %114

44:                                               ; preds = %36
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %47 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %46, i32 0, i32 3
  store %struct.platform_device* %45, %struct.platform_device** %47, align 8
  %48 = load i32, i32* @zd1301_demod_gain, align 4
  %49 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %50 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %52 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %51, i32 26688, i32 33)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %111

56:                                               ; preds = %44
  %57 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %58 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %57, i32 27192, i32 7)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %111

62:                                               ; preds = %56
  %63 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %64 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strscpy(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %68 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %69 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32* @zd1301_demod_i2c_algorithm, i32** %70, align 8
  %71 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %72 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %79 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %83 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %82, i32 0, i32 1
  %84 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %85 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %83, %struct.zd1301_demod_dev* %84)
  %86 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %87 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %86, i32 0, i32 1
  %88 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %62
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %111

96:                                               ; preds = %62
  %97 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %98 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = call i32 @memcpy(i32* %99, i32* @zd1301_demod_ops, i32 4)
  %101 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %102 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %103 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store %struct.zd1301_demod_dev* %101, %struct.zd1301_demod_dev** %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %107 = call i32 @platform_set_drvdata(%struct.platform_device* %105, %struct.zd1301_demod_dev* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_info(%struct.TYPE_13__* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %120

111:                                              ; preds = %91, %61, %55
  %112 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %113 = call i32 @kfree(%struct.zd1301_demod_dev* %112)
  br label %114

114:                                              ; preds = %111, %41, %30, %16
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %114, %96
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.zd1301_demod_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.zd1301_demod_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zd1301_demod_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @kfree(%struct.zd1301_demod_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
