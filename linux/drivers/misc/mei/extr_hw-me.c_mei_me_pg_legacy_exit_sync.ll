; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_exit_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_exit_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32 }
%struct.mei_me_hw = type { i32 }

@MEI_PGI_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i64 0, align 8
@MEI_PG_EVENT_WAIT = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@MEI_PG_EVENT_INTR_WAIT = common dso_local global i64 0, align 8
@MEI_PG_ISOLATION_EXIT_RES_CMD = common dso_local global i32 0, align 4
@MEI_PG_EVENT_INTR_RECEIVED = common dso_local global i64 0, align 8
@MEI_PG_EVENT_IDLE = common dso_local global i64 0, align 8
@MEI_PG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_pg_legacy_exit_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_pg_legacy_exit_sync(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_me_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %8 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %7)
  store %struct.mei_me_hw* %8, %struct.mei_me_hw** %4, align 8
  %9 = load i32, i32* @MEI_PGI_TIMEOUT, align 4
  %10 = call i64 @mei_secs_to_jiffies(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load i64, i64* @MEI_PG_EVENT_WAIT, align 8
  %19 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %20 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = call i32 @mei_me_pg_unset(%struct.mei_device* %21)
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %27 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @wait_event_timeout(i32 %28, i32 %34, i64 %35)
  %37 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %38 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  br label %40

40:                                               ; preds = %17, %16
  %41 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %88

49:                                               ; preds = %40
  %50 = load i64, i64* @MEI_PG_EVENT_INTR_WAIT, align 8
  %51 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %52 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %54 = load i32, i32* @MEI_PG_ISOLATION_EXIT_RES_CMD, align 4
  %55 = call i32 @mei_hbm_pg(%struct.mei_device* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %96

60:                                               ; preds = %49
  %61 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %62 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %68 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @wait_event_timeout(i32 %66, i32 %72, i64 %73)
  %75 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %76 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %75, i32 0, i32 1
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %79 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %87

84:                                               ; preds = %60
  %85 = load i32, i32* @ETIME, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %46
  %89 = load i64, i64* @MEI_PG_EVENT_IDLE, align 8
  %90 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %91 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @MEI_PG_OFF, align 4
  %93 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %94 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %58
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i64 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mei_me_pg_unset(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_hbm_pg(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
