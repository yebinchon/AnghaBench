; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.crq_server_adapter = type { i32, i32 }
%struct.vio_dev = type { i32 }
%struct.ibmvmc_crq_msg = type { i32 }

@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ibmvmc_state_sched_reset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ibmvmc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.ibmvmc_crq_msg*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.crq_server_adapter*
  store %struct.crq_server_adapter* %8, %struct.crq_server_adapter** %3, align 8
  %9 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vio_dev* @to_vio_dev(i32 %11)
  store %struct.vio_dev* %12, %struct.vio_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %56, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %33, %17
  %19 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %19, i32 0, i32 0
  %21 = call %struct.ibmvmc_crq_msg* @crq_queue_next_crq(i32* %20)
  store %struct.ibmvmc_crq_msg* %21, %struct.ibmvmc_crq_msg** %5, align 8
  %22 = icmp ne %struct.ibmvmc_crq_msg* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %25 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %26 = call i32 @ibmvmc_handle_crq(%struct.ibmvmc_crq_msg* %24, %struct.crq_server_adapter* %25)
  %27 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %28 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %30 = load i64, i64* @ibmvmc_state_sched_reset, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %57

33:                                               ; preds = %23
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %36 = call i32 @vio_enable_interrupts(%struct.vio_dev* %35)
  %37 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %37, i32 0, i32 0
  %39 = call %struct.ibmvmc_crq_msg* @crq_queue_next_crq(i32* %38)
  store %struct.ibmvmc_crq_msg* %39, %struct.ibmvmc_crq_msg** %5, align 8
  %40 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %41 = icmp ne %struct.ibmvmc_crq_msg* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %44 = call i32 @vio_disable_interrupts(%struct.vio_dev* %43)
  %45 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %46 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %47 = call i32 @ibmvmc_handle_crq(%struct.ibmvmc_crq_msg* %45, %struct.crq_server_adapter* %46)
  %48 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %49 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %51 = load i64, i64* @ibmvmc_state_sched_reset, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %57

54:                                               ; preds = %42
  br label %56

55:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %13

57:                                               ; preds = %32, %53, %13
  ret void
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local %struct.ibmvmc_crq_msg* @crq_queue_next_crq(i32*) #1

declare dso_local i32 @ibmvmc_handle_crq(%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @vio_disable_interrupts(%struct.vio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
