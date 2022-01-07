; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_rem_buffer_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_rem_buffer_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i8*, i8*, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"CRQ send: rem_buffer_resp\0A\00", align 1
@VMC_MSG_REM_BUF_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*, i8*, i8*, i8*, i32)* @ibmvmc_send_rem_buffer_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_send_rem_buffer_resp(%struct.crq_server_adapter* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.crq_server_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibmvmc_crq_msg, align 8
  %12 = alloca i32*, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.ibmvmc_crq_msg* %11 to i32*
  store i32* %13, i32** %12, align 8
  %14 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 0
  store i32 128, i32* %18, align 8
  %19 = load i32, i32* @VMC_MSG_REM_BUF_RESP, align 4
  %20 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 7
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @cpu_to_be16(i32 %29)
  %31 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %11, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %6, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be64_to_cpu(i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be64_to_cpu(i32 %43)
  %45 = call i32 @ibmvmc_send_crq(%struct.crq_server_adapter* %36, i32 %40, i32 %44)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
