; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32 }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i32 }
%struct.ibmvmc_admin_crq_msg = type { i32, i32, i32, i32 }

@IBMVMC_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"init failed, incompatible versions 0x%x 0x%x\0A\00", align 1
@ibmvmc_state_failed = common dso_local global i32 0, align 4
@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@u32 = common dso_local global i32 0, align 4
@ibmvmc_max_mtu = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@ibmvmc_max_buf_pool_size = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@ibmvmc_max_hmcs = common dso_local global i32 0, align 4
@ibmvmc_state_ready = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Capabilities: mtu=0x%x, pool_size=0x%x, max_hmc=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*)* @ibmvmc_process_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_process_capabilities(%struct.crq_server_adapter* %0, %struct.ibmvmc_crq_msg* %1) #0 {
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca %struct.ibmvmc_crq_msg*, align 8
  %5 = alloca %struct.ibmvmc_admin_crq_msg*, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %3, align 8
  store %struct.ibmvmc_crq_msg* %1, %struct.ibmvmc_crq_msg** %4, align 8
  %6 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %7 = bitcast %struct.ibmvmc_crq_msg* %6 to %struct.ibmvmc_admin_crq_msg*
  store %struct.ibmvmc_admin_crq_msg* %7, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %8 = load %struct.ibmvmc_admin_crq_msg*, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be16_to_cpu(i32 %10)
  %12 = ashr i32 %11, 8
  %13 = load i32, i32* @IBMVMC_PROTOCOL_VERSION, align 4
  %14 = ashr i32 %13, 8
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ibmvmc_admin_crq_msg*, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = load i32, i32* @IBMVMC_PROTOCOL_VERSION, align 4
  %25 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @ibmvmc_state_failed, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 3), align 8
  br label %57

27:                                               ; preds = %2
  %28 = load i32, i32* @u32, align 4
  %29 = load i32, i32* @ibmvmc_max_mtu, align 4
  %30 = load %struct.ibmvmc_admin_crq_msg*, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %31 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = call i8* @min_t(i32 %28, i32 %29, i32 %33)
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 2), align 8
  %35 = load i32, i32* @u16, align 4
  %36 = load i32, i32* @ibmvmc_max_buf_pool_size, align 4
  %37 = load %struct.ibmvmc_admin_crq_msg*, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be16_to_cpu(i32 %39)
  %41 = call i8* @min_t(i32 %35, i32 %36, i32 %40)
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 1), align 8
  %42 = load i32, i32* @u8, align 4
  %43 = load i32, i32* @ibmvmc_max_hmcs, align 4
  %44 = load %struct.ibmvmc_admin_crq_msg*, %struct.ibmvmc_admin_crq_msg** %5, align 8
  %45 = getelementptr inbounds %struct.ibmvmc_admin_crq_msg, %struct.ibmvmc_admin_crq_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @min_t(i32 %42, i32 %43, i32 %46)
  %48 = getelementptr i8, i8* %47, i64 -1
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %49 = load i32, i32* @ibmvmc_state_ready, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 3), align 8
  %50 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 2), align 8
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 1), align 8
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %56 = call i32 @dev_info(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
