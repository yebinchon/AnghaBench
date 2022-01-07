; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.media_request* }
%struct.media_request = type { i64, i32, i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLPRI = common dso_local global i32 0, align 4
@MEDIA_REQUEST_STATE_COMPLETE = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_QUEUED = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @media_request_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_request_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.media_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.media_request*, %struct.media_request** %10, align 8
  store %struct.media_request* %11, %struct.media_request** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %13 = call i32 @poll_requested_events(%struct.poll_table_struct* %12)
  %14 = load i32, i32* @EPOLLPRI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.media_request*, %struct.media_request** %6, align 8
  %21 = getelementptr inbounds %struct.media_request, %struct.media_request* %20, i32 0, i32 2
  %22 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %23 = call i32 @poll_wait(%struct.file* %19, i32* %21, %struct.poll_table_struct* %22)
  %24 = load %struct.media_request*, %struct.media_request** %6, align 8
  %25 = getelementptr inbounds %struct.media_request, %struct.media_request* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.media_request*, %struct.media_request** %6, align 8
  %29 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MEDIA_REQUEST_STATE_COMPLETE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @EPOLLPRI, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %18
  %36 = load %struct.media_request*, %struct.media_request** %6, align 8
  %37 = getelementptr inbounds %struct.media_request, %struct.media_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MEDIA_REQUEST_STATE_QUEUED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EPOLLERR, align 4
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41, %33
  %45 = load %struct.media_request*, %struct.media_request** %6, align 8
  %46 = getelementptr inbounds %struct.media_request, %struct.media_request* %45, i32 0, i32 1
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
