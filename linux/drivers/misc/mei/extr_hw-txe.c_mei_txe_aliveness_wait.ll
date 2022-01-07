; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32 }
%struct.mei_txe_hw = type { i64, i32 }

@SEC_ALIVENESS_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PG_EVENT_RECEIVED = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"aliveness timed out = %ld aliveness = %d event = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"aliveness settled after = %d msec aliveness = %d event = %d\0A\00", align 1
@MEI_PG_EVENT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i64)* @mei_txe_aliveness_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_aliveness_wait(%struct.mei_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mei_txe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %10)
  store %struct.mei_txe_hw* %11, %struct.mei_txe_hw** %6, align 8
  %12 = load i32, i32* @SEC_ALIVENESS_WAIT_TIMEOUT, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = call i8* @mei_txe_aliveness_get(%struct.mei_device* %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %18 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %27 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %30 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MEI_PG_EVENT_RECEIVED, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @wait_event_timeout(i32 %31, i32 %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %41 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %44 = call i8* @mei_txe_aliveness_get(%struct.mei_device* %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %47 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %49 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %25
  br label %57

54:                                               ; preds = %25
  %55 = load i32, i32* @ETIME, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %63 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %67 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %70 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %68, i32 %71)
  br label %88

73:                                               ; preds = %57
  %74 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %75 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @jiffies_to_msecs(i64 %79)
  %81 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %82 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %85 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 %83, i32 %86)
  br label %88

88:                                               ; preds = %73, %61
  %89 = load i32, i32* @MEI_PG_EVENT_IDLE, align 4
  %90 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %91 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %24
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i8* @mei_txe_aliveness_get(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
