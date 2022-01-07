; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_enter_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_legacy_enter_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32 }
%struct.mei_me_hw = type { i32 }

@MEI_PGI_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PG_EVENT_WAIT = common dso_local global i64 0, align 8
@MEI_PG_ISOLATION_ENTRY_REQ_CMD = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i64 0, align 8
@MEI_PG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_pg_legacy_enter_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_pg_legacy_enter_sync(%struct.mei_device* %0) #0 {
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
  %11 = load i64, i64* @MEI_PG_EVENT_WAIT, align 8
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %15 = load i32, i32* @MEI_PG_ISOLATION_ENTRY_REQ_CMD, align 4
  %16 = call i32 @mei_hbm_pg(%struct.mei_device* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @wait_event_timeout(i32 %27, i32 %33, i64 %34)
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %21
  %45 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %46 = call i32 @mei_me_pg_set(%struct.mei_device* %45)
  store i32 0, i32* %6, align 4
  br label %50

47:                                               ; preds = %21
  %48 = load i32, i32* @ETIME, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @MEI_PG_EVENT_IDLE, align 8
  %52 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @MEI_PG_ON, align 4
  %55 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %56 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i64 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mei_hbm_pg(%struct.mei_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_me_pg_set(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
