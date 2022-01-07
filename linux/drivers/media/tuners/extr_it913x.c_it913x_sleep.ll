; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.it913x_dev* }
%struct.it913x_dev = type { i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"role %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@IT913X_ROLE_DUAL_MASTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"role %u, len %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"?\1F?>\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @it913x_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it913x_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.it913x_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.it913x_dev*, %struct.it913x_dev** %9, align 8
  store %struct.it913x_dev* %10, %struct.it913x_dev** %4, align 8
  %11 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %12 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %11, i32 0, i32 3
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %17 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %21 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %23 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @regmap_bulk_write(i32 %24, i32 8449088, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %31 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @IT913X_ROLE_DUAL_MASTER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  br label %38

37:                                               ; preds = %29
  store i32 15, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %42 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %47 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @regmap_bulk_write(i32 %48, i32 8449026, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %95

54:                                               ; preds = %38
  %55 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %56 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_bulk_write(i32 %57, i32 8449042, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %95

62:                                               ; preds = %54
  %63 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %64 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @regmap_bulk_write(i32 %65, i32 8449047, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %95

70:                                               ; preds = %62
  %71 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %72 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @regmap_bulk_write(i32 %73, i32 8449058, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %95

78:                                               ; preds = %70
  %79 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %80 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @regmap_bulk_write(i32 %81, i32 8449056, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %95

86:                                               ; preds = %78
  %87 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %88 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @regmap_bulk_write(i32 %89, i32 8449087, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %95

94:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %101

95:                                               ; preds = %93, %85, %77, %69, %61, %53, %28
  %96 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
