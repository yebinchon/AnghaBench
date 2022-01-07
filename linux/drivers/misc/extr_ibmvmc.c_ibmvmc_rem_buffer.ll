; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_rem_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_rem_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i64, i64 }
%struct.ibmvmc_buffer = type { i32, i32, i64, i32 }

@ibmvmc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"rem_buffer: invalid hmc_index = 0x%x\0A\00", align 1
@VMC_MSG_INVALID_HMC_INDEX = common dso_local global i32 0, align 4
@hmcs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"rem_buffer: no buffer to remove\0A\00", align 1
@VMC_MSG_NO_BUFFER = common dso_local global i32 0, align 4
@VMC_INVALID_BUFFER_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"rem_buffer: removed buffer 0x%x.\0A\00", align 1
@VMC_MSG_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*)* @ibmvmc_rem_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_rem_buffer(%struct.crq_server_adapter* %0, %struct.ibmvmc_crq_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca %struct.ibmvmc_crq_msg*, align 8
  %6 = alloca %struct.ibmvmc_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %4, align 8
  store %struct.ibmvmc_crq_msg* %1, %struct.ibmvmc_crq_msg** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %13 = icmp ne %struct.ibmvmc_crq_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %108

15:                                               ; preds = %2
  %16 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %17 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %20 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibmvmc, i32 0, i32 0), align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %32 = load i32, i32* @VMC_MSG_INVALID_HMC_INDEX, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ibmvmc_send_rem_buffer_resp(%struct.crq_server_adapter* %31, i32 %32, i64 %33, i64 %34, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %108

37:                                               ; preds = %15
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.ibmvmc_buffer* @ibmvmc_get_free_hmc_buffer(%struct.crq_server_adapter* %44, i64 %45)
  store %struct.ibmvmc_buffer* %46, %struct.ibmvmc_buffer** %6, align 8
  %47 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %48 = icmp ne %struct.ibmvmc_buffer* %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %37
  %50 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_info(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %61 = load i32, i32* @VMC_MSG_NO_BUFFER, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @VMC_INVALID_BUFFER_ID, align 4
  %65 = call i32 @ibmvmc_send_rem_buffer_resp(%struct.crq_server_adapter* %60, i32 %61, i64 %62, i64 %63, i32 %64)
  store i32 -1, i32* %3, align 4
  br label %108

66:                                               ; preds = %37
  %67 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @to_vio_dev(i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibmvmc, i32 0, i32 1), align 8
  %80 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %84 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @free_dma_buffer(i32 %78, i32 %79, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %74, %66
  %88 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %89 = call i32 @memset(%struct.ibmvmc_buffer* %88, i32 0, i32 24)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %102 = load i32, i32* @VMC_MSG_SUCCESS, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @ibmvmc_send_rem_buffer_resp(%struct.crq_server_adapter* %101, i32 %102, i64 %103, i64 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %87, %49, %25, %14
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @ibmvmc_send_rem_buffer_resp(%struct.crq_server_adapter*, i32, i64, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ibmvmc_buffer* @ibmvmc_get_free_hmc_buffer(%struct.crq_server_adapter*, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_dma_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @to_vio_dev(i32) #1

declare dso_local i32 @memset(%struct.ibmvmc_buffer*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
