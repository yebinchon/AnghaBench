; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.saa7146_dev = type { i64 }
%struct.av7110 = type { i32, i32, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [33 x i8] c"VIDIOC_S_FREQUENCY: freq:0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@MSP_WR_DSP = common dso_local global i32 0, align 4
@ANALOG_TUNER_VES1820 = common dso_local global i32 0, align 4
@ANALOG_TUNER_STV0297 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.av7110*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.av7110*
  store %struct.av7110* %17, %struct.av7110** %9, align 8
  %18 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.av7110*, %struct.av7110** %9, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.av7110*, %struct.av7110** %9, align 8
  %28 = getelementptr inbounds %struct.av7110, %struct.av7110* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %26
  %35 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %36 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %94

43:                                               ; preds = %34
  %44 = load %struct.av7110*, %struct.av7110** %9, align 8
  %45 = load i32, i32* @MSP_WR_DSP, align 4
  %46 = call i32 @msp_writereg(%struct.av7110* %44, i32 %45, i32 0, i32 65504)
  %47 = load %struct.av7110*, %struct.av7110** %9, align 8
  %48 = load i32, i32* @MSP_WR_DSP, align 4
  %49 = call i32 @msp_writereg(%struct.av7110* %47, i32 %48, i32 7, i32 65504)
  %50 = load %struct.av7110*, %struct.av7110** %9, align 8
  %51 = getelementptr inbounds %struct.av7110, %struct.av7110* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %58 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ves1820_set_tv_freq(%struct.saa7146_dev* %57, i32 %60)
  br label %76

62:                                               ; preds = %43
  %63 = load %struct.av7110*, %struct.av7110** %9, align 8
  %64 = getelementptr inbounds %struct.av7110, %struct.av7110* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ANALOG_TUNER_STV0297, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %71 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @stv0297_set_tv_freq(%struct.saa7146_dev* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.av7110*, %struct.av7110** %9, align 8
  %81 = getelementptr inbounds %struct.av7110, %struct.av7110* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.av7110*, %struct.av7110** %9, align 8
  %83 = load i32, i32* @MSP_WR_DSP, align 4
  %84 = call i32 @msp_writereg(%struct.av7110* %82, i32 %83, i32 21, i32 63)
  %85 = load %struct.av7110*, %struct.av7110** %9, align 8
  %86 = load i32, i32* @MSP_WR_DSP, align 4
  %87 = call i32 @msp_writereg(%struct.av7110* %85, i32 %86, i32 21, i32 0)
  %88 = load %struct.av7110*, %struct.av7110** %9, align 8
  %89 = load i32, i32* @MSP_WR_DSP, align 4
  %90 = call i32 @msp_writereg(%struct.av7110* %88, i32 %89, i32 0, i32 20224)
  %91 = load %struct.av7110*, %struct.av7110** %9, align 8
  %92 = load i32, i32* @MSP_WR_DSP, align 4
  %93 = call i32 @msp_writereg(%struct.av7110* %91, i32 %92, i32 7, i32 20224)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %76, %40, %31
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @ves1820_set_tv_freq(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @stv0297_set_tv_freq(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
