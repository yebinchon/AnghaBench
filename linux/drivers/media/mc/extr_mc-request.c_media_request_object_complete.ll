; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request_object = type { i32, %struct.media_request* }
%struct.media_request = type { i64, i32, i32, i32 }

@MEDIA_REQUEST_STATE_QUEUED = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media_request_object_complete(%struct.media_request_object* %0) #0 {
  %2 = alloca %struct.media_request_object*, align 8
  %3 = alloca %struct.media_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.media_request_object* %0, %struct.media_request_object** %2, align 8
  %6 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %7 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %6, i32 0, i32 1
  %8 = load %struct.media_request*, %struct.media_request** %7, align 8
  store %struct.media_request* %8, %struct.media_request** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.media_request*, %struct.media_request** %3, align 8
  %10 = getelementptr inbounds %struct.media_request, %struct.media_request* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %14 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %20 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.media_request*, %struct.media_request** %3, align 8
  %22 = getelementptr inbounds %struct.media_request, %struct.media_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %18
  %30 = load %struct.media_request*, %struct.media_request** %3, align 8
  %31 = getelementptr inbounds %struct.media_request, %struct.media_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MEDIA_REQUEST_STATE_QUEUED, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %18
  br label %53

39:                                               ; preds = %29
  %40 = load %struct.media_request*, %struct.media_request** %3, align 8
  %41 = getelementptr inbounds %struct.media_request, %struct.media_request* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* @MEDIA_REQUEST_STATE_COMPLETE, align 8
  %47 = load %struct.media_request*, %struct.media_request** %3, align 8
  %48 = getelementptr inbounds %struct.media_request, %struct.media_request* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.media_request*, %struct.media_request** %3, align 8
  %50 = getelementptr inbounds %struct.media_request, %struct.media_request* %49, i32 0, i32 2
  %51 = call i32 @wake_up_interruptible_all(i32* %50)
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %39
  br label %53

53:                                               ; preds = %52, %38, %17
  %54 = load %struct.media_request*, %struct.media_request** %3, align 8
  %55 = getelementptr inbounds %struct.media_request, %struct.media_request* %54, i32 0, i32 1
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.media_request*, %struct.media_request** %3, align 8
  %62 = call i32 @media_request_put(%struct.media_request* %61)
  br label %63

63:                                               ; preds = %60, %53
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @media_request_put(%struct.media_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
