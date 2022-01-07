; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"notifications not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_notify_get(%struct.mei_cl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %12 = icmp ne %struct.mei_cl* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %15 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %14, i32 0, i32 2
  %16 = load %struct.mei_device*, %struct.mei_device** %15, align 8
  %17 = icmp ne %struct.mei_device* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ true, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %19
  %28 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %29 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %28, i32 0, i32 2
  %30 = load %struct.mei_device*, %struct.mei_device** %29, align 8
  store %struct.mei_device* %30, %struct.mei_device** %8, align 8
  %31 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %37 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %38 = call i32 @cl_dbg(%struct.mei_device* %36, %struct.mei_cl* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %27
  %42 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %43 = call i32 @mei_cl_is_connected(%struct.mei_cl* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %86

48:                                               ; preds = %41
  %49 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %50 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %79

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %86

60:                                               ; preds = %54
  %61 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %62 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %65 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %68 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @wait_event_interruptible(i32 %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %72 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %86

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %81 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %85 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %79, %76, %57, %45, %35, %24
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
