; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_start_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32 }

@MEI_HBM_STARTING = common dso_local global i64 0, align 8
@MEI_HBM_TIMEOUT = common dso_local global i32 0, align 4
@MEI_HBM_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"waiting for mei start failed\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbm_start_wait(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %6 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MEI_HBM_STARTING, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 2
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEI_HBM_STARTING, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @MEI_HBM_TIMEOUT, align 4
  %25 = call i32 @mei_secs_to_jiffies(i32 %24)
  %26 = call i32 @wait_event_timeout(i32 %17, i32 %23, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %11
  %33 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %34 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEI_HBM_STARTING, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i64, i64* @MEI_HBM_IDLE, align 8
  %40 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %41 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIME, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %32, %11
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %38, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
