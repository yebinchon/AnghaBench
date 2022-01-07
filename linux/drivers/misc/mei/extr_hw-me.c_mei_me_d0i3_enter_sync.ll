; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_enter_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_d0i3_enter_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32 }
%struct.mei_me_hw = type { i32 }

@MEI_D0I3_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PGI_TIMEOUT = common dso_local global i32 0, align 4
@H_D0I3C_I3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"d0i3 set not needed\0A\00", align 1
@MEI_PG_EVENT_WAIT = common dso_local global i64 0, align 8
@MEI_PG_ISOLATION_ENTRY_REQ_CMD = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@MEI_PG_EVENT_INTR_WAIT = common dso_local global i64 0, align 8
@H_D0I3C_CIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"d0i3 enter wait not needed\0A\00", align 1
@MEI_PG_EVENT_INTR_RECEIVED = common dso_local global i64 0, align 8
@MEI_PG_ON = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"d0i3 enter ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_d0i3_enter_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_d0i3_enter_sync(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_me_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %8 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %9 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %8)
  store %struct.mei_me_hw* %9, %struct.mei_me_hw** %3, align 8
  %10 = load i32, i32* @MEI_D0I3_TIMEOUT, align 4
  %11 = call i64 @mei_secs_to_jiffies(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @MEI_PGI_TIMEOUT, align 4
  %13 = call i64 @mei_secs_to_jiffies(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %15 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @H_D0I3C_I3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %111

25:                                               ; preds = %1
  %26 = load i64, i64* @MEI_PG_EVENT_WAIT, align 8
  %27 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %30 = load i32, i32* @MEI_PG_ISOLATION_ENTRY_REQ_CMD, align 4
  %31 = call i32 @mei_hbm_pg(%struct.mei_device* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %115

35:                                               ; preds = %25
  %36 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @wait_event_timeout(i32 %41, i32 %47, i64 %48)
  %50 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %51 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %35
  %59 = load i32, i32* @ETIME, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %115

61:                                               ; preds = %35
  %62 = load i64, i64* @MEI_PG_EVENT_INTR_WAIT, align 8
  %63 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %64 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %66 = call i32 @mei_me_d0i3_set(%struct.mei_device* %65, i32 1)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @H_D0I3C_CIP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %73 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %111

76:                                               ; preds = %61
  %77 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %78 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %81 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %84 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @wait_event_timeout(i32 %82, i32 %88, i64 %89)
  %91 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %92 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %91, i32 0, i32 2
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %95 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MEI_PG_EVENT_INTR_RECEIVED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %76
  %100 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %101 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @H_D0I3C_I3, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @ETIME, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %115

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %76
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %71, %20
  %112 = load i32, i32* @MEI_PG_ON, align 4
  %113 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %114 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %106, %58, %34
  %116 = load i64, i64* @MEI_PG_EVENT_IDLE, align 8
  %117 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %118 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %120 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i64 @mei_secs_to_jiffies(i32) #1

declare dso_local i32 @mei_me_d0i3c_read(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mei_hbm_pg(%struct.mei_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_me_d0i3_set(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
