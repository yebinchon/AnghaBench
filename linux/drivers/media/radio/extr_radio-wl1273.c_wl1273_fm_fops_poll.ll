; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.wl1273_device = type { i64, i64, i32, %struct.file*, %struct.wl1273_core* }
%struct.wl1273_core = type { i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@WL1273_MODE_RX = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@WL1273_MODE_TX = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @wl1273_fm_fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_fops_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.wl1273_device*, align 8
  %7 = alloca %struct.wl1273_core*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @video_devdata(%struct.file* %8)
  %10 = call %struct.wl1273_device* @video_get_drvdata(i32 %9)
  store %struct.wl1273_device* %10, %struct.wl1273_device** %6, align 8
  %11 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %12 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %11, i32 0, i32 4
  %13 = load %struct.wl1273_core*, %struct.wl1273_core** %12, align 8
  store %struct.wl1273_core* %13, %struct.wl1273_core** %7, align 8
  %14 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %15 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %14, i32 0, i32 3
  %16 = load %struct.file*, %struct.file** %15, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %20 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %19, i32 0, i32 3
  %21 = load %struct.file*, %struct.file** %20, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = icmp ne %struct.file* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EPOLLERR, align 4
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %18, %2
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %29 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %28, i32 0, i32 3
  store %struct.file* %27, %struct.file** %29, align 8
  %30 = load %struct.wl1273_core*, %struct.wl1273_core** %7, align 8
  %31 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WL1273_MODE_RX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %26
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %38 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %37, i32 0, i32 2
  %39 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %40 = call i32 @poll_wait(%struct.file* %36, i32* %38, %struct.poll_table_struct* %39)
  %41 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %42 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wl1273_device*, %struct.wl1273_device** %6, align 8
  %45 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @EPOLLIN, align 4
  %50 = load i32, i32* @EPOLLRDNORM, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %35
  br label %64

53:                                               ; preds = %26
  %54 = load %struct.wl1273_core*, %struct.wl1273_core** %7, align 8
  %55 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WL1273_MODE_TX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @EPOLLOUT, align 4
  %61 = load i32, i32* @EPOLLWRNORM, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %48, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.wl1273_device* @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
