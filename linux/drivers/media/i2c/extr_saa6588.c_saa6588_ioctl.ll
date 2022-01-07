; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6588.c_saa6588_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6588.c_saa6588_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa6588 = type { i32, i32 }
%struct.saa6588_command = type { i32, i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.v4l2_subdev*, i32, i8*)* @saa6588_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @saa6588_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.saa6588*, align 8
  %9 = alloca %struct.saa6588_command*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %10)
  store %struct.saa6588* %11, %struct.saa6588** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.saa6588_command*
  store %struct.saa6588_command* %13, %struct.saa6588_command** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %54 [
    i32 130, label %15
    i32 128, label %25
    i32 129, label %29
  ]

15:                                               ; preds = %3
  %16 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %17 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %19 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %18, i32 0, i32 1
  %20 = call i32 @wake_up_interruptible(i32* %19)
  %21 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %22 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %24 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %27 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %28 = call i32 @read_from_buf(%struct.saa6588* %26, %struct.saa6588_command* %27)
  br label %57

29:                                               ; preds = %3
  %30 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %31 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %33 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @EPOLLIN, align 4
  %38 = load i32, i32* @EPOLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %41 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %46 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.saa6588*, %struct.saa6588** %8, align 8
  %49 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %48, i32 0, i32 1
  %50 = load %struct.saa6588_command*, %struct.saa6588_command** %9, align 8
  %51 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @poll_wait(i32 %47, i32* %49, i32 %52)
  br label %57

54:                                               ; preds = %3
  %55 = load i64, i64* @ENOIOCTLCMD, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %58

57:                                               ; preds = %44, %25, %15
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local %struct.saa6588* @to_saa6588(%struct.v4l2_subdev*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @read_from_buf(%struct.saa6588*, %struct.saa6588_command*) #1

declare dso_local i32 @poll_wait(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
