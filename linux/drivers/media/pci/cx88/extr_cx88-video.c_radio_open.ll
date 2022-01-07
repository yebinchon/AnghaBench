; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_radio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_radio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@MO_GP3_IO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP1_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@WW_I2SADC = common dso_local global i32 0, align 4
@WW_FM = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @radio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cx8800_dev*, align 8
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.cx8800_dev* @video_drvdata(%struct.file* %7)
  store %struct.cx8800_dev* %8, %struct.cx8800_dev** %4, align 8
  %9 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %9, i32 0, i32 0
  %11 = load %struct.cx88_core*, %struct.cx88_core** %10, align 8
  store %struct.cx88_core* %11, %struct.cx88_core** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call i32 @v4l2_fh_open(%struct.file* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load i32, i32* @MO_GP3_IO, align 4
  %20 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cx_write(i32 %19, i32 %24)
  %26 = load i32, i32* @MO_GP0_IO, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cx_write(i32 %26, i32 %31)
  %33 = load i32, i32* @MO_GP1_IO, align 4
  %34 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %35 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cx_write(i32 %33, i32 %38)
  %40 = load i32, i32* @MO_GP2_IO, align 4
  %41 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %42 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cx_write(i32 %40, i32 %45)
  %47 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %48 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %18
  %54 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %55 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %60 = load i32, i32* @audio, align 4
  %61 = load i32, i32* @s_routing, align 4
  %62 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %63 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.cx88_core*, i32, i32, ...) @call_all(%struct.cx88_core* %59, i32 %60, i32 %61, i64 %66, i32 0, i32 0)
  br label %68

68:                                               ; preds = %58, %53
  %69 = load i32, i32* @WW_I2SADC, align 4
  %70 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %71 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %73 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %72)
  br label %83

74:                                               ; preds = %18
  %75 = load i32, i32* @WW_FM, align 4
  %76 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %77 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %79 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %78)
  %80 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %81 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %82 = call i32 @cx88_set_stereo(%struct.cx88_core* %80, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %74, %68
  %84 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %85 = load i32, i32* @tuner, align 4
  %86 = load i32, i32* @s_radio, align 4
  %87 = call i32 (%struct.cx88_core*, i32, i32, ...) @call_all(%struct.cx88_core* %84, i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.cx8800_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, ...) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @cx88_set_stereo(%struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
