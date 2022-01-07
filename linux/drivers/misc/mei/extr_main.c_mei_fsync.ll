; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mei_cl* }
%struct.mei_cl = type { i64, i32, %struct.mei_device* }
%struct.mei_device = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@MEI_WRITE_COMPLETE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @mei_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mei_cl*, align 8
  %11 = alloca %struct.mei_device*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.mei_cl*, %struct.mei_cl** %14, align 8
  store %struct.mei_cl* %15, %struct.mei_cl** %10, align 8
  %16 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %17 = icmp ne %struct.mei_cl* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 2
  %21 = load %struct.mei_device*, %struct.mei_device** %20, align 8
  %22 = icmp ne %struct.mei_device* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i1 [ true, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %104

32:                                               ; preds = %24
  %33 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %34 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %33, i32 0, i32 2
  %35 = load %struct.mei_device*, %struct.mei_device** %34, align 8
  store %struct.mei_device* %35, %struct.mei_device** %11, align 8
  %36 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %46 = call i32 @mei_cl_is_connected(%struct.mei_cl* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %32
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %99

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %97, %51
  %53 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %54 = call i64 @mei_cl_is_write_queued(%struct.mei_cl* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %58 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %61 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %64 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MEI_WRITE_COMPLETE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %70 = call i32 @mei_cl_is_connected(%struct.mei_cl* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %68, %56
  %74 = phi i1 [ true, %56 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @wait_event_interruptible(i32 %62, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %78 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* @current, align 4
  %84 = call i64 @signal_pending(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EINTR, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %99

90:                                               ; preds = %73
  %91 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  %92 = call i32 @mei_cl_is_connected(%struct.mei_cl* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %99

97:                                               ; preds = %90
  br label %52

98:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %94, %89, %48
  %100 = load %struct.mei_device*, %struct.mei_device** %11, align 8
  %101 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %29
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i64 @mei_cl_is_write_queued(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
