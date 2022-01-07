; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_sdr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_sdr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_sdr = type { i32, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32*, %struct.TYPE_6__*, i32*, i32 (%struct.TYPE_7__*)*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"R-Car DRIF\00", align 1
@rcar_drif_fops = common dso_local global i32 0, align 4
@rcar_drif_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_SDR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@VFL_TYPE_SDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed video_register_device (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif_sdr*)* @rcar_drif_sdr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_sdr_register(%struct.rcar_drif_sdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_drif_sdr*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_drif_sdr* %0, %struct.rcar_drif_sdr** %3, align 8
  %5 = call %struct.TYPE_7__* (...) @video_device_alloc()
  %6 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %6, i32 0, i32 1
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %7, align 8
  %8 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %17 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 7
  store i32* @rcar_drif_fops, i32** %25, align 8
  %26 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %27 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  store i32* @rcar_drif_ioctl_ops, i32** %29, align 8
  %30 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  store i32 (%struct.TYPE_7__*)* @video_device_release, i32 (%struct.TYPE_7__*)** %33, align 8
  %34 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %35 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %34, i32 0, i32 6
  %36 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %37 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store i32* %35, i32** %39, align 8
  %40 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %41 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %40, i32 0, i32 5
  %42 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %46, i32 0, i32 4
  %48 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %49 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32* %47, i32** %53, align 8
  %54 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %55 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %54, i32 0, i32 3
  %56 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %57 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32* %55, i32** %59, align 8
  %60 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %61 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %60, i32 0, i32 2
  %62 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %63 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32* %61, i32** %65, align 8
  %66 = load i32, i32* @V4L2_CAP_SDR_CAPTURE, align 4
  %67 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %74 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %78 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %81 = call i32 @video_set_drvdata(%struct.TYPE_7__* %79, %struct.rcar_drif_sdr* %80)
  %82 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %83 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* @VFL_TYPE_SDR, align 4
  %86 = call i32 @video_register_device(%struct.TYPE_7__* %84, i32 %85, i32 -1)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %15
  %90 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %91 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = call i32 @video_device_release(%struct.TYPE_7__* %92)
  %94 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %95 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %94, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %95, align 8
  %96 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %3, align 8
  %97 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %89, %15
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_7__* @video_device_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_7__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.rcar_drif_sdr*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
