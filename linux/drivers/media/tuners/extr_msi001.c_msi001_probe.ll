; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.msi001_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8*, i8*, i8*, i8*, i32, %struct.spi_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_8__* null, align 8
@msi001_ops = common dso_local global i32 0, align 4
@msi001_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_BANDWIDTH = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_LNA_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_MIXER_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_IF_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @msi001_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi001_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.msi001_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.msi001_dev* @kzalloc(i32 72, i32 %9)
  store %struct.msi001_dev* %10, %struct.msi001_dev** %4, align 8
  %11 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %12 = icmp ne %struct.msi001_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %19 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %18, i32 0, i32 8
  store %struct.spi_device* %17, %struct.spi_device** %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bands, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %25 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %27 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %26, i32 0, i32 1
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = call i32 @v4l2_spi_subdev_init(%struct.TYPE_6__* %27, %struct.spi_device* %28, i32* @msi001_ops)
  %30 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %31 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %30, i32 0, i32 0
  %32 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %31, i32 5)
  %33 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %34 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %33, i32 0, i32 0
  %35 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, align 4
  %36 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %34, i32* @msi001_ctrl_ops, i32 %35, i32 0, i32 1, i32 1, i32 1)
  %37 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %38 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %40 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %39, i32 0, i32 0
  %41 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH, align 4
  %42 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %40, i32* @msi001_ctrl_ops, i32 %41, i32 200000, i32 8000000, i32 1, i32 200000)
  %43 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %44 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %46 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %45, i32 0, i32 5
  %47 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %46, i32 0, i32 0)
  %48 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %49 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %48, i32 0, i32 0
  %50 = load i32, i32* @V4L2_CID_RF_TUNER_LNA_GAIN, align 4
  %51 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %49, i32* @msi001_ctrl_ops, i32 %50, i32 0, i32 1, i32 1, i32 1)
  %52 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %53 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %55 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %54, i32 0, i32 0
  %56 = load i32, i32* @V4L2_CID_RF_TUNER_MIXER_GAIN, align 4
  %57 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %55, i32* @msi001_ctrl_ops, i32 %56, i32 0, i32 1, i32 1, i32 1)
  %58 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %59 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %61 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %60, i32 0, i32 0
  %62 = load i32, i32* @V4L2_CID_RF_TUNER_IF_GAIN, align 4
  %63 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %61, i32* @msi001_ctrl_ops, i32 %62, i32 0, i32 59, i32 1, i32 0)
  %64 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %65 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %67 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %16
  %72 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %73 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %5, align 4
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %85

79:                                               ; preds = %16
  %80 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %81 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %80, i32 0, i32 0
  %82 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %83 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %84, align 8
  store i32 0, i32* %2, align 4
  br label %93

85:                                               ; preds = %71
  %86 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %87 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %86, i32 0, i32 0
  %88 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %87)
  %89 = load %struct.msi001_dev*, %struct.msi001_dev** %4, align 8
  %90 = call i32 @kfree(%struct.msi001_dev* %89)
  br label %91

91:                                               ; preds = %85, %13
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %79
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.msi001_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_spi_subdev_init(%struct.TYPE_6__*, %struct.spi_device*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.msi001_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
