; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s2250 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Standard: %s\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@V4L2_STD_PAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Input: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"S-video\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Audio input: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Mic Boost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s2250_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2250_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.s2250*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.s2250* @to_state(%struct.v4l2_subdev* %4)
  store %struct.s2250* %5, %struct.s2250** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.s2250*, %struct.s2250** %3, align 8
  %8 = getelementptr inbounds %struct.s2250, %struct.s2250* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_STD_NTSC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.s2250*, %struct.s2250** %3, align 8
  %15 = getelementptr inbounds %struct.s2250, %struct.s2250* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_STD_PAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.s2250*, %struct.s2250** %3, align 8
  %22 = getelementptr inbounds %struct.s2250, %struct.s2250* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_STD_SECAM, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %28

28:                                               ; preds = %20, %19
  %29 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %19 ], [ %27, %20 ]
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %12 ], [ %29, %28 ]
  %32 = call i32 @v4l2_info(%struct.v4l2_subdev* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %34 = load %struct.s2250*, %struct.s2250** %3, align 8
  %35 = getelementptr inbounds %struct.s2250, %struct.s2250* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %46

39:                                               ; preds = %30
  %40 = load %struct.s2250*, %struct.s2250** %3, align 8
  %41 = getelementptr inbounds %struct.s2250, %struct.s2250* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  br label %46

46:                                               ; preds = %39, %38
  %47 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %38 ], [ %45, %39 ]
  %48 = call i32 @v4l2_info(%struct.v4l2_subdev* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %50 = load %struct.s2250*, %struct.s2250** %3, align 8
  %51 = getelementptr inbounds %struct.s2250, %struct.s2250* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %70

55:                                               ; preds = %46
  %56 = load %struct.s2250*, %struct.s2250** %3, align 8
  %57 = getelementptr inbounds %struct.s2250, %struct.s2250* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %68

61:                                               ; preds = %55
  %62 = load %struct.s2250*, %struct.s2250** %3, align 8
  %63 = getelementptr inbounds %struct.s2250, %struct.s2250* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  br label %68

68:                                               ; preds = %61, %60
  %69 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %60 ], [ %67, %61 ]
  br label %70

70:                                               ; preds = %68, %54
  %71 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %54 ], [ %69, %68 ]
  %72 = call i32 @v4l2_info(%struct.v4l2_subdev* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %74 = call i32 @v4l2_ctrl_subdev_log_status(%struct.v4l2_subdev* %73)
  ret i32 %74
}

declare dso_local %struct.s2250* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_subdev_log_status(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
