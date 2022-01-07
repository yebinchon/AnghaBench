; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.si476x_radio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @si476x_radio_fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_fops_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.si476x_radio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.si476x_radio* @video_drvdata(%struct.file* %8)
  store %struct.si476x_radio* %9, %struct.si476x_radio** %5, align 8
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
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %23 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %31 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %35 = call i32 @poll_wait(%struct.file* %29, i32* %33, %struct.poll_table_struct* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %38 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EPOLLHUP, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %47 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @kfifo_is_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EPOLLIN, align 4
  %54 = load i32, i32* @EPOLLRDNORM, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, %struct.poll_table_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
