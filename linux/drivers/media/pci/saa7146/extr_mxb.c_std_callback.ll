; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_std_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_std_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.saa7146_standard = type { i64 }
%struct.mxb = type { i64 }

@V4L2_STD_PAL_I = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"VIDIOC_S_STD: setting mxb for PAL_I\0A\00", align 1
@GPIO_CTRL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_gpio = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_standard*)* @std_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_callback(%struct.saa7146_dev* %0, %struct.saa7146_standard* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_standard*, align 8
  %5 = alloca %struct.mxb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_standard* %1, %struct.saa7146_standard** %4, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mxb*
  store %struct.mxb* %11, %struct.mxb** %5, align 8
  %12 = load i64, i64* @V4L2_STD_PAL_I, align 8
  %13 = load %struct.saa7146_standard*, %struct.saa7146_standard** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load i64, i64* @V4L2_STD_PAL_I, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = call i32 @DEB_D(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %22 = load i32, i32* @GPIO_CTRL, align 4
  %23 = call i32 @saa7146_write(%struct.saa7146_dev* %21, i32 %22, i32 4210768)
  %24 = load %struct.mxb*, %struct.mxb** %5, align 8
  %25 = load i32, i32* @core, align 4
  %26 = load i32, i32* @s_gpio, align 4
  %27 = call i32 @saa7111a_call(%struct.mxb* %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.mxb*, %struct.mxb** %5, align 8
  %29 = load i32, i32* @video, align 4
  %30 = load i32, i32* @s_std, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @saa7111a_call(%struct.mxb* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mxb*, %struct.mxb** %5, align 8
  %34 = getelementptr inbounds %struct.mxb, %struct.mxb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %17
  %38 = load %struct.mxb*, %struct.mxb** %5, align 8
  %39 = load i32, i32* @video, align 4
  %40 = load i32, i32* @s_std, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @tuner_call(%struct.mxb* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %17
  br label %80

44:                                               ; preds = %2
  %45 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mxb*, %struct.mxb** %5, align 8
  %47 = getelementptr inbounds %struct.mxb, %struct.mxb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.saa7146_standard*, %struct.saa7146_standard** %4, align 8
  %52 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %44
  %56 = call i32 @DEB_D(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %58 = load i32, i32* @GPIO_CTRL, align 4
  %59 = call i32 @saa7146_write(%struct.saa7146_dev* %57, i32 %58, i32 4210768)
  %60 = load %struct.mxb*, %struct.mxb** %5, align 8
  %61 = load i32, i32* @core, align 4
  %62 = load i32, i32* @s_gpio, align 4
  %63 = call i32 @saa7111a_call(%struct.mxb* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.mxb*, %struct.mxb** %5, align 8
  %65 = load i32, i32* @video, align 4
  %66 = load i32, i32* @s_std, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @saa7111a_call(%struct.mxb* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.mxb*, %struct.mxb** %5, align 8
  %70 = getelementptr inbounds %struct.mxb, %struct.mxb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.mxb*, %struct.mxb** %5, align 8
  %75 = load i32, i32* @video, align 4
  %76 = load i32, i32* @s_std, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @tuner_call(%struct.mxb* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %55
  br label %80

80:                                               ; preds = %79, %43
  ret i32 0
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7111a_call(%struct.mxb*, i32, i32, i32) #1

declare dso_local i32 @tuner_call(%struct.mxb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
