; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @bttv_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
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
  br label %62

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bttv*, %struct.bttv** %9, align 8
  %30 = load i32, i32* @tuner, align 4
  %31 = load i32, i32* @g_tuner, align 4
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %33 = call i32 @bttv_call_all(%struct.bttv* %29, i32 %30, i32 %31, %struct.v4l2_tuner* %32)
  %34 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strscpy(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %38 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @BT848_DSTATUS, align 4
  %42 = call i32 @btread(i32 %41)
  %43 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 1
  store i32 65535, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %22
  %50 = load %struct.bttv*, %struct.bttv** %9, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 0
  %52 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.bttv*, %struct.bttv** %9, align 8
  %56 = getelementptr inbounds %struct.bttv, %struct.bttv* %55, i32 0, i32 0
  %57 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %56, align 8
  %58 = load %struct.bttv*, %struct.bttv** %9, align 8
  %59 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %60 = call i32 %57(%struct.bttv* %58, %struct.v4l2_tuner* %59, i32 0)
  br label %61

61:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
