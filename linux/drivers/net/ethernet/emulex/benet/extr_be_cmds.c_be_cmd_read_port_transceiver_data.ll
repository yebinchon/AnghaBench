; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_read_port_transceiver_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_read_port_transceiver_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_port_type* }
%struct.be_cmd_resp_port_type = type { i32, i8*, i8*, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_port_type = type { i32, i8*, i8*, i32 }

@TR_PAGE_A2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_TRANSRECV_DATA = common dso_local global i32 0, align 4
@PAGE_DATA_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.be_dma_mem, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_req_port_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_cmd_resp_port_type*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @TR_PAGE_A2, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  store i32 32, i32* %20, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.be_cmd_resp_port_type* @dma_alloc_coherent(i32* %24, i32 %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  store %struct.be_cmd_resp_port_type* %29, %struct.be_cmd_resp_port_type** %30, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %32 = load %struct.be_cmd_resp_port_type*, %struct.be_cmd_resp_port_type** %31, align 8
  %33 = icmp ne %struct.be_cmd_resp_port_type* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %19
  %35 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %105

42:                                               ; preds = %19
  %43 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %47 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %46)
  store %struct.be_mcc_wrb* %47, %struct.be_mcc_wrb** %9, align 8
  %48 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %49 = icmp ne %struct.be_mcc_wrb* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %89

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %55 = load %struct.be_cmd_resp_port_type*, %struct.be_cmd_resp_port_type** %54, align 8
  %56 = bitcast %struct.be_cmd_resp_port_type* %55 to %struct.be_cmd_req_port_type*
  store %struct.be_cmd_req_port_type* %56, %struct.be_cmd_req_port_type** %10, align 8
  %57 = load %struct.be_cmd_req_port_type*, %struct.be_cmd_req_port_type** %10, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_port_type, %struct.be_cmd_req_port_type* %57, i32 0, i32 3
  %59 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %60 = load i32, i32* @OPCODE_COMMON_READ_TRANSRECV_DATA, align 4
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %64 = call i32 @be_wrb_cmd_hdr_prepare(i32* %58, i32 %59, i32 %60, i32 %62, %struct.be_mcc_wrb* %63, %struct.be_dma_mem* %8)
  %65 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = load %struct.be_cmd_req_port_type*, %struct.be_cmd_req_port_type** %10, align 8
  %70 = getelementptr inbounds %struct.be_cmd_req_port_type, %struct.be_cmd_req_port_type* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @cpu_to_le32(i64 %71)
  %73 = load %struct.be_cmd_req_port_type*, %struct.be_cmd_req_port_type** %10, align 8
  %74 = getelementptr inbounds %struct.be_cmd_req_port_type, %struct.be_cmd_req_port_type* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %76 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %53
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %81 = load %struct.be_cmd_resp_port_type*, %struct.be_cmd_resp_port_type** %80, align 8
  store %struct.be_cmd_resp_port_type* %81, %struct.be_cmd_resp_port_type** %12, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = load %struct.be_cmd_resp_port_type*, %struct.be_cmd_resp_port_type** %12, align 8
  %84 = getelementptr inbounds %struct.be_cmd_resp_port_type, %struct.be_cmd_resp_port_type* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PAGE_DATA_LEN, align 4
  %87 = call i32 @memcpy(i64* %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %53
  br label %89

89:                                               ; preds = %88, %50
  %90 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %100 = load %struct.be_cmd_resp_port_type*, %struct.be_cmd_resp_port_type** %99, align 8
  %101 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dma_free_coherent(i32* %96, i32 %98, %struct.be_cmd_resp_port_type* %100, i32 %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %89, %34, %16
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.be_cmd_resp_port_type* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_port_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
