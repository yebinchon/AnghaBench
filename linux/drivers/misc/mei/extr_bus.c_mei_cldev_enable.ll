; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cldev_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32, i32, %struct.mei_cl*, %struct.mei_device* }
%struct.mei_cl = type { i64, %struct.mei_cl_device* }
%struct.mei_device = type { i32 }

@MEI_FILE_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"me client is not active\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot connect\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cldev_enable(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %6 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %7 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %6, i32 0, i32 3
  %8 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  store %struct.mei_device* %8, %struct.mei_device** %3, align 8
  %9 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %10 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %9, i32 0, i32 2
  %11 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  store %struct.mei_cl* %11, %struct.mei_cl** %4, align 8
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MEI_FILE_UNINITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %22 = call i32 @mei_cl_link(%struct.mei_cl* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %28 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %29 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %28, i32 0, i32 1
  store %struct.mei_cl_device* %27, %struct.mei_cl_device** %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %32 = call i64 @mei_cl_is_connected(%struct.mei_cl* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %60

35:                                               ; preds = %30
  %36 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %37 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mei_me_cl_is_active(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %43 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOTTY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %35
  %48 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %49 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %50 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mei_cl_connect(%struct.mei_cl* %48, i32 %51, i32* null)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %57 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %47
  br label %60

60:                                               ; preds = %59, %41, %34, %25
  %61 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %62 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_link(%struct.mei_cl*) #1

declare dso_local i64 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @mei_me_cl_is_active(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mei_cl_connect(%struct.mei_cl*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
