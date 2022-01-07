; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request_object = type { %struct.TYPE_2__*, i32, %struct.media_request*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.media_request_object*)* }
%struct.media_request = type { i64, i32, i32, i32 }

@MEDIA_REQUEST_STATE_COMPLETE = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_VALIDATING = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_CLEANING = common dso_local global i64 0, align 8
@MEDIA_REQUEST_STATE_QUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media_request_object_unbind(%struct.media_request_object* %0) #0 {
  %2 = alloca %struct.media_request_object*, align 8
  %3 = alloca %struct.media_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.media_request_object* %0, %struct.media_request_object** %2, align 8
  %6 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %7 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %6, i32 0, i32 2
  %8 = load %struct.media_request*, %struct.media_request** %7, align 8
  store %struct.media_request* %8, %struct.media_request** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.media_request*, %struct.media_request** %3, align 8
  %10 = icmp ne %struct.media_request* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.media_request*, %struct.media_request** %3, align 8
  %18 = getelementptr inbounds %struct.media_request, %struct.media_request* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %22 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %25 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %24, i32 0, i32 2
  store %struct.media_request* null, %struct.media_request** %25, align 8
  %26 = load %struct.media_request*, %struct.media_request** %3, align 8
  %27 = getelementptr inbounds %struct.media_request, %struct.media_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MEDIA_REQUEST_STATE_COMPLETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %92

32:                                               ; preds = %16
  %33 = load %struct.media_request*, %struct.media_request** %3, align 8
  %34 = getelementptr inbounds %struct.media_request, %struct.media_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEDIA_REQUEST_STATE_VALIDATING, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %92

42:                                               ; preds = %32
  %43 = load %struct.media_request*, %struct.media_request** %3, align 8
  %44 = getelementptr inbounds %struct.media_request, %struct.media_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MEDIA_REQUEST_STATE_CLEANING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %50 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.media_request*, %struct.media_request** %3, align 8
  %55 = getelementptr inbounds %struct.media_request, %struct.media_request* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %48
  br label %92

59:                                               ; preds = %42
  %60 = load %struct.media_request*, %struct.media_request** %3, align 8
  %61 = getelementptr inbounds %struct.media_request, %struct.media_request* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %92

69:                                               ; preds = %59
  %70 = load %struct.media_request*, %struct.media_request** %3, align 8
  %71 = getelementptr inbounds %struct.media_request, %struct.media_request* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.media_request*, %struct.media_request** %3, align 8
  %75 = getelementptr inbounds %struct.media_request, %struct.media_request* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MEDIA_REQUEST_STATE_QUEUED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %69
  %80 = load %struct.media_request*, %struct.media_request** %3, align 8
  %81 = getelementptr inbounds %struct.media_request, %struct.media_request* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @MEDIA_REQUEST_STATE_COMPLETE, align 8
  %86 = load %struct.media_request*, %struct.media_request** %3, align 8
  %87 = getelementptr inbounds %struct.media_request, %struct.media_request* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 1, i32* %5, align 4
  %88 = load %struct.media_request*, %struct.media_request** %3, align 8
  %89 = getelementptr inbounds %struct.media_request, %struct.media_request* %88, i32 0, i32 2
  %90 = call i32 @wake_up_interruptible_all(i32* %89)
  br label %91

91:                                               ; preds = %84, %79, %69
  br label %92

92:                                               ; preds = %91, %68, %58, %41, %31
  %93 = load %struct.media_request*, %struct.media_request** %3, align 8
  %94 = getelementptr inbounds %struct.media_request, %struct.media_request* %93, i32 0, i32 1
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %98 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.media_request_object*)*, i32 (%struct.media_request_object*)** %100, align 8
  %102 = icmp ne i32 (%struct.media_request_object*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %105 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.media_request_object*)*, i32 (%struct.media_request_object*)** %107, align 8
  %109 = load %struct.media_request_object*, %struct.media_request_object** %2, align 8
  %110 = call i32 %108(%struct.media_request_object* %109)
  br label %111

111:                                              ; preds = %103, %92
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.media_request*, %struct.media_request** %3, align 8
  %116 = call i32 @media_request_put(%struct.media_request* %115)
  br label %117

117:                                              ; preds = %15, %114, %111
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @media_request_put(%struct.media_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
