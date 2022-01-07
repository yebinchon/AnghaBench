; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: work failed with error code %d\00", align 1
@WL_MAX_FAILURES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: %d consecutive failures\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"background thread \22%s\22 is killed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ubi_device*
  store %struct.ubi_device* %7, %struct.ubi_device** %4, align 8
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @task_pid_nr(i32 %12)
  %14 = call i32 @ubi_msg(%struct.ubi_device* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = call i32 (...) @set_freezable()
  br label %16

16:                                               ; preds = %85, %72, %46, %23, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %87

20:                                               ; preds = %16
  %21 = call i64 (...) @try_to_freeze()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %16

24:                                               ; preds = %20
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 4
  %30 = call i64 @list_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %24
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = call i64 @ubi_dbg_is_bgt_disabled(%struct.ubi_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %37, %32, %24
  %47 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %48 = call i32 @set_current_state(i32 %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = call i32 (...) @schedule()
  br label %16

53:                                               ; preds = %42
  %54 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %55 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = call i32 @do_work(%struct.ubi_device* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %53
  %62 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %63 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %64 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ubi_err(%struct.ubi_device* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @WL_MAX_FAILURES, align 4
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %74 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WL_MAX_FAILURES, align 4
  %78 = call i32 @ubi_msg(%struct.ubi_device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %80 = call i32 @ubi_ro_mode(%struct.ubi_device* %79)
  %81 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %16

83:                                               ; preds = %61
  br label %85

84:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = call i32 (...) @cond_resched()
  br label %16

87:                                               ; preds = %19
  %88 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %89 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dbg_wl(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %93 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  ret i32 0
}

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @ubi_dbg_is_bgt_disabled(%struct.ubi_device*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @do_work(%struct.ubi_device*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dbg_wl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
