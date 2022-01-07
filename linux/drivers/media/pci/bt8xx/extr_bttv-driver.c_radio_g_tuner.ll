; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32, i64, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @radio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 0
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 0, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strscpy(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %27 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bttv*, %struct.bttv** %9, align 8
  %31 = call i32 @radio_enable(%struct.bttv* %30)
  %32 = load %struct.bttv*, %struct.bttv** %9, align 8
  %33 = load i32, i32* @tuner, align 4
  %34 = load i32, i32* @g_tuner, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = call i32 @bttv_call_all(%struct.bttv* %32, i32 %33, i32 %34, %struct.v4l2_tuner* %35)
  %37 = load %struct.bttv*, %struct.bttv** %9, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 2
  %39 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.bttv*, %struct.bttv** %9, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 2
  %44 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %43, align 8
  %45 = load %struct.bttv*, %struct.bttv** %9, align 8
  %46 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %47 = call i32 %44(%struct.bttv* %45, %struct.v4l2_tuner* %46, i32 0)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load %struct.bttv*, %struct.bttv** %9, align 8
  %50 = getelementptr inbounds %struct.bttv, %struct.bttv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.bttv*, %struct.bttv** %9, align 8
  %55 = getelementptr inbounds %struct.bttv, %struct.bttv* %54, i32 0, i32 0
  %56 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %57 = call i32 @snd_tea575x_g_tuner(i32* %55, %struct.v4l2_tuner* %56)
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %53, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @radio_enable(%struct.bttv*) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @snd_tea575x_g_tuner(i32*, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
