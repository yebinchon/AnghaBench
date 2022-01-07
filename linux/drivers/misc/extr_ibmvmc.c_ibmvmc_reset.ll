; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.crq_server_adapter = type { i32, i32 }

@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ibmvmc_state_sched_reset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"*** Reset to initial state.\0A\00", align 1
@ibmvmc_max_hmcs = common dso_local global i32 0, align 4
@hmcs = common dso_local global i32* null, align 8
@ibmvmc_state_crqinit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Device reset scheduled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crq_server_adapter*, i32)* @ibmvmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_reset(%struct.crq_server_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %7 = load i64, i64* @ibmvmc_state_sched_reset, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ibmvmc_max_hmcs, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32*, i32** @hmcs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ibmvmc_return_hmc(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @ibmvmc_state_crqinit, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  br label %42

33:                                               ; preds = %28
  %34 = load i64, i64* @ibmvmc_state_sched_reset, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %35 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %39, i32 0, i32 0
  %41 = call i32 @wake_up_interruptible(i32* %40)
  br label %42

42:                                               ; preds = %33, %31
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ibmvmc_return_hmc(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
