; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i8* }
%struct.mei_txe_hw = type { i64 }

@SEC_ALIVENESS_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@MEI_PG_EVENT_IDLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"aliveness settled after %lld usecs\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"aliveness timed out\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i64)* @mei_txe_aliveness_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_aliveness_poll(%struct.mei_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mei_txe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %10 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %9)
  store %struct.mei_txe_hw* %10, %struct.mei_txe_hw** %6, align 8
  %11 = call i32 (...) @ktime_get()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SEC_ALIVENESS_WAIT_TIMEOUT, align 4
  %14 = call i32 @ms_to_ktime(i32 %13)
  %15 = call i32 @ktime_add(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %40, %2
  %17 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %18 = call i64 @mei_txe_aliveness_get(%struct.mei_device* %17)
  %19 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %22 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load i8*, i8** @MEI_PG_EVENT_IDLE, align 8
  %28 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %31 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (...) @ktime_get()
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ktime_sub(i32 %33, i32 %34)
  %36 = call i32 @ktime_to_us(i32 %35)
  %37 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %55

38:                                               ; preds = %16
  %39 = call i32 @usleep_range(i32 20, i32 50)
  br label %40

40:                                               ; preds = %38
  %41 = call i32 (...) @ktime_get()
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ktime_before(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %16, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** @MEI_PG_EVENT_IDLE, align 8
  %47 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %48 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ETIME, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i64 @mei_txe_aliveness_get(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
