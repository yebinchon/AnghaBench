; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.crq_server_adapter = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibmvmc_admin_crq_msg = type { i32, i8*, i8*, i8*, i32, i32, i64*, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ibmvmc: CRQ send: capabilities\0A\00", align 1
@VMC_MSG_CAP = common dso_local global i32 0, align 4
@ibmvmc_max_hmcs = common dso_local global i32 0, align 4
@ibmvmc_max_mtu = common dso_local global i32 0, align 4
@ibmvmc_max_buf_pool_size = common dso_local global i32 0, align 4
@IBMVMC_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@ibmvmc_state_capabilities = common dso_local global i32 0, align 4
@ibmvmc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*)* @ibmvmc_send_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_send_capabilities(%struct.crq_server_adapter* %0) #0 {
  %2 = alloca %struct.crq_server_adapter*, align 8
  %3 = alloca %struct.ibmvmc_admin_crq_msg, align 8
  %4 = alloca i32*, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %2, align 8
  %5 = bitcast %struct.ibmvmc_admin_crq_msg* %3 to i32*
  store i32* %5, i32** %4, align 8
  %6 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 0
  store i32 128, i32* %10, align 8
  %11 = load i32, i32* @VMC_MSG_CAP, align 4
  %12 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 8
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 6
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 6
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ibmvmc_max_hmcs, align 4
  %21 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ibmvmc_max_mtu, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @ibmvmc_max_buf_pool_size, align 4
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be16(i32 %31)
  %33 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @IBMVMC_PROTOCOL_VERSION, align 4
  %35 = call i8* @cpu_to_be16(i32 %34)
  %36 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %3, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %2, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be64_to_cpu(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be64_to_cpu(i32 %44)
  %46 = call i32 @ibmvmc_send_crq(%struct.crq_server_adapter* %37, i32 %41, i32 %45)
  %47 = load i32, i32* @ibmvmc_state_capabilities, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ibmvmc, i32 0, i32 0), align 4
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
