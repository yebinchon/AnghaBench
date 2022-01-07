; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvmc_buffer = type { i32, i64, i64, i64 }
%struct.ibmvmc_hmc = type { i32, i32, i32, %struct.crq_server_adapter* }
%struct.crq_server_adapter = type { i32, i64, i64 }
%struct.ibmvmc_crq_msg = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"send_open: 0x%lx 0x%lx 0x%lx 0x%lx 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Error: In send_open, h_copy_rdma rc 0x%x\0A\00", align 1
@ibmhmc_state_opening = common dso_local global i32 0, align 4
@VMC_MSG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvmc_buffer*, %struct.ibmvmc_hmc*)* @ibmvmc_send_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_send_open(%struct.ibmvmc_buffer* %0, %struct.ibmvmc_hmc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvmc_buffer*, align 8
  %5 = alloca %struct.ibmvmc_hmc*, align 8
  %6 = alloca %struct.ibmvmc_crq_msg, align 8
  %7 = alloca %struct.crq_server_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ibmvmc_buffer* %0, %struct.ibmvmc_buffer** %4, align 8
  store %struct.ibmvmc_hmc* %1, %struct.ibmvmc_hmc** %5, align 8
  %10 = bitcast %struct.ibmvmc_crq_msg* %6 to i32*
  store i32* %10, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %12 = icmp ne %struct.ibmvmc_hmc* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %15 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %14, i32 0, i32 3
  %16 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %15, align 8
  %17 = icmp ne %struct.crq_server_adapter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %13
  %22 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %23 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %22, i32 0, i32 3
  %24 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %23, align 8
  store %struct.crq_server_adapter* %24, %struct.crq_server_adapter** %7, align 8
  %25 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33, i64 %36, i64 %39, i64 %42)
  %44 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %54 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @h_copy_rdma(i64 %46, i64 %49, i64 %52, i64 %55, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %21
  %63 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %64 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %21
  %71 = load i32, i32* @ibmhmc_state_opening, align 4
  %72 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %73 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 0
  store i32 128, i32* %74, align 8
  %75 = load i32, i32* @VMC_MSG_OPEN, align 4
  %76 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 8
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 7
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %81 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 5
  store i32 %82, i32* %83, align 8
  %84 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %5, align 8
  %85 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %4, align 8
  %89 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @cpu_to_be16(i32 %90)
  %92 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %6, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be64_to_cpu(i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be64_to_cpu(i32 %104)
  %106 = call i32 @ibmvmc_send_crq(%struct.crq_server_adapter* %97, i32 %101, i32 %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %70, %62, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @h_copy_rdma(i64, i64, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ibmvmc_send_crq(%struct.crq_server_adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
