; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-request.c_media_request_object_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_request = type { i64, i32, i32, i32 }
%struct.media_request_object_ops = type { i32 }
%struct.media_request_object = type { i32, i8*, %struct.media_request_object_ops*, %struct.media_request* }

@EBUSY = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@MEDIA_REQUEST_STATE_UPDATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @media_request_object_bind(%struct.media_request* %0, %struct.media_request_object_ops* %1, i8* %2, i32 %3, %struct.media_request_object* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.media_request*, align 8
  %8 = alloca %struct.media_request_object_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.media_request_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.media_request* %0, %struct.media_request** %7, align 8
  store %struct.media_request_object_ops* %1, %struct.media_request_object_ops** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.media_request_object* %4, %struct.media_request_object** %11, align 8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %8, align 8
  %17 = getelementptr inbounds %struct.media_request_object_ops, %struct.media_request_object_ops* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EBADR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %76

27:                                               ; preds = %5
  %28 = load %struct.media_request*, %struct.media_request** %7, align 8
  %29 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 1
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.media_request*, %struct.media_request** %7, align 8
  %33 = getelementptr inbounds %struct.media_request, %struct.media_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MEDIA_REQUEST_STATE_UPDATING, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %70

41:                                               ; preds = %27
  %42 = load %struct.media_request*, %struct.media_request** %7, align 8
  %43 = load %struct.media_request_object*, %struct.media_request_object** %11, align 8
  %44 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %43, i32 0, i32 3
  store %struct.media_request* %42, %struct.media_request** %44, align 8
  %45 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %8, align 8
  %46 = load %struct.media_request_object*, %struct.media_request_object** %11, align 8
  %47 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %46, i32 0, i32 2
  store %struct.media_request_object_ops* %45, %struct.media_request_object_ops** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.media_request_object*, %struct.media_request_object** %11, align 8
  %50 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.media_request_object*, %struct.media_request_object** %11, align 8
  %55 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %54, i32 0, i32 0
  %56 = load %struct.media_request*, %struct.media_request** %7, align 8
  %57 = getelementptr inbounds %struct.media_request, %struct.media_request* %56, i32 0, i32 3
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  br label %65

59:                                               ; preds = %41
  %60 = load %struct.media_request_object*, %struct.media_request_object** %11, align 8
  %61 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %60, i32 0, i32 0
  %62 = load %struct.media_request*, %struct.media_request** %7, align 8
  %63 = getelementptr inbounds %struct.media_request, %struct.media_request* %62, i32 0, i32 3
  %64 = call i32 @list_add(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.media_request*, %struct.media_request** %7, align 8
  %67 = getelementptr inbounds %struct.media_request, %struct.media_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %40
  %71 = load %struct.media_request*, %struct.media_request** %7, align 8
  %72 = getelementptr inbounds %struct.media_request, %struct.media_request* %71, i32 0, i32 1
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %24
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
