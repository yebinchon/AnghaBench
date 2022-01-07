; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvmc_hmc = type { i32, i32, %struct.crq_server_adapter* }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CRQ send: close\0A\00", align 1
@VMC_MSG_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvmc_hmc*)* @ibmvmc_send_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_send_close(%struct.ibmvmc_hmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvmc_hmc*, align 8
  %4 = alloca %struct.ibmvmc_crq_msg, align 8
  %5 = alloca %struct.crq_server_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ibmvmc_hmc* %0, %struct.ibmvmc_hmc** %3, align 8
  %8 = bitcast %struct.ibmvmc_crq_msg* %4 to i32*
  store i32* %8, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %3, align 8
  %10 = icmp ne %struct.ibmvmc_hmc* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %12, i32 0, i32 2
  %14 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %13, align 8
  %15 = icmp ne %struct.crq_server_adapter* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %11
  %20 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %3, align 8
  %21 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %20, i32 0, i32 2
  %22 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %21, align 8
  store %struct.crq_server_adapter* %22, %struct.crq_server_adapter** %5, align 8
  %23 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 0
  store i32 128, i32* %27, align 8
  %28 = load i32, i32* @VMC_MSG_CLOSE, align 4
  %29 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 8
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be64_to_cpu(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be64_to_cpu(i32 %53)
  %55 = call i32 @ibmvmc_send_crq(%struct.crq_server_adapter* %46, i32 %50, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %19, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
