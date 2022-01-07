; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_ioctl_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_ioctl_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request = type { i64, i32, i32, %struct.media_device* }
%struct.media_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.media_request*)*, i32 (%struct.media_request*)* }

@.str = private unnamed_addr constant [19 x i8] c"request: queue %s\0A\00", align 1
@MEDIA_REQUEST_STATE_IDLE = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_VALIDATING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"request: unable to queue %s, request in state %s\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_QUEUED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"request: can't queue %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.media_request*)* @media_request_ioctl_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @media_request_ioctl_queue(%struct.media_request* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.media_request*, align 8
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.media_request* %0, %struct.media_request** %3, align 8
  %8 = load %struct.media_request*, %struct.media_request** %3, align 8
  %9 = getelementptr inbounds %struct.media_request, %struct.media_request* %8, i32 0, i32 3
  %10 = load %struct.media_device*, %struct.media_device** %9, align 8
  store %struct.media_device* %10, %struct.media_device** %4, align 8
  %11 = load %struct.media_device*, %struct.media_device** %4, align 8
  %12 = getelementptr inbounds %struct.media_device, %struct.media_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.media_request*, %struct.media_request** %3, align 8
  %15 = getelementptr inbounds %struct.media_request, %struct.media_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.media_device*, %struct.media_device** %4, align 8
  %19 = getelementptr inbounds %struct.media_device, %struct.media_device* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.media_request*, %struct.media_request** %3, align 8
  %22 = call i32 @media_request_get(%struct.media_request* %21)
  %23 = load %struct.media_request*, %struct.media_request** %3, align 8
  %24 = getelementptr inbounds %struct.media_request, %struct.media_request* %23, i32 0, i32 2
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.media_request*, %struct.media_request** %3, align 8
  %28 = getelementptr inbounds %struct.media_request, %struct.media_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MEDIA_REQUEST_STATE_IDLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @MEDIA_REQUEST_STATE_VALIDATING, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.media_request*, %struct.media_request** %3, align 8
  %36 = getelementptr inbounds %struct.media_request, %struct.media_request* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.media_request*, %struct.media_request** %3, align 8
  %39 = getelementptr inbounds %struct.media_request, %struct.media_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load %struct.media_request*, %struct.media_request** %3, align 8
  %43 = getelementptr inbounds %struct.media_request, %struct.media_request* %42, i32 0, i32 2
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MEDIA_REQUEST_STATE_VALIDATING, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %37
  %50 = load %struct.media_device*, %struct.media_device** %4, align 8
  %51 = getelementptr inbounds %struct.media_device, %struct.media_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.media_request*, %struct.media_request** %3, align 8
  %54 = getelementptr inbounds %struct.media_request, %struct.media_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @media_request_state_str(i32 %56)
  %58 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load %struct.media_request*, %struct.media_request** %3, align 8
  %60 = call i32 @media_request_put(%struct.media_request* %59)
  %61 = load %struct.media_device*, %struct.media_device** %4, align 8
  %62 = getelementptr inbounds %struct.media_device, %struct.media_device* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* @EBUSY, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %2, align 8
  br label %122

66:                                               ; preds = %37
  %67 = load %struct.media_device*, %struct.media_device** %4, align 8
  %68 = getelementptr inbounds %struct.media_device, %struct.media_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.media_request*)*, i32 (%struct.media_request*)** %70, align 8
  %72 = load %struct.media_request*, %struct.media_request** %3, align 8
  %73 = call i32 %71(%struct.media_request* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.media_request*, %struct.media_request** %3, align 8
  %75 = getelementptr inbounds %struct.media_request, %struct.media_request* %74, i32 0, i32 2
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i64, i64* @MEDIA_REQUEST_STATE_IDLE, align 8
  br label %84

82:                                               ; preds = %66
  %83 = load i64, i64* @MEDIA_REQUEST_STATE_QUEUED, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.media_request*, %struct.media_request** %3, align 8
  %87 = getelementptr inbounds %struct.media_request, %struct.media_request* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.media_request*, %struct.media_request** %3, align 8
  %89 = getelementptr inbounds %struct.media_request, %struct.media_request* %88, i32 0, i32 2
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %84
  %95 = load %struct.media_device*, %struct.media_device** %4, align 8
  %96 = getelementptr inbounds %struct.media_device, %struct.media_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32 (%struct.media_request*)*, i32 (%struct.media_request*)** %98, align 8
  %100 = load %struct.media_request*, %struct.media_request** %3, align 8
  %101 = call i32 %99(%struct.media_request* %100)
  br label %102

102:                                              ; preds = %94, %84
  %103 = load %struct.media_device*, %struct.media_device** %4, align 8
  %104 = getelementptr inbounds %struct.media_device, %struct.media_device* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.media_device*, %struct.media_device** %4, align 8
  %110 = getelementptr inbounds %struct.media_device, %struct.media_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.media_request*, %struct.media_request** %3, align 8
  %113 = getelementptr inbounds %struct.media_request, %struct.media_request* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.media_request*, %struct.media_request** %3, align 8
  %118 = call i32 @media_request_put(%struct.media_request* %117)
  br label %119

119:                                              ; preds = %108, %102
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %119, %49
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @media_request_get(%struct.media_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @media_request_state_str(i32) #1

declare dso_local i32 @media_request_put(%struct.media_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
