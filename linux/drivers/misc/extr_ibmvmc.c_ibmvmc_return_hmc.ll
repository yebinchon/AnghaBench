; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_return_hmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_return_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ibmvmc_hmc = type { i32, i32*, %struct.ibmvmc_buffer*, i64, i64, i32, i64, %struct.crq_server_adapter*, %struct.ibmvmc_file_session* }
%struct.ibmvmc_buffer = type { i32, i32, i64 }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_file_session = type { i64 }
%struct.vio_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ibmvmc_read_wait = common dso_local global i32 0, align 4
@ibmhmc_state_free = common dso_local global i32 0, align 4
@ibmvmc_max_buf_pool_size = common dso_local global i64 0, align 8
@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Forgot buffer id 0x%lx\0A\00", align 1
@VMC_INVALID_BUFFER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvmc_hmc*, i32)* @ibmvmc_return_hmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_return_hmc(%struct.ibmvmc_hmc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvmc_hmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibmvmc_buffer*, align 8
  %7 = alloca %struct.crq_server_adapter*, align 8
  %8 = alloca %struct.vio_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ibmvmc_file_session*, align 8
  store %struct.ibmvmc_hmc* %0, %struct.ibmvmc_hmc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %13 = icmp ne %struct.ibmvmc_hmc* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %16 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %15, i32 0, i32 7
  %17 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %16, align 8
  %18 = icmp ne %struct.crq_server_adapter* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %111

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %27 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %26, i32 0, i32 8
  %28 = load %struct.ibmvmc_file_session*, %struct.ibmvmc_file_session** %27, align 8
  %29 = icmp ne %struct.ibmvmc_file_session* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %32 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %31, i32 0, i32 8
  %33 = load %struct.ibmvmc_file_session*, %struct.ibmvmc_file_session** %32, align 8
  store %struct.ibmvmc_file_session* %33, %struct.ibmvmc_file_session** %11, align 8
  %34 = load %struct.ibmvmc_file_session*, %struct.ibmvmc_file_session** %11, align 8
  %35 = getelementptr inbounds %struct.ibmvmc_file_session, %struct.ibmvmc_file_session* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = call i32 @wake_up_interruptible(i32* @ibmvmc_read_wait)
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %39, i32 0, i32 7
  %41 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %40, align 8
  store %struct.crq_server_adapter* %41, %struct.crq_server_adapter** %7, align 8
  %42 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.vio_dev* @to_vio_dev(i32 %44)
  store %struct.vio_dev* %45, %struct.vio_dev** %8, align 8
  %46 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @ibmhmc_state_free, align 4
  %53 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %54 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %60 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %59, i32 0, i32 2
  %61 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %60, align 8
  store %struct.ibmvmc_buffer* %61, %struct.ibmvmc_buffer** %6, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %103, %38
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @ibmvmc_max_buf_pool_size, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %67, i64 %68
  %70 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %66
  %74 = load %struct.vio_dev*, %struct.vio_dev** %8, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 4
  %76 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %76, i64 %77
  %79 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %81, i64 %82
  %84 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @free_dma_buffer(%struct.vio_dev* %74, i32 %75, i32 %80, i32 %85)
  %87 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %73, %66
  %93 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %93, i64 %94
  %96 = call i32 @memset(%struct.ibmvmc_buffer* %95, i32 0, i32 16)
  %97 = load i32, i32* @VMC_INVALID_BUFFER_ID, align 4
  %98 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %99 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %62

106:                                              ; preds = %62
  %107 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %4, align 8
  %108 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %107, i32 0, i32 0
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %19
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_dma_buffer(%struct.vio_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.ibmvmc_buffer*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
