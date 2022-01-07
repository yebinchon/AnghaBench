; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_device* }
%struct.mei_device = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"disconnecting\00", align 1
@MEI_DEV_POWER_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Device is powering down, don't bother with disconnection\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rpm: get failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rpm: autosuspend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_disconnect(%struct.mei_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  %6 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %7 = icmp ne %struct.mei_cl* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %10 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %9, i32 0, i32 0
  %11 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %12 = icmp ne %struct.mei_device* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %14
  %23 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %24 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %23, i32 0, i32 0
  %25 = load %struct.mei_device*, %struct.mei_device** %24, align 8
  store %struct.mei_device* %25, %struct.mei_device** %4, align 8
  %26 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %27 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %28 = call i32 @cl_dbg(%struct.mei_device* %26, %struct.mei_cl* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %30 = call i32 @mei_cl_is_connected(%struct.mei_cl* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %89

33:                                               ; preds = %22
  %34 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %35 = call i64 @mei_cl_is_fixed_address(%struct.mei_cl* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %39 = call i32 @mei_cl_set_disconnected(%struct.mei_cl* %38)
  store i32 0, i32* %2, align 4
  br label %89

40:                                               ; preds = %33
  %41 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEI_DEV_POWER_DOWN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %48 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %49 = call i32 @cl_dbg(%struct.mei_device* %47, %struct.mei_cl* %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %51 = call i32 @mei_cl_set_disconnected(%struct.mei_cl* %50)
  store i32 0, i32* %2, align 4
  br label %89

52:                                               ; preds = %40
  %53 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pm_runtime_get(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %66 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pm_runtime_put_noidle(i32 %67)
  %69 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %70 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @cl_err(%struct.mei_device* %69, %struct.mei_cl* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %89

74:                                               ; preds = %59, %52
  %75 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %76 = call i32 @__mei_cl_disconnect(%struct.mei_cl* %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %78 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %79 = call i32 @cl_dbg(%struct.mei_device* %77, %struct.mei_cl* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %81 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pm_runtime_mark_last_busy(i32 %82)
  %84 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %85 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pm_runtime_put_autosuspend(i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %74, %64, %46, %37, %32, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i64 @mei_cl_is_fixed_address(%struct.mei_cl*) #1

declare dso_local i32 @mei_cl_set_disconnected(%struct.mei_cl*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cl_err(%struct.mei_device*, %struct.mei_cl*, i8*, i32) #1

declare dso_local i32 @__mei_cl_disconnect(%struct.mei_cl*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
