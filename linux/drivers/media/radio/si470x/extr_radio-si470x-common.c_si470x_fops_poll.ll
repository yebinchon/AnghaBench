; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.si470x_device = type { i32*, i64, i64, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @si470x_fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.si470x_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.si470x_device* @video_drvdata(%struct.file* %8)
  store %struct.si470x_device* %9, %struct.si470x_device** %5, align 8
  %10 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %11 = call i32 @poll_requested_events(%struct.poll_table_struct* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %14 = call i32 @v4l2_ctrl_poll(%struct.file* %12, %struct.poll_table_struct* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EPOLLIN, align 4
  %17 = load i32, i32* @EPOLLRDNORM, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %23 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @SYSCONFIG1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %33 = call i32 @si470x_rds_on(%struct.si470x_device* %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.file*, %struct.file** %3, align 8
  %36 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %37 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %36, i32 0, i32 3
  %38 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %39 = call i32 @poll_wait(%struct.file* %35, i32* %37, %struct.poll_table_struct* %38)
  %40 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %44 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* @EPOLLIN, align 4
  %49 = load i32, i32* @EPOLLRDNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %34
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @si470x_rds_on(%struct.si470x_device*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
