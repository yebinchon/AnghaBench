; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_media_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_media_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, %struct.TYPE_2__*, %struct.v4l2_device, %struct.media_device }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_device = type { %struct.media_device*, i32 }
%struct.media_device = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"SAMSUNG S3C%s CAMIF\00", align 1
@S3C6410_CAMIF_IP_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"6410\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"244X\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"s3c-camif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*)* @camif_media_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_media_dev_init(%struct.camif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  %8 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %9 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %8, i32 0, i32 3
  store %struct.media_device* %9, %struct.media_device** %4, align 8
  %10 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %11 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %10, i32 0, i32 2
  store %struct.v4l2_device* %11, %struct.v4l2_device** %5, align 8
  %12 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %13 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.media_device*, %struct.media_device** %4, align 8
  %18 = call i32 @memset(%struct.media_device* %17, i32 0, i32 16)
  %19 = load %struct.media_device*, %struct.media_device** %4, align 8
  %20 = getelementptr inbounds %struct.media_device, %struct.media_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @S3C6410_CAMIF_IP_REV, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @snprintf(i32 %21, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.media_device*, %struct.media_device** %4, align 8
  %29 = getelementptr inbounds %struct.media_device, %struct.media_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strscpy(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.media_device*, %struct.media_device** %4, align 8
  %34 = getelementptr inbounds %struct.media_device, %struct.media_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %36 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.media_device*, %struct.media_device** %4, align 8
  %39 = getelementptr inbounds %struct.media_device, %struct.media_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strscpy(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %44 = load %struct.media_device*, %struct.media_device** %4, align 8
  %45 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %45, i32 0, i32 0
  store %struct.media_device* %44, %struct.media_device** %46, align 8
  %47 = load %struct.media_device*, %struct.media_device** %4, align 8
  %48 = call i32 @media_device_init(%struct.media_device* %47)
  %49 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %50 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %53 = call i32 @v4l2_device_register(i32 %51, %struct.v4l2_device* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %1
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %1
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.media_device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_device_init(%struct.media_device*) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
