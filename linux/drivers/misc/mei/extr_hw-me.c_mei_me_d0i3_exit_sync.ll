; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_exit_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_exit_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32 }
%struct.mei_me_hw = type { i32 }

@MEI_D0I3_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PG_EVENT_INTR_WAIT = common dso_local global i64 0, align 8
@H_D0I3C_I3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"d0i3 exit not needed\0A\00", align 1
@H_D0I3C_CIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"d0i3 exit wait not needed\0A\00", align 1
@MEI_PG_EVENT_INTR_RECEIVED = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@MEI_PG_OFF = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"d0i3 exit ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_d0i3_exit_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_d0i3_exit_sync(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_me_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %8 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %7)
  store %struct.mei_me_hw* %8, %struct.mei_me_hw** %3, align 8
  %9 = load i32, i32* @MEI_D0I3_TIMEOUT, align 4
  %10 = call i64 @mei_secs_to_jiffies(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @MEI_PG_EVENT_INTR_WAIT, align 8
  %12 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %15 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @H_D0I3C_I3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %27 = call i32 @mei_me_d0i3_unset(%struct.mei_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @H_D0I3C_CIP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %34 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %72

37:                                               ; preds = %25
  %38 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 2
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %45 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @wait_event_timeout(i32 %43, i32 %49, i64 %50)
  %52 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %56 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %37
  %61 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %62 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @H_D0I3C_I3, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ETIME, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %37
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %32, %20
  %73 = load i32, i32* @MEI_PG_OFF, align 4
  %74 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %75 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i64, i64* @MEI_PG_EVENT_IDLE, align 8
  %78 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %79 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %81 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i64 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mei_me_d0i3c_read(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mei_me_d0i3_unset(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
