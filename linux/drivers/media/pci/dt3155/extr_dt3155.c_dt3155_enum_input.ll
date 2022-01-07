; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"VID%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"J2/VID0\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @dt3155_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %8 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strscpy(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_STD_ALL, align 4
  %38 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
