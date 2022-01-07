; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_ioctl_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_ioctl_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request = type { i64, i32, i32, i64, %struct.media_device* }
%struct.media_device = type { i32 }

@MEDIA_REQUEST_STATE_IDLE = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"request: %s not in idle or complete state, cannot reinit\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"request: %s is being accessed, cannot reinit\0A\00", align 1
@MEDIA_REQUEST_STATE_CLEANING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.media_request*)* @media_request_ioctl_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @media_request_ioctl_reinit(%struct.media_request* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.media_request*, align 8
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca i64, align 8
  store %struct.media_request* %0, %struct.media_request** %3, align 8
  %6 = load %struct.media_request*, %struct.media_request** %3, align 8
  %7 = getelementptr inbounds %struct.media_request, %struct.media_request* %6, i32 0, i32 4
  %8 = load %struct.media_device*, %struct.media_device** %7, align 8
  store %struct.media_device* %8, %struct.media_device** %4, align 8
  %9 = load %struct.media_request*, %struct.media_request** %3, align 8
  %10 = getelementptr inbounds %struct.media_request, %struct.media_request* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.media_request*, %struct.media_request** %3, align 8
  %14 = getelementptr inbounds %struct.media_request, %struct.media_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEDIA_REQUEST_STATE_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.media_request*, %struct.media_request** %3, align 8
  %20 = getelementptr inbounds %struct.media_request, %struct.media_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MEDIA_REQUEST_STATE_COMPLETE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.media_device*, %struct.media_device** %4, align 8
  %26 = getelementptr inbounds %struct.media_device, %struct.media_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.media_request*, %struct.media_request** %3, align 8
  %29 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.media_request*, %struct.media_request** %3, align 8
  %33 = getelementptr inbounds %struct.media_request, %struct.media_request* %32, i32 0, i32 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i64, i64* @EBUSY, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %2, align 8
  br label %78

38:                                               ; preds = %18, %1
  %39 = load %struct.media_request*, %struct.media_request** %3, align 8
  %40 = getelementptr inbounds %struct.media_request, %struct.media_request* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.media_device*, %struct.media_device** %4, align 8
  %45 = getelementptr inbounds %struct.media_device, %struct.media_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.media_request*, %struct.media_request** %3, align 8
  %48 = getelementptr inbounds %struct.media_request, %struct.media_request* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.media_request*, %struct.media_request** %3, align 8
  %52 = getelementptr inbounds %struct.media_request, %struct.media_request* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i64, i64* @EBUSY, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %2, align 8
  br label %78

57:                                               ; preds = %38
  %58 = load i64, i64* @MEDIA_REQUEST_STATE_CLEANING, align 8
  %59 = load %struct.media_request*, %struct.media_request** %3, align 8
  %60 = getelementptr inbounds %struct.media_request, %struct.media_request* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.media_request*, %struct.media_request** %3, align 8
  %62 = getelementptr inbounds %struct.media_request, %struct.media_request* %61, i32 0, i32 1
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.media_request*, %struct.media_request** %3, align 8
  %66 = call i32 @media_request_clean(%struct.media_request* %65)
  %67 = load %struct.media_request*, %struct.media_request** %3, align 8
  %68 = getelementptr inbounds %struct.media_request, %struct.media_request* %67, i32 0, i32 1
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i64, i64* @MEDIA_REQUEST_STATE_IDLE, align 8
  %72 = load %struct.media_request*, %struct.media_request** %3, align 8
  %73 = getelementptr inbounds %struct.media_request, %struct.media_request* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.media_request*, %struct.media_request** %3, align 8
  %75 = getelementptr inbounds %struct.media_request, %struct.media_request* %74, i32 0, i32 1
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i64 0, i64* %2, align 8
  br label %78

78:                                               ; preds = %57, %43, %24
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @media_request_clean(%struct.media_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
