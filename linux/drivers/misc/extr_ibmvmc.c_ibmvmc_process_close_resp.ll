; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_close_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_close_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }
%struct.ibmvmc_crq_msg = type { i8, i64 }
%struct.crq_server_adapter = type { i32 }

@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 1
@.str = private unnamed_addr constant [34 x i8] c"close_resp: failed - status 0x%x\0A\00", align 1
@hmcs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*)* @ibmvmc_process_close_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_process_close_resp(%struct.ibmvmc_crq_msg* %0, %struct.crq_server_adapter* %1) #0 {
  %3 = alloca %struct.ibmvmc_crq_msg*, align 8
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca i8, align 1
  store %struct.ibmvmc_crq_msg* %0, %struct.ibmvmc_crq_msg** %3, align 8
  store %struct.crq_server_adapter* %1, %struct.crq_server_adapter** %4, align 8
  %6 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %16 = call i32 @ibmvmc_reset(%struct.crq_server_adapter* %15, i32 0)
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %31 = call i32 @ibmvmc_reset(%struct.crq_server_adapter* %30, i32 0)
  br label %38

32:                                               ; preds = %17
  %33 = load i32*, i32** @hmcs, align 8
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @ibmvmc_return_hmc(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %32, %22, %14
  ret void
}

declare dso_local i32 @ibmvmc_reset(%struct.crq_server_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @ibmvmc_return_hmc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
