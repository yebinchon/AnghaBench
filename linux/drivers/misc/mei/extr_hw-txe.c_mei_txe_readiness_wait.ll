; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_readiness_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_readiness_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32, i32 }

@SEC_RESET_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wait for readiness failed\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_txe_readiness_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_readiness_wait(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %5 = call i64 @mei_txe_hw_is_ready(%struct.mei_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %9, i32 0, i32 2
  %11 = call i32 @mutex_unlock(i32* %10)
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SEC_RESET_WAIT_TIMEOUT, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @wait_event_timeout(i32 %14, i32 %17, i32 %19)
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %8
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIME, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %8
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %28, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @mei_txe_hw_is_ready(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
