; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_reset_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_reset_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.crq_server_adapter = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ibmvmc_state_sched_reset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CRQ resetting in process context\00", align 1
@H_SUCCESS = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error initializing CRQ.  rc = 0x%x\0A\00", align 1
@ibmvmc_state_failed = common dso_local global i64 0, align 8
@ibmvmc_state_crqinit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to send initialize CRQ message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ibmvmc_reset_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_reset_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.crq_server_adapter*
  store %struct.crq_server_adapter* %6, %struct.crq_server_adapter** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @set_user_nice(i32 %7, i32 -20)
  br label %9

9:                                                ; preds = %69, %1
  %10 = call i64 (...) @kthread_should_stop()
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %18 = load i64, i64* @ibmvmc_state_sched_reset, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i1 [ true, %13 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event_interruptible(i32 %16, i32 %25)
  %27 = call i64 (...) @kthread_should_stop()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %78

30:                                               ; preds = %23
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %35, i32 0, i32 0
  %37 = call i32 @tasklet_disable(i32* %36)
  %38 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %39 = call i32 @ibmvmc_reset_crq_queue(%struct.crq_server_adapter* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @H_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @H_RESOURCE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @ibmvmc_state_failed, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  br label %69

54:                                               ; preds = %43, %30
  %55 = load i64, i64* @ibmvmc_state_crqinit, align 8
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %56 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %57 = call i64 @ibmvmc_send_crq(%struct.crq_server_adapter* %56, i32 0, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @H_RESOURCE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %59, %54
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @to_vio_dev(i32 %72)
  %74 = call i32 @vio_enable_interrupts(i32 %73)
  %75 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %75, i32 0, i32 0
  %77 = call i32 @tasklet_enable(i32* %76)
  br label %9

78:                                               ; preds = %29, %9
  ret i32 0
}

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @ibmvmc_reset_crq_queue(%struct.crq_server_adapter*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i32 @to_vio_dev(i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
