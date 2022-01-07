; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_dualwatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_dualwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }

@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1_LANG2 = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dualwatch: change stereo flag from 0x%x to 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"dualwatch: changing stereo flag failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_dualwatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_dualwatch(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.v4l2_tuner, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  store i64 512, i64* %5, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @v4l2_ctrl_g_ctrl(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = call i32 @memset(%struct.v4l2_tuner* %3, i32 0, i32 16)
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = load i32, i32* @tuner, align 4
  %14 = load i32, i32* @g_tuner, align 4
  %15 = call i32 @cx18_call_all(%struct.cx18* %12, i32 %13, i32 %14, %struct.v4l2_tuner* %3)
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_TUNER_MODE_LANG1_LANG2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 512, i64* %4, align 8
  br label %27

27:                                               ; preds = %26, %20, %1
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.cx18*, %struct.cx18** %2, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %49

34:                                               ; preds = %27
  %35 = load %struct.cx18*, %struct.cx18** %2, align 8
  %36 = getelementptr inbounds %struct.cx18, %struct.cx18* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load %struct.cx18*, %struct.cx18** %2, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @v4l2_ctrl_s_ctrl(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %33, %47, %34
  ret void
}

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i64 @v4l2_ctrl_s_ctrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
