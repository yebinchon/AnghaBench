; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { %struct.mei_device*, %struct.mei_cl* }
%struct.mei_device = type { i32, i32 }
%struct.mei_cl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Already disconnected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not disconnect from the ME client\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cldev_disable(%struct.mei_cl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_cl_device*, align 8
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %3, align 8
  %7 = load %struct.mei_cl_device*, %struct.mei_cl_device** %3, align 8
  %8 = icmp ne %struct.mei_cl_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.mei_cl_device*, %struct.mei_cl_device** %3, align 8
  %14 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %13, i32 0, i32 1
  %15 = load %struct.mei_cl*, %struct.mei_cl** %14, align 8
  store %struct.mei_cl* %15, %struct.mei_cl** %5, align 8
  %16 = load %struct.mei_cl_device*, %struct.mei_cl_device** %3, align 8
  %17 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %16, i32 0, i32 0
  %18 = load %struct.mei_device*, %struct.mei_device** %17, align 8
  store %struct.mei_device* %18, %struct.mei_device** %4, align 8
  %19 = load %struct.mei_cl_device*, %struct.mei_cl_device** %3, align 8
  %20 = call i32 @mei_cldev_unregister_callbacks(%struct.mei_cl_device* %19)
  %21 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %25 = call i32 @mei_cl_is_connected(%struct.mei_cl* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %12
  %28 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %43

32:                                               ; preds = %12
  %33 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %34 = call i32 @mei_cl_disconnect(%struct.mei_cl* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %45 = call i32 @mei_cl_flush_queues(%struct.mei_cl* %44, i32* null)
  %46 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %47 = call i32 @mei_cl_unlink(%struct.mei_cl* %46)
  %48 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %49 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mei_cldev_unregister_callbacks(%struct.mei_cl_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mei_cl_disconnect(%struct.mei_cl*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mei_cl_flush_queues(%struct.mei_cl*, i32*) #1

declare dso_local i32 @mei_cl_unlink(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
