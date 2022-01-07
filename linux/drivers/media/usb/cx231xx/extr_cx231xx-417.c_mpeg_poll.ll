; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_mpeg_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_mpeg_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, %struct.TYPE_2__, %struct.cx231xx* }
%struct.TYPE_2__ = type { i32 }
%struct.cx231xx = type { i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @mpeg_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %10 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %11 = call i32 @poll_requested_events(%struct.poll_table_struct* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %13, align 8
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %7, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 2
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %19 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %18, i32 0, i32 1
  %20 = call i64 @v4l2_event_pending(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @EPOLLPRI, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %29 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %32 = call i32 @poll_wait(%struct.file* %27, i32* %30, %struct.poll_table_struct* %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EPOLLIN, align 4
  %36 = load i32, i32* @EPOLLRDNORM, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %48 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %47, i32 0, i32 0
  %49 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %50 = call i32 @videobuf_poll_stream(%struct.file* %46, i32* %48, %struct.poll_table_struct* %49)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %42, %40
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
